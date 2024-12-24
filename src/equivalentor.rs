// These traits are based on `equivalent` crate, but `K` and `Q` are flipped to avoid type inference issues:
// https://github.com/indexmap-rs/equivalent/issues/5

//! Traits for key comparison in maps.

pub use dbutils::{
    equivalent::*,
    equivalentor::{
        Ascend, Comparator, Descend, Equivalentor, QueryComparator, QueryEquivalentor,
        QueryRangeComparator, RangeComparator, Reverse,
    },
};
