class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.2.1.tar.gz"
  version "0.2.1"
  sha256 "a93f25796c2896cd7207310c99752bc25df99870bcac201c2d082880d26d3a8c"

  def install
    system "unset CC; swift build --disable-sandbox -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
