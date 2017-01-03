class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "3f2da59ba2f66309ddba03cf51eea09b4fbac424084235fd530681bb05c2e6d0"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
