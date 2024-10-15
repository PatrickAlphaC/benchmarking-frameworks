# List of directories to test
directories := "foundry-test moccasin-test hardhat-test ape-test brownie-test snekmate-foundry-test snekmate-moccasin-test"

# Default recipe to run all tests
default:
    @just run-all-tests

# Run tests in all directories
run-all-tests:
    @for dir in {{directories}}; do \
        echo "Testing in $dir:"; \
        just $dir; \
        echo ""; \
    done

foundry-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing forge:"
    cd foundry-test

    # Define the time_command function within the recipe
    time_command() {
        { time bash -c "$@"; } 2>&1 | grep real | awk '{print $2}'
    }

    time_command "forge help"
    time_command "forge build"
    time_command "forge test"
    time_command "forge script script/Counter.s.sol"

moccasin-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing mox:"
    cd moccasin-test

    # Define the time_command function within the recipe
    time_command() {
        { time bash -c "$@"; } 2>&1 | grep real | awk '{print $2}'
    }

    time_command "mox --help"
    time_command "mox compile"
    time_command "mox test"
    time_command "mox run deploy"

hardhat-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing hardhat:"

    time_command() {
        { time eval "$1"; } 2>&1 | grep real | awk '{print $2}'
    }


    cd hardhat-test
    time_command "yarn hardhat --help"
    time_command "yarn hardhat compile"
    time_command "yarn hardhat test"
    time_command "yarn hardhat ignition deploy ignition/modules/Counter.js"

ape-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing ape:"
    cd ape-test

    # Define the time_command function within the recipe
    time_command() {
        { time bash -c "$@"; } 2>&1 | grep real | awk '{print $2}'
    }

    time_command "ape --help"
    time_command "ape compile"
    time_command "ape run deploy --network ethereum:local:test"

brownie-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing brownie:"
    cd brownie-test

    # Define the time_command function within the recipe
    time_command() {
        { time bash -c "$@"; } 2>&1 | grep real | awk '{print $2}'
    }

    time_command "brownie --help"
    time_command "brownie compile"
    time_command "brownie test"
    time_command "brownie run deploy"

snekmate-foundry-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing foundry with snekmate:"
    cd snekmate-foundry-test
    foundryup
    rm -rf cache
    rm -rf out

    # Define the time_command function within the recipe
    time_command() {
        { time bash -c "$@"; } 2>&1 | grep real | awk '{print $2}'
    }
    time_command "forge build"

snekmate-moccasin-test:
    #!/usr/bin/env bash
    set -e
    echo "Testing moccasin with snekmate:"
    cd snekmate-moccasin-test
    uv tool uninstall moccasin
    uv tool install moccasin

    # Define the time_command function within the recipe
    time_command() {
        { time bash -c "$@"; } 2>&1 | grep real | awk '{print $2}'
    }
    time_command "mox build"
