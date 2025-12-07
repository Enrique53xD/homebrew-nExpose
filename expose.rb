class Nexpose < Formula
  desc "Instant, secure tunnels for files and websites (Ngrok alternative)"
  # Point the homepage to your code repository
  homepage "https://github.com/Enrique53xD/nExpose"
  # Point the source code to the release of your nExpose code
  url "https://github.com/Enrique53xD/nExpose/archive/refs/tags/v1.1.0.tar.gz"
  # NOTE: REPLACE THE SHA256 BELOW
  sha256 "REPLACE_THIS_WITH_THE_v1.1.0_SHA256_HASH" 
  license "MIT"

  # Dependencies needed for nExpose to run
  depends_on "cloudflared"
  depends_on "miniserve"

  def install
    # Copies expose.sh from the downloaded source and installs it as 'expose'
    bin.install "expose.sh" => "expose"
  end

  test do
    # Simple test to verify the script is executable
    system "#{bin}/expose", "config"
  end
end
