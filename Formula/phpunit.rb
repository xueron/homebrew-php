require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Phpunit < AbstractPhpPhar
  init
  desc "Programmer-oriented testing framework for PHP"
  homepage "https://phpunit.de"
  url "https://phar.phpunit.de/phpunit-6.0.13.phar"
  sha256 "37ee34075f5fa78f27d94d546be35d1078b07137325d29cdd786db5261749460"

  bottle do
    cellar :any_skip_relocation
    sha256 "57a452b460a6f5fe0ec4d3a2edb630bdde90780e1c0f812fab73072cd036652e" => :sierra
    sha256 "57a452b460a6f5fe0ec4d3a2edb630bdde90780e1c0f812fab73072cd036652e" => :el_capitan
    sha256 "57a452b460a6f5fe0ec4d3a2edb630bdde90780e1c0f812fab73072cd036652e" => :yosemite
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("#{bin}/phpunit --version").include?(version)
  end
end
