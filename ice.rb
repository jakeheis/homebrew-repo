class Ice < Formula
  desc "A developer friendly package manager for Swift; 100% compatible with Swift Package Manager"
  homepage ""
  url "https://github.com/jakeheis/Ice/archive/0.3.1.tar.gz"
  version "0.3.1"
  sha256 "95b3cce64b160f3785dcaf6d37d685821eb5a453b4e33da2945d6e30340157ba"

  def install
    system "unset CC; swift build --disable-sandbox -c release"
    system "mv .build/release/ice ice"
    bin.install "ice"
  end
end
