resource "github_repository" "tf-github" {
  name               = "tf-github"
  description        = "Terraform to manage hackinghockey GitHub Organization"
  private            = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "mit"
}
