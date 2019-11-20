# This file was generated by GoReleaser. DO NOT EDIT.
class Akash < Formula
  desc "Blockchain-powered decentralized compute platform"
  homepage "https://akash.network"
  version "0.5.4-rc1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ovrclk/akash/releases/download/v0.5.4-rc1/akash_0.5.4-rc1_darwin_amd64.zip"
    sha256 "9c20f7b03d91b39ad888fb2c658224f5edbd52f19be486a03adfe8bc128774fc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ovrclk/akash/releases/download/v0.5.4-rc1/akash_0.5.4-rc1_linux_amd64.zip"
      sha256 "5bcd12a960fac658c5a7a71affa0364be68a96c6d0b36cbf72057c87308319c7"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ovrclk/akash/releases/download/v0.5.4-rc1/akash_0.5.4-rc1_linux_arm64.zip"
        sha256 "a544d619d1d8b0a01248894f929231da0f375b6a679ae668d89f883935c06d69"
      else
      end
    end
  end

  def install
    bin.install "akash"
    bin.install "akashd"
  end
end
