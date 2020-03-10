class Releasenotes < Formula
  desc "An automated script that compiles a list of release notes taken from pull requests and linking them with an issue tracker."
  homepage "https://github.com/micbakos/ReleaseNotes"
  url "https://github.com/micbakos/ReleaseNotes/archive/v1.0.0.tar.gz"
  sha256 "b2b7e7d6f85f4d8956a47848e548f3f5ffb7fd7d89eefacf012c1aca57666c83"

  depends_on "kscript"

  def install
    bin.install "releasenotes"
  end

end

