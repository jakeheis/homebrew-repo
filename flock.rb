class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "455302da53827cfac2b0cfd94ce09d77a5e5fad40a3cc638e0662ca3beac3565"

  def install
    system "swift build -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
