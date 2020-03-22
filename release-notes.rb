class ReleaseNotes < Formula
  desc "An automated script that compiles a list of release notes taken from pull requests and linking them with an issue tracker."
  homepage "https://github.com/micbakos/ReleaseNotes"
  url "https://github.com/micbakos/ReleaseNotes/archive/v1.1.1.tar.gz"
  sha256 "84b5c7fce06139d899e87dc43bb78315b6e0999785a2643aee79a8dcaaad2cd6"

  depends_on "gradle"

  def install
    system "gradle install"
    lib.install Dir["build/install/notes/lib/*"]
    bin.install "build/install/notes/bin/notes"
  end

end

