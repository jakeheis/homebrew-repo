class Ice < Formula
  desc "A developer friendly package manager for Swift; 100% compatible with Swift Package Manager"
  homepage ""
  url "https://github.com/jakeheis/Ice/archive/0.5.0.tar.gz"
  version "0.5.0"
  sha256 "fa413d52edbff725218e3ec9b941f57ba54d0d0453be3d54442a5f8db08f5b71"

  def install
    system "unset CC; swift build --disable-sandbox -c release"
    system "mv .build/release/ice ice"
    bin.install "ice"
  end
end
