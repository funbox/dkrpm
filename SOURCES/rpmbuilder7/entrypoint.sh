#!/usr/bin/env bash

set -e

RPMB_NAME="${1}"
shift

if [[ ! $LOCAL_USER_ID -eq 0 ]] ; then
    USER_ID=${LOCAL_USER_ID:-9001}
else
    USER_ID=9001
fi

useradd -s /bin/bash -u $USER_ID -m -d /home/rpmbuilder -m rpmbuilder 2>/dev/null
cp -r /etc/skel/. /home/rpmbuilder/

echo "rpmbuilder ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/rpmbuilder

cat<<EOF >/home/rpmbuilder/.rpmmacros
%_topdir             %(echo \$HOME)/rpmbuild

# Use all available cores on build node
%_smp_mflags         -j%(cat /proc/cpuinfo | grep processor | wc -l)

# Disable debug packages
%debug_package       %{nil}

# Added check-buildroot for post install actions
%__arch_install_post /usr/lib/rpm/check-rpaths /usr/lib/rpm/check-buildroot

# Fix broken provides search on CentOS 7
%_use_internal_dependency_generator 0

%dist            .el7

# Use xz compression for payload by default
%_source_payload w7.xzdio
%_binary_payload w7.xzdio
EOF

# Fix for docker/docker issue about /proc/self/fd/{0,1,2}
# URL: https://github.com/docker/docker/issues/11462
chmod 777 /dev/stdout

mkdir -p /home/rpmbuilder/rpmbuild/BUILD \
         /home/rpmbuilder/rpmbuild/BUILDROOT \
         /home/rpmbuilder/rpmbuild/RPMS \
         /home/rpmbuilder/rpmbuild/SOURCES \
         /home/rpmbuilder/rpmbuild/SPECS \
         /home/rpmbuilder/rpmbuild/SRPMS
chown -R rpmbuilder:rpmbuilder /home/rpmbuilder /rpmbuilder

exec /usr/local/bin/gosu rpmbuilder "$RPMB_NAME" "$@"
