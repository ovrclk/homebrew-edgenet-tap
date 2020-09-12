# This file was generated by GoReleaser. DO NOT EDIT.
class Akash < Formula
  desc "Blockchain-powered decentralized compute platform"
  homepage "https://akash.network"
  version "0.8.1-rc4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ovrclk/akash/releases/download/v0.8.1-rc4/akash_0.8.1-rc4_darwin_amd64.zip"
    sha256 "f6831b4ebfdf6e9d4adcf3540f040825f0fd13b674978842437756f3fffe1b0f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ovrclk/akash/releases/download/v0.8.1-rc4/akash_0.8.1-rc4_linux_amd64.zip"
      sha256 "851651474aadf8ba16848ae899493410a477f99c3a402db5762c27250bf74bff"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ovrclk/akash/releases/download/v0.8.1-rc4/akash_0.8.1-rc4_linux_arm64.zip"
        sha256 "d2e4025a4a6ad0459260d7948fc3b55851ccfbd28b36f376a9a8acca5b42fc54"
      else
      end
    end
  end

  def install
    bin.install "akashctl"
    bin.install "akashd"
  end
end
