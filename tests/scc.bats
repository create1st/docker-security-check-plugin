#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

COMMAND="$PWD/scripts/scc.sh"
# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Security compliance check" {
  export BUILDKITE_PLUGIN_FILE_COUNTER_PATTERN="*.bats"

  stub buildkite-agent

  run "$COMMAND"

  assert_success
  assert_output --partial "Security compliance check completed"

  unstub buildkite-agent
}