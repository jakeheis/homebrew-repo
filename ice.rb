class Ice < Formula
  desc "A developer friendly package manager for Swift; 100% compatible with Swift Package Manager"
  homepage ""
  url "https://github.com/jakeheis/Ice/archive/0.4.0.tar.gz"
  version "0.4.0"
  sha256 "99dc7c50dafabeaa08151e46339f66bb6d57c880217279c5c478ca039bf5f98b"

  def install
    system "unset CC; swift build --disable-sandbox -c release"
    system "mv .build/release/ice ice"
    bin.install "ice"
  end
end
