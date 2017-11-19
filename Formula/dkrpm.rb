class Dkrpm < Formula
  desc 'Build RPM packages using Docker containers'
  homepage 'https://github.com/gongled/dkrpm'
  url 'https://github.com/gongled/dkrpm/archive/v1.4.0.tar.gz'
  version '1.4.0'
  head 'https://github.com/gongled/dkrpm'

  depends_on 'docker' => [:build, :run]

  def build
    system 'make', 'all'
  end

  def install
    bin.install 'dkrpm'
  end
end

