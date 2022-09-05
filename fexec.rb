class Fexec < Formula
  desc "CLI to connect ECS fargate type container with execute command."
  homepage ""
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gajirou/fexec/releases/download/v0.1.0/fexec_darwin_arm64.tar.gz"
      sha256 "98fbf63d6eee32f1c17df0a376c714dc91d45e01a81fb37a4390e7a42f193c9c"

      def install
        bin.install "fexec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gajirou/fexec/releases/download/v0.1.0/fexec_darwin_amd64.tar.gz"
      sha256 "a1408506c224df3cda471ba2d9142349873f59e471486287a8986582ea95185a"

      def install
        bin.install "fexec"
      end
    end
  end

  depends_on "go"
end
