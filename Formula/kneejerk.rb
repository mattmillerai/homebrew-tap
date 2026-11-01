class Kneejerk < Formula
  desc "Scan JS bundles for env vars, API endpoints, and referenced hostnames"
  homepage "https://github.com/mattmillerai/kneejerk"
  url "https://github.com/mattmillerai/kneejerk/archive/refs/tags/v0.3.4.tar.gz"
  version "0.3.4"
  sha256 "32184d57d2c9b1044c9a7cbbc40c8b8541289aaf4fefd80e788307dc57dd4182"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
