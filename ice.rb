class Ice < Formula
  desc "A developer friendly package manager for Swift; 100% compatible with Swift Package Manager"
  homepage ""
  url "https://github.com/jakeheis/Ice/archive/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "ccf7c55818cb8e43d18bae907a4c0c5c7df3e07aa5e5dda8744c696417f301dc"

  def install
    system "unset CC; swift build --disable-sandbox -c release"
    system "mv .build/release/ice ice"
    bin.install "ice"
  end
end
