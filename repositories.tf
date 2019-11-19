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

resource "github_team_repository" "tf-github-contributors" {
  team_id    = github_team.contributors.id
  repository = github_repository.tf-github.name
  permission = "push"
}

resource "github_repository" "sandbox" {
  name               = "sandbox"
  description        = "Sandbox repository for experiments"
  private            = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init          = true
  gitignore_template = "Python"
  license_template   = "mit"
}

resource "github_team_repository" "sandbox-contributors" {
  team_id    = github_team.contributors.id
  repository = github_repository.sandbox.name
  permission = "push"
}

resource "github_repository" "site" {
  name               = "site"
  description        = "Code for hackinghockey.com"
  private            = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init          = true
  gitignore_template = "Go"
  license_template   = "mit"
}

resource "github_team_repository" "site-contributors" {
  team_id    = github_team.contributors.id
  repository = github_repository.site.name
  permission = "push"
}