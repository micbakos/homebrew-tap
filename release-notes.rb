class ReleaseNotes < Formula
  desc "An automated script that compiles a list of release notes taken from pull requests and linking them with an issue tracker."
  homepage "https://github.com/micbakos/ReleaseNotes"
  url "https://github.com/micbakos/ReleaseNotes/archive/v1.1.0.tar.gz"
  sha256 "318803520f541701613314b83ba416c5d1bbcb78f0fed527643c01e0ec96b496"

  depends_on "gradle"

  def install
    system "gradle install"
    lib.install Dir["build/install/notes/lib/*"]
    bin.install "build/install/notes/bin/notes"
  end

end

