terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

data "github_release" "hello" {
  owner       = "lmhd-davnet"
  repository  = "go-lambda-helloworld"
  retrieve_by = "latest"
}

locals {
  zip_assets = [
    for asset in data.github_release.hello.assets : asset
    if asset.content_type == "application/zip"
  ]
}

output "release" {
  value = local.zip_assets
}


// Output
/*
Changes to Outputs:
  + release = [
      + {
          + browser_download_url = "https://github.com/lmhd-davnet/go-lambda-helloworld/releases/download/v0.1.1/go-lambda-helloworld_0.1.1_linux_arm64.zip"
          + content_type         = "application/zip"
          + created_at           = "2024-05-18 20:39:50 +0000 UTC"
          + id                   = 168726560
          + label                = ""
          + name                 = "go-lambda-helloworld_0.1.1_linux_arm64.zip"
          + node_id              = "RA_kwDOL9cHy84KDpAg"
          + size                 = 2659850
          + updated_at           = "2024-05-18 20:39:50 +0000 UTC"
          + url                  = "https://api.github.com/repos/lmhd-davnet/go-lambda-helloworld/releases/assets/168726560"
        },
    ]
*/
