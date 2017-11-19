class Dkrpm < Formula
  desc 'Build RPM packages using Docker containers'
  homepage 'https://github.com/gongled/dkrpm'
  url 'https://github.com/gongled/dkrpm/archive/v1.3.1.tar.gz'
  version '1.3.1'
  head 'https://github.com/gongled/dkrpm'

  depends_on 'docker' => [:build, :run]

  def build
    system 'make', 'all'
  end

  def install
    bin.install 'dkrpm'
  end
end

