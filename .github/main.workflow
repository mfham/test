workflow "IDENTIFIER" {
  on = "EVENT"
  resolves = "ACTION2"
}

action "ACTION1" {
  uses = "docker://image1"
}
