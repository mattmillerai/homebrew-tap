class Kneejerk < Formula
  desc "Scan JS bundles for env vars, API endpoints, and referenced hostnames"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.3.tar.gz"
  version "0.3"
  sha256 "3fe14d526aba31d50ce9988bf54cea0c5830e097761d775dc314334aeb5a19e7"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
