workflow "Run tests" {
  on = "push"
  resolves = ["Jest Test Suite", "Commit Changes"]
}

action "Compile Bundles" {
  uses = "./.github/compile_bundles"
  env = {
    NO_BRANCH_DELETED_EXIT_CODE = "0"
  }
}

action "Jest Test Suite" {
  uses = "./.github/jest"
  needs = ["Compile Bundles"]
}

action "Commit Changes" {
  uses = "./.github/commit_changes"
  needs = ["Compile Bundles"]
  args = "Compiled javascript bundles auto-commit"
  secrets = ["GITHUB_TOKEN"]
}
