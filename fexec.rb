class Fexec < Formula
  desc "CLI to connect ECS fargate type container with execute command."
  homepage ""
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gajirou/fexec/releases/download/v0.1.0/fexec_darwin_arm64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

      def install
        bin.install "fexec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gajirou/fexec/releases/download/v0.1.0/fexec_darwin_amd64.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

      def install
        bin.install "fexec"
      end
    end
  end

  depends_on "go"
end
