class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.2.0.tar.gz"
  version "0.2.0"
  sha256 "fb3f0a59ca3abe17063aefb3f14e8f979b46b480948e18369d59c9063b0bccee"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
