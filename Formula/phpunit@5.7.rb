require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class PhpunitAT57 < AbstractPhpPhar
  init
  desc "(Old stable) Programmer-oriented testing framework for PHP"
  homepage "https://phpunit.de"
  url "https://phar.phpunit.de/phpunit-5.7.17.phar"
  sha256 "2d8ceed912469b359758249b584ed9b14382be0809d30f5bb96d4949e6e850b3"

  bottle do
    cellar :any_skip_relocation
    sha256 "b373b19c43fe4bec64ad53f7c0777f57f4b82e0256fb892f4aa361d730f20fef" => :sierra
    sha256 "b373b19c43fe4bec64ad53f7c0777f57f4b82e0256fb892f4aa361d730f20fef" => :el_capitan
    sha256 "b373b19c43fe4bec64ad53f7c0777f57f4b82e0256fb892f4aa361d730f20fef" => :yosemite
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("#{bin}/phpunitat57 --version").include?(version)
  end
end
