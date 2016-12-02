class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "bfb475547483fdee03b4907b21b5a753b69309e428ed5df9e4e64f93ac9dedc4"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
