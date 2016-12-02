class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "0710e9c2fe03dc88ef3170db14fce98ba14c6162b98bf432b9d64f6e7fa4681e"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
