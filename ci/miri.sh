#!/bin/bash
set -euxo pipefail
IFS=$'\n\t'
cd "$(dirname "$0")"/..

group=$1

# We need 'ts' for the per-line timing
sudo apt-get -y install moreutils
echo

export RUSTFLAGS="${RUSTFLAGS:-} -Z randomize-layout"
export RUSTDOCFLAGS="${RUSTDOCFLAGS:-} -Z randomize-layout"
export MIRIFLAGS="${MIRIFLAGS:-} -Zmiri-strict-provenance -Zmiri-symbolic-alignment-check -Zmiri-disable-isolation"

case "${group}" in
    others)
        # Use Tree Borrows instead of Stacked Borrows because epoch is not compatible with Stacked Borrows: https://github.com/crossbeam-rs/crossbeam/issues/545#issuecomment-1192785003
        MIRIFLAGS="${MIRIFLAGS} -Zmiri-tree-borrows" \
            cargo miri test --all-features crossbeam-skiplist-fd 2>&1 | ts -i '%.s  '
        ;;
    *)
        echo "unknown crate group '${group}'"
        exit 1
        ;;
esac
