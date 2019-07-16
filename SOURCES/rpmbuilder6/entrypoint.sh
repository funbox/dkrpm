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
