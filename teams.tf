resource "github_team" "contributors" {
  name = "contributors"
}

resource "github_team_membership" "some_team_membership" {
  team_id  = github_team.contributors.id
  username = "zythosec"
  role     = "maintainer"
}