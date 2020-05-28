class ReleaseNotes < Formula
  desc "An automated script that compiles a list of release notes taken from pull requests and linking them with an issue tracker."
  homepage "https://github.com/micbakos/ReleaseNotes"
  url "https://github.com/micbakos/ReleaseNotes/archive/v1.2.0.tar.gz"
  sha256 "29d3cfcf22642ba4594e47fb9fab201a8d9bed1350626e17b1c2f3aad5984a3d"

  depends_on "gradle"

  def install
    system "gradle install"
    lib.install Dir["build/install/notes/lib/*"]
    bin.install "build/install/notes/bin/notes"
  end

end

