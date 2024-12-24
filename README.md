# Crossbeam Skiplist For Databases

A long-term maintained forked version of the [`crossbeam-skiplist`](https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-skiplist) for supporting more flexible key comparison customization.

[![Build Status](https://github.com/al8n/crossbeam/workflows/CI/badge.svg)](
https://github.com/al8n/crossbeam/actions)
[![License](https://img.shields.io/badge/license-MIT_OR_Apache--2.0-blue.svg)](
https://github.com/al8n/crossbeam/tree/crossbeam-skiplist-fd/crossbeam-skiplist-fd#license)
[![Cargo](https://img.shields.io/crates/v/crossbeam-skiplist-fd.svg)](
https://crates.io/crates/crossbeam-skiplist-fd)
[![Documentation](https://docs.rs/crossbeam-skiplist-fd/badge.svg)](
https://docs.rs/crossbeam-skiplist-fd)
[![Rust 1.81+](https://img.shields.io/badge/rust-1.81+-lightgray.svg)](
https://www.rust-lang.org)

This crate provides the types [`SkipMap`] and [`SkipSet`].
These data structures provide an interface similar to `BTreeMap` and `BTreeSet`,
respectively, except they support safe concurrent access across multiple threads.

This crate can be used in `no_std` environments that implement `alloc`. The `alloc` feature of this crate needs to be enabled in `no_std` environments.

[`SkipMap`]: https://docs.rs/crossbeam-skiplist-fd/latest/crossbeam_skiplist_fd/struct.SkipMap.html
[`SkipSet`]: https://docs.rs/crossbeam-skiplist-fd/latest/crossbeam_skiplist_fd/struct.SkipSet.html

## Usage

Add this to your `Cargo.toml`:

```toml
[dependencies]
crossbeam-skiplist-fd = "0.1"
```

## Compatibility

Crossbeam Skiplist supports stable Rust releases going back at least six months,
and every time the minimum supported Rust version is increased, a new minor
version is released. Currently, the minimum supported Rust version is 1.81.

## License

Licensed under either of

 * Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

#### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
