class ReleaseNotes < Formula
  desc "An automated script that compiles a list of release notes taken from pull requests and linking them with an issue tracker."
  homepage "https://github.com/micbakos/ReleaseNotes"
  url "https://github.com/micbakos/ReleaseNotes/archive/v1.1.0-beta4.tar.gz"
  sha256 "fd931b646c483ddf6d626e709deca264381552871c4456f6d357d833acc79600"

  depends_on "gradle"

  def install
    system "gradle install"
    lib.install Dir["build/install/notes/lib/*"]
    bin.install "build/install/notes/bin/notes"
  end

end

