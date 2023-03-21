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
|        | `201.90 us` (✅ **1.00x**) | `1.37 ms` (❌ *6.81x slower*)   | `96.27 ms` (❌ *476.80x slower*)   | `1.05 ms` (❌ *5.22x slower*)   | `325.14 ms` (❌ *1610.38x slower*)    |

### Sudoku: prove

|        | `Triton`                | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                      |
|:-------|:------------------------|:----------------------------------|:----------------------------------|:------------------------------|:----------------------------------- |
|        | `12.79 s` (✅ **1.00x**) | `341.40 ms` (🚀 **37.47x faster**) | `95.35 ms` (🚀 **134.18x faster**) | `8.36 s` (✅ **1.53x faster**) | `116.04 ms` (🚀 **110.26x faster**)  |

### Sudoku: verify

|        | `Triton`                  | `Miden`                         | `Plonk: 3 by 3`                 | `Risc`                          | `Halo: 3 by 3`                   |
|:-------|:--------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `117.74 ms` (✅ **1.00x**) | `2.38 ms` (🚀 **49.53x faster**) | `7.25 ms` (🚀 **16.24x faster**) | `5.55 ms` (🚀 **21.22x faster**) | `4.34 ms` (🚀 **27.11x faster**)  |

### Sudoku:

|        | `Triton`               | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                     |
|:-------|:-----------------------|:----------------------------------|:----------------------------------|:------------------------------|:---------------------------------- |
|        | `9.21 s` (✅ **1.00x**) | `345.52 ms` (🚀 **26.67x faster**) | `199.43 ms` (🚀 **46.21x faster**) | `8.37 s` (✅ **1.10x faster**) | `446.42 ms` (🚀 **20.64x faster**)  |

### fibonacci: compile

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                  | `Risc0: iter-50`                  | `Risc0: fixed-50`                 | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:----------------------------------|:----------------------------------|:----------------------------------|:-------------------------------- |
|        | `19.82 us` (✅ **1.00x**)        | `19.84 us` (✅ **1.00x slower**) | `66.98 us` (❌ *3.38x slower*)   | `57.69 us` (❌ *2.91x slower*)   | `46.64 us` (❌ *2.35x slower*)   | `980.50 us` (❌ *49.47x slower*)   | `970.64 us` (❌ *48.97x slower*)   | `990.77 us` (❌ *49.99x slower*)   | `1.01 ms` (❌ *51.21x slower*)    |

### fibonacci: prove

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.19 s` (✅ **1.00x**)          | `2.35 s` (❌ *1.98x slower*)     | `342.41 ms` (🚀 **3.46x faster**) | `165.66 ms` (🚀 **7.16x faster**) | `167.05 ms` (🚀 **7.10x faster**) | `4.65 s` (❌ *3.92x slower*)   | `4.65 s` (❌ *3.92x slower*)   | `4.65 s` (❌ *3.92x slower*)   | `4.65 s` (❌ *3.92x slower*)    |

### fibonacci: verify

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `83.33 ms` (✅ **1.00x**)        | `97.47 ms` (❌ *1.17x slower*)   | `2.38 ms` (🚀 **35.01x faster**) | `2.32 ms` (🚀 **35.98x faster**) | `2.32 ms` (🚀 **35.86x faster**) | `4.69 ms` (🚀 **17.77x faster**) | `4.69 ms` (🚀 **17.76x faster**) | `4.69 ms` (🚀 **17.77x faster**) | `4.70 ms` (🚀 **17.74x faster**)  |

### fibonacci:

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.07 s` (✅ **1.00x**)          | `2.07 s` (❌ *1.94x slower*)     | `345.01 ms` (🚀 **3.09x faster**) | `168.35 ms` (🚀 **6.33x faster**) | `169.47 ms` (🚀 **6.29x faster**) | `4.65 s` (❌ *4.36x slower*)   | `4.65 s` (❌ *4.36x slower*)   | `4.65 s` (❌ *4.36x slower*)   | `4.65 s` (❌ *4.36x slower*)    |

### fibonacci large: compile

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`                 |
|:-------|:----------------------------------|:--------------------------------|:---------------------------------- |
|        | `19.87 us` (✅ **1.00x**)          | `67.17 us` (❌ *3.38x slower*)   | `971.11 us` (❌ *48.87x slower*)    |

### fibonacci large: prove

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`            | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:------------------------------|:------------------------------ |
|        | `30.01 s` (✅ **1.00x**)           | `3.05 s` (🚀 **9.83x faster**) | `8.32 s` (🚀 **3.61x faster**)  |

### fibonacci large: verify

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `138.70 ms` (✅ **1.00x**)         | `2.63 ms` (🚀 **52.74x faster**) | `5.54 ms` (🚀 **25.03x faster**)  |

### fibonacci large:

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `32.77 s` (✅ **1.00x**)           | `3.06 s` (🚀 **10.72x faster**) | `8.33 s` (🚀 **3.93x faster**)  |

### Blake: compile

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `1.61 ms` (✅ **1.00x**)                                                |

### Blake: prove

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `15.90 s` (✅ **1.00x**)                                                |

### Blake: verify

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `4.71 ms` (✅ **1.00x**)                                                |

### Blake:

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `15.90 s` (✅ **1.00x**)                                                |

### Blake3: compile

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `6.64 ms` (✅ **1.00x**)                    |

### Blake3: prove

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.47 s` (✅ **1.00x**)                     |

### Blake3: verify

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `4.68 ms` (✅ **1.00x**)                    |

### Blake3:

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.50 s` (✅ **1.00x**)                     |

---
Made with [criterion-table](https://github.com/nu11ptr/criterion-table)

