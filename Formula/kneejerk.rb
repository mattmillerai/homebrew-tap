class Kneejerk < Formula
  desc "Scan JS bundles for env vars, API endpoints, and referenced hostnames"
  homepage "https://github.com/mattmillerai/kneejerk"
  url "https://github.com/mattmillerai/kneejerk/archive/refs/tags/v0.3.1.tar.gz"
  version "0.3.1"
  sha256 "3e8794b88f7a2f310ffe2a795a502b6dd38885e97570bfa1d7cd931f932d8940"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
