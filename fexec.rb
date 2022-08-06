class Fexec < Formula
  desc "CLI to connect ECS fargate type container with execute command."
  homepage ""
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gajirou/fexec/releases/download/v0.0.0/fexec_darwin_arm64.tar.gz"
      sha256 "57c65866e6dcbd13580845d04532eeb5fb40a0e59514090f9060b3dd9b583c94"

      def install
        bin.install "fexec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gajirou/fexec/releases/download/v0.0.0/fexec_darwin_amd64.tar.gz"
      sha256 "1c0777ade6b428cf18c06466f11e479354dd74464306892e8a1fbe5ee06533b9"

      def install
        bin.install "fexec"
      end
    end
  end

  depends_on "go"
end