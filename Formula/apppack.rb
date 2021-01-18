# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Apppack < Formula
  desc "CLI for AppPack.io"
  homepage "https://apppack.io"
  version "0.6.2"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/apppackio/apppack/releases/download/v0.6.2/apppack_0.6.2_Darwin_x86_64.tar.gz"
    sha256 "eb78415ef99588f1809aafb540baad1284b9dfa28e4dd31e58001aa10f04b8c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/apppackio/apppack/releases/download/v0.6.2/apppack_0.6.2_Linux_x86_64.tar.gz"
    sha256 "ffc1b2cb788ed411d4700743ad5162ee6692c1530b938c3aa8e7ced3bb24ed25"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/apppackio/apppack/releases/download/v0.6.2/apppack_0.6.2_Linux_arm64.tar.gz"
    sha256 "8068622382d4c1734bb52e60ba48d6eeb706f3a4e56390811840fabb476944c7"
  end

  def install
    bin.install "apppack"
  end

  test do
    system "#{bin}/apppack version"
  end
end
