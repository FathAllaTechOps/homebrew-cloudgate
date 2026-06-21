class AwsEksLogin < Formula
  desc "AWS SSO login and EKS IP whitelisting CLI tools"
  homepage "https://github.com/FathAllaTechOps/aws-eks-login"
  url "https://github.com/FathAllaTechOps/aws-eks-login/archive/v1.2.0.tar.gz"
  sha256 "2d94feab293ceb5778650f750b02aaf6cf54eeab41875cb294a80ed0452857e5"
  version "v1.2.0"

  def install
    bin.install "bin/aws-login.sh" => "aws-login"
    bin.install "bin/eks-allowip.sh" => "eks-allowip"
    bin.install "bin/cloudgate.sh" => "cloudgate"
  end

  test do
    system "#{bin}/aws-login", "--help"
    system "#{bin}/eks-allowip", "--help"
    system "#{bin}/cloudgate", "--help"
  end
end
