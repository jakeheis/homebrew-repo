class Flock < Formula
  desc ""
  homepage ""
  url "https://github.com/jakeheis/FlockCLI/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "0ec32506edecfe7c44a529a8d0c2eec47731ee9d944d5b3e092b4b0c11f3b647"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/FlockCLI flock"
    bin.install "flock"
  end
end
