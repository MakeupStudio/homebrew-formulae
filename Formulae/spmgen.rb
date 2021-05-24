# frozen_string_literal: true

class Spmgen < Formula
  desc "Resources boilerplate code generator for Swift"
  homepage "https://github.com/makeupstudio/spmgen"
  url "https://github.com/makeupstudio/spmgen.git", branch: "main"
  version "latest"

  depends_on xcode: ["12.5", :build]

  def install
    system `"swift" "build" "-c" "release" "--disable-sandbox" "--build-path" ".build"`
    bin.install ".build/release/spmgen"
  end

  test do
    echo "Done"
  end
end
