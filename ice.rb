class Ice < Formula
  desc "A developer friendly package manager for Swift; 100% compatible with Swift Package Manager"
  homepage ""
  url "https://github.com/jakeheis/Ice/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "1f1b10c6c24388214d79b78bb4276eb2af32c5b17c51caed16cec6d4773b2ea8"

  def install
    system "unset CC; swift build -c release"
    system "mv .build/release/ice ice"
    bin.install "ice"
  end
end
