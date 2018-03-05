class Ice < Formula
  desc "A developer friendly package manager for Swift; 100% compatible with Swift Package Manager"
  homepage ""
  url "https://github.com/jakeheis/Ice/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "390b31caae2f3668260e856ff036b2b0bceb8060e3aeacd1661cc736cf1058d2"

  def install
    system "unset CC; swift build --disable-sandbox -c release"
    system "mv .build/release/ice ice"
    bin.install "ice"
  end
end
