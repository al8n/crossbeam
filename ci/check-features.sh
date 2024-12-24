#!/bin/bash
set -euxo pipefail
IFS=$'\n\t'
cd "$(dirname "$0")"/..

# * `--feature-powerset` - run for the feature powerset which includes --no-default-features and default features of package
# * `--no-dev-deps` - build without dev-dependencies to avoid https://github.com/rust-lang/cargo/issues/4866
# * `--exclude benchmarks` - benchmarks doesn't published.
if [[ "${RUST_VERSION}" == "msrv" ]]; then
    cargo hack build --all --feature-powerset --no-dev-deps --exclude benchmarks --rust-version
else
    cargo hack build --all --feature-powerset --no-dev-deps --exclude benchmarks
fi

