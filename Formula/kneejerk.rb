class Kneejerk < Formula
  desc "Scan JS bundles for env vars, API endpoints, and referenced hostnames"
  homepage "https://github.com/mattmillerai/kneejerk"
  url "https://github.com/mattmillerai/kneejerk/archive/refs/tags/v0.3.2.tar.gz"
  version "0.3.2"
  sha256 "005f58b550cb053f20c4c0bc14f930565ef55979229d68425bbb50a8d7c74d64"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
