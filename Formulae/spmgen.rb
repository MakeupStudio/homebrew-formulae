# frozen_string_literal: true

class Spmgen < Formula
  desc "Resources boilerplate code generator for Swift"
  homepage "https://github.com/makeupstudio/spmgen"
  url "https://github.com/makeupstudio/spmgen.git", branch: "main"
  version "latest"

  depends_on xcode: ["12.4", :build]

  def install
    system `"make", "install"`
  end

  test do
    system "#{bin}/spmgen", "--version"
  end
end
