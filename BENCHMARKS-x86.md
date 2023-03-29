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
|        | `205.73 us` (✅ **1.00x**) | `1.37 ms` (❌ *6.65x slower*)   | `96.97 ms` (❌ *471.35x slower*)   | `1.12 ms` (❌ *5.47x slower*)   | `322.50 ms` (❌ *1567.61x slower*)    |

### Sudoku: prove

|        | `Triton`                | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                     |
|:-------|:------------------------|:----------------------------------|:----------------------------------|:------------------------------|:---------------------------------- |
|        | `10.81 s` (✅ **1.00x**) | `337.27 ms` (🚀 **32.06x faster**) | `94.92 ms` (🚀 **113.93x faster**) | `8.34 s` (✅ **1.30x faster**) | `115.63 ms` (🚀 **93.53x faster**)  |

### Sudoku: verify

|        | `Triton`                  | `Miden`                         | `Plonk: 3 by 3`                 | `Risc`                          | `Halo: 3 by 3`                   |
|:-------|:--------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `115.03 ms` (✅ **1.00x**) | `2.37 ms` (🚀 **48.60x faster**) | `7.18 ms` (🚀 **16.02x faster**) | `5.55 ms` (🚀 **20.71x faster**) | `4.41 ms` (🚀 **26.09x faster**)  |

### Sudoku:

|        | `Triton`               | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                     |
|:-------|:-----------------------|:----------------------------------|:----------------------------------|:------------------------------|:---------------------------------- |
|        | `8.83 s` (✅ **1.00x**) | `341.32 ms` (🚀 **25.88x faster**) | `198.15 ms` (🚀 **44.58x faster**) | `8.35 s` (✅ **1.06x faster**) | `443.39 ms` (🚀 **19.92x faster**)  |

### fibonacci: compile

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `19.86 us` (✅ **1.00x**)        | `19.96 us` (✅ **1.00x slower**) | `67.00 us` (❌ *3.37x slower*)   | `57.42 us` (❌ *2.89x slower*)   | `46.43 us` (❌ *2.34x slower*)   | `1.02 ms` (❌ *51.38x slower*)   | `1.03 ms` (❌ *52.02x slower*)   | `1.05 ms` (❌ *52.92x slower*)   | `1.06 ms` (❌ *53.55x slower*)    |

### fibonacci: prove

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.14 s` (✅ **1.00x**)          | `2.25 s` (❌ *1.97x slower*)     | `337.79 ms` (🚀 **3.38x faster**) | `162.53 ms` (🚀 **7.02x faster**) | `164.00 ms` (🚀 **6.95x faster**) | `4.64 s` (❌ *4.07x slower*)   | `4.64 s` (❌ *4.07x slower*)   | `4.64 s` (❌ *4.07x slower*)   | `4.64 s` (❌ *4.07x slower*)    |

### fibonacci: verify

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `83.16 ms` (✅ **1.00x**)        | `93.43 ms` (❌ *1.12x slower*)   | `2.37 ms` (🚀 **35.05x faster**) | `2.30 ms` (🚀 **36.20x faster**) | `2.32 ms` (🚀 **35.91x faster**) | `4.71 ms` (🚀 **17.67x faster**) | `4.70 ms` (🚀 **17.68x faster**) | `4.71 ms` (🚀 **17.64x faster**) | `4.72 ms` (🚀 **17.64x faster**)  |

### fibonacci:

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.10 s` (✅ **1.00x**)          | `2.00 s` (❌ *1.82x slower*)     | `341.03 ms` (🚀 **3.22x faster**) | `165.00 ms` (🚀 **6.66x faster**) | `166.38 ms` (🚀 **6.60x faster**) | `4.65 s` (❌ *4.23x slower*)   | `4.65 s` (❌ *4.23x slower*)   | `4.65 s` (❌ *4.23x slower*)   | `4.66 s` (❌ *4.25x slower*)    |

### fibonacci large: compile

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `19.86 us` (✅ **1.00x**)          | `67.11 us` (❌ *3.38x slower*)   | `1.03 ms` (❌ *51.78x slower*)    |

### fibonacci large: prove

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `31.15 s` (✅ **1.00x**)           | `3.01 s` (🚀 **10.33x faster**) | `8.31 s` (🚀 **3.75x faster**)  |

### fibonacci large: verify

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `137.95 ms` (✅ **1.00x**)         | `2.63 ms` (🚀 **52.52x faster**) | `5.56 ms` (🚀 **24.80x faster**)  |

### fibonacci large:

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `32.10 s` (✅ **1.00x**)           | `3.02 s` (🚀 **10.62x faster**) | `8.32 s` (🚀 **3.86x faster**)  |

### Blake: compile

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `1.72 ms` (✅ **1.00x**)                                                |

### Blake: prove

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `15.88 s` (✅ **1.00x**)                                                |

### Blake: verify

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `4.71 ms` (✅ **1.00x**)                                                |

### Blake:

|        | `Risc0: Library-The quick brown fox jumps over the lazy dog`           |
|:-------|:---------------------------------------------------------------------- |
|        | `15.89 s` (✅ **1.00x**)                                                |

### Blake3: compile

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `6.64 ms` (✅ **1.00x**)                    |

### Blake3: prove

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.45 s` (✅ **1.00x**)                     |

### Blake3: verify

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `2.52 ms` (✅ **1.00x**)                    |

### Blake3:

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.46 s` (✅ **1.00x**)                     |

---
Made with [criterion-table](https://github.com/nu11ptr/criterion-table)

