class AgnosticAi < Formula
  desc "Sync agent prompts, skills, rules, and hooks across AI coding tools"
  homepage "https://github.com/Chemaclass/agnostic-ai"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Chemaclass/agnostic-ai/releases/download/v#{version}/agnostic-ai_darwin_arm64.tar.gz"
      sha256 "6dc684cd9ac1c4d6bc81a9f1ea376ce14afdc154ad5976ddb6a90a49ba435509"
    end
    on_intel do
      url "https://github.com/Chemaclass/agnostic-ai/releases/download/v#{version}/agnostic-ai_darwin_amd64.tar.gz"
      sha256 "1d6b5abca6d1504fd781e7de2ffecd4af06bb86ee8b9e3f8b3d020d0819cbe14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chemaclass/agnostic-ai/releases/download/v#{version}/agnostic-ai_linux_arm64.tar.gz"
      sha256 "51e8623e1e8e526746d861cd141698f083491bc540be14a9873c40f61ac95e18"
    end
    on_intel do
      url "https://github.com/Chemaclass/agnostic-ai/releases/download/v#{version}/agnostic-ai_linux_amd64.tar.gz"
      sha256 "f730e38c573f11c6e9efe2c5cf66a212283dee045549358df17d1aac91b2e1ef"
    end
  end

  def install
    bin.install "agnostic-ai"
  end

  test do
    assert_match "agnostic-ai", shell_output("#{bin}/agnostic-ai --help")
  end
end
