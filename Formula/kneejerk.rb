class Kneejerk < Formula
  desc "Scan JS bundles for env vars, API endpoints, and referenced hostnames"
  homepage "https://github.com/mattmillerai/kneejerk"
  url "https://github.com/mattmillerai/kneejerk/archive/refs/tags/v0.3.3.tar.gz"
  version "0.3.3"
  sha256 "18437380ab30bc577d88334cabaad76150f773589fbb8cdb89dff00233292881"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
