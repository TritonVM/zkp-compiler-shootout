# Benchmarks

## Table of Contents

- [Benchmark Results](#benchmark-results)
    - [Sudoku: compile](#sudoku:-compile)
    - [Sudoku: prove](#sudoku:-prove)
    - [Sudoku: verify](#sudoku:-verify)
    - [Sudoku:](#sudoku:)
    - [fibonacci: compile](#fibonacci:-compile)
    - [fibonacci: prove](#fibonacci:-prove)
    - [fibonacci: verify](#fibonacci:-verify)
    - [fibonacci:](#fibonacci:)
    - [fibonacci large: compile](#fibonacci-large:-compile)
    - [fibonacci large: prove](#fibonacci-large:-prove)
    - [fibonacci large: verify](#fibonacci-large:-verify)
    - [fibonacci large:](#fibonacci-large:)
    - [Blake: compile](#blake:-compile)
    - [Blake: prove](#blake:-prove)
    - [Blake: verify](#blake:-verify)
    - [Blake:](#blake:)
    - [Blake3: compile](#blake3:-compile)
    - [Blake3: prove](#blake3:-prove)
    - [Blake3: verify](#blake3:-verify)
    - [Blake3:](#blake3:)

## Benchmark Results

### Sudoku: compile

|        | `Triton`                  | `Miden`                        | `Plonk: 3 by 3`                   | `Risc`                         | `Halo: 3 by 3`                       |
|:-------|:--------------------------|:-------------------------------|:----------------------------------|:-------------------------------|:------------------------------------ |
|        | `213.56 us` (✅ **1.00x**) | `1.38 ms` (❌ *6.46x slower*)   | `95.98 ms` (❌ *449.44x slower*)   | `1.06 ms` (❌ *4.98x slower*)   | `326.96 ms` (❌ *1530.99x slower*)    |

### Sudoku: prove

|        | `Triton`                | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                     |
|:-------|:------------------------|:----------------------------------|:----------------------------------|:------------------------------|:---------------------------------- |
|        | `10.57 s` (✅ **1.00x**) | `346.02 ms` (🚀 **30.56x faster**) | `94.97 ms` (🚀 **111.33x faster**) | `8.36 s` (✅ **1.26x faster**) | `115.79 ms` (🚀 **91.32x faster**)  |

### Sudoku: verify

|        | `Triton`                 | `Miden`                         | `Plonk: 3 by 3`                 | `Risc`                          | `Halo: 3 by 3`                   |
|:-------|:-------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `79.54 ms` (✅ **1.00x**) | `2.39 ms` (🚀 **33.32x faster**) | `7.22 ms` (🚀 **11.01x faster**) | `5.53 ms` (🚀 **14.38x faster**) | `4.37 ms` (🚀 **18.19x faster**)  |

### Sudoku:

|        | `Triton`               | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                     |
|:-------|:-----------------------|:----------------------------------|:----------------------------------|:------------------------------|:---------------------------------- |
|        | `9.24 s` (✅ **1.00x**) | `350.18 ms` (🚀 **26.39x faster**) | `198.12 ms` (🚀 **46.64x faster**) | `8.37 s` (✅ **1.10x faster**) | `449.04 ms` (🚀 **20.58x faster**)  |

### fibonacci: compile

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                  | `Risc0: iter-50`                  | `Risc0: fixed-50`                 | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:----------------------------------|:----------------------------------|:----------------------------------|:-------------------------------- |
|        | `20.56 us` (✅ **1.00x**)        | `20.71 us` (✅ **1.01x slower**) | `66.82 us` (❌ *3.25x slower*)   | `57.19 us` (❌ *2.78x slower*)   | `46.25 us` (❌ *2.25x slower*)   | `971.37 us` (❌ *47.25x slower*)   | `948.69 us` (❌ *46.15x slower*)   | `990.81 us` (❌ *48.20x slower*)   | `1.01 ms` (❌ *48.91x slower*)    |

### fibonacci: prove

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.10 s` (✅ **1.00x**)          | `2.07 s` (❌ *1.88x slower*)     | `346.90 ms` (🚀 **3.16x faster**) | `167.56 ms` (🚀 **6.55x faster**) | `169.10 ms` (🚀 **6.49x faster**) | `4.64 s` (❌ *4.23x slower*)   | `4.65 s` (❌ *4.23x slower*)   | `4.65 s` (❌ *4.23x slower*)   | `4.66 s` (❌ *4.24x slower*)    |

### fibonacci: verify

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `50.56 ms` (✅ **1.00x**)        | `57.73 ms` (❌ *1.14x slower*)   | `2.39 ms` (🚀 **21.14x faster**) | `2.33 ms` (🚀 **21.70x faster**) | `2.34 ms` (🚀 **21.64x faster**) | `4.69 ms` (🚀 **10.77x faster**) | `4.69 ms` (🚀 **10.77x faster**) | `4.70 ms` (🚀 **10.76x faster**) | `4.70 ms` (🚀 **10.76x faster**)  |

### fibonacci:

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.09 s` (✅ **1.00x**)          | `2.10 s` (❌ *1.93x slower*)     | `349.62 ms` (🚀 **3.12x faster**) | `170.33 ms` (🚀 **6.40x faster**) | `171.75 ms` (🚀 **6.34x faster**) | `4.65 s` (❌ *4.27x slower*)   | `4.65 s` (❌ *4.27x slower*)   | `4.65 s` (❌ *4.27x slower*)   | `4.65 s` (❌ *4.27x slower*)    |

### fibonacci large: compile

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`                 |
|:-------|:----------------------------------|:--------------------------------|:---------------------------------- |
|        | `20.53 us` (✅ **1.00x**)          | `66.81 us` (❌ *3.25x slower*)   | `967.73 us` (❌ *47.13x slower*)    |

### fibonacci large: prove

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `35.08 s` (✅ **1.00x**)           | `3.07 s` (🚀 **11.42x faster**) | `8.32 s` (🚀 **4.22x faster**)  |

### fibonacci large: verify

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `103.05 ms` (✅ **1.00x**)         | `2.64 ms` (🚀 **39.01x faster**) | `5.54 ms` (🚀 **18.60x faster**)  |

### fibonacci large:

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `35.82 s` (✅ **1.00x**)           | `3.08 s` (🚀 **11.63x faster**) | `8.33 s` (🚀 **4.30x faster**)  |

### Blake: compile

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `1.61 ms` (✅ **1.00x**)                                                |

### Blake: prove

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `15.92 s` (✅ **1.00x**)                                                |

### Blake: verify

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `4.72 ms` (✅ **1.00x**)                                                |

### Blake:

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `15.92 s` (✅ **1.00x**)                                                |

### Blake3: compile

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `6.66 ms` (✅ **1.00x**)                    |

### Blake3: prove

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.48 s` (✅ **1.00x**)                     |

### Blake3: verify

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `2.54 ms` (✅ **1.00x**)                    |

### Blake3:

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.49 s` (✅ **1.00x**)                     |

---
Made with [criterion-table](https://github.com/nu11ptr/criterion-table)

