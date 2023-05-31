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

|        | `Triton`                  | `Miden`                        | `Plonk: 3 by 3`                   | `Risc`                         | `Halo: 3 by 3`                      | `Vamp-IR zk-garage plonk: sudoku`           |
|:-------|:--------------------------|:-------------------------------|:----------------------------------|:-------------------------------|:------------------------------------|:------------------------------------------- |
|        | `226.42 us` (✅ **1.00x**) | `1.46 ms` (❌ *6.45x slower*)   | `98.58 ms` (❌ *435.37x slower*)   | `1.11 ms` (❌ *4.89x slower*)   | `342.12 ms` (❌ *1511.02x slower*)   | `4.96 s` (❌ *21887.69x slower*)             |

### Sudoku: prove

|        | `Triton`                | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                     | `Vamp-IR zk-garage plonk: sudoku`           |
|:-------|:------------------------|:----------------------------------|:----------------------------------|:------------------------------|:-----------------------------------|:------------------------------------------- |
|        | `12.30 s` (✅ **1.00x**) | `369.29 ms` (🚀 **33.30x faster**) | `97.79 ms` (🚀 **125.74x faster**) | `8.87 s` (✅ **1.39x faster**) | `120.38 ms` (🚀 **102.14x faster**) | `73.24 ms` (🚀 **167.87x faster**)           |

### Sudoku: verify

|        | `Triton`                 | `Miden`                         | `Plonk: 3 by 3`                 | `Risc`                          | `Halo: 3 by 3`                  | `Vamp-IR zk-garage plonk: sudoku`           |
|:-------|:-------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:------------------------------------------- |
|        | `82.59 ms` (✅ **1.00x**) | `2.52 ms` (🚀 **32.82x faster**) | `7.50 ms` (🚀 **11.01x faster**) | `5.86 ms` (🚀 **14.09x faster**) | `4.57 ms` (🚀 **18.07x faster**) | `7.98 ms` (🚀 **10.35x faster**)             |

### Sudoku:

|        | `Triton`               | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                    | `Vamp-IR zk-garage plonk: sudoku`           |
|:-------|:-----------------------|:----------------------------------|:----------------------------------|:------------------------------|:----------------------------------|:------------------------------------------- |
|        | `9.93 s` (✅ **1.00x**) | `373.75 ms` (🚀 **26.57x faster**) | `203.65 ms` (🚀 **48.76x faster**) | `8.88 s` (✅ **1.12x faster**) | `462.86 ms` (🚀 **21.45x faster**) | `5.05 s` (🚀 **1.97x faster**)               |

### fibonacci: compile

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `21.14 us` (✅ **1.00x**)        | `21.15 us` (✅ **1.00x slower**) | `70.83 us` (❌ *3.35x slower*)   | `60.65 us` (❌ *2.87x slower*)   | `48.90 us` (❌ *2.31x slower*)   | `1.03 ms` (❌ *48.52x slower*)   | `1.03 ms` (❌ *48.90x slower*)   | `1.05 ms` (❌ *49.47x slower*)   | `1.06 ms` (❌ *50.13x slower*)    |

### fibonacci: prove

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.12 s` (✅ **1.00x**)          | `2.30 s` (❌ *2.05x slower*)     | `370.73 ms` (🚀 **3.02x faster**) | `179.43 ms` (🚀 **6.24x faster**) | `181.04 ms` (🚀 **6.19x faster**) | `4.94 s` (❌ *4.41x slower*)   | `4.94 s` (❌ *4.41x slower*)   | `4.94 s` (❌ *4.41x slower*)   | `4.94 s` (❌ *4.41x slower*)    |

### fibonacci: verify

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `51.32 ms` (✅ **1.00x**)        | `64.11 ms` (❌ *1.25x slower*)   | `2.53 ms` (🚀 **20.28x faster**) | `2.47 ms` (🚀 **20.79x faster**) | `2.47 ms` (🚀 **20.75x faster**) | `5.00 ms` (🚀 **10.27x faster**) | `4.99 ms` (🚀 **10.28x faster**) | `4.99 ms` (🚀 **10.28x faster**) | `5.00 ms` (🚀 **10.26x faster**)  |

### fibonacci:

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.14 s` (✅ **1.00x**)          | `2.27 s` (❌ *2.00x slower*)     | `372.90 ms` (🚀 **3.05x faster**) | `181.95 ms` (🚀 **6.26x faster**) | `183.72 ms` (🚀 **6.19x faster**) | `4.95 s` (❌ *4.35x slower*)   | `4.95 s` (❌ *4.35x slower*)   | `4.95 s` (❌ *4.35x slower*)   | `4.95 s` (❌ *4.35x slower*)    |

### fibonacci large: compile

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `21.01 us` (✅ **1.00x**)          | `70.84 us` (❌ *3.37x slower*)   | `1.02 ms` (❌ *48.63x slower*)    |

### fibonacci large: prove

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `38.18 s` (✅ **1.00x**)           | `3.31 s` (🚀 **11.54x faster**) | `8.82 s` (🚀 **4.33x faster**)  |

### fibonacci large: verify

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `106.20 ms` (✅ **1.00x**)         | `2.82 ms` (🚀 **37.62x faster**) | `15.08 ms` (🚀 **7.04x faster**)  |

### fibonacci large:

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `37.12 s` (✅ **1.00x**)           | `3.30 s` (🚀 **11.24x faster**) | `8.85 s` (🚀 **4.20x faster**)  |

### Blake: compile

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`           |
|:-------|:------------------------------|:-------------------------------------------- |
|        | `1.73 ms` (✅ **1.00x**)       | `48.06 s` (❌ *27760.33x slower*)             |

### Blake: prove

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`           |
|:-------|:------------------------------|:-------------------------------------------- |
|        | `16.49 s` (✅ **1.00x**)       | `57.16 s` (❌ *3.47x slower*)                 |

### Blake: verify

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`           |
|:-------|:------------------------------|:-------------------------------------------- |
|        | `4.93 ms` (✅ **1.00x**)       | `392.69 ms` (❌ *79.67x slower*)              |

### Blake:

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`           |
|:-------|:------------------------------|:-------------------------------------------- |
|        | `16.68 s` (✅ **1.00x**)       | `105.23 s` (❌ *6.31x slower*)                |

### Blake3: compile

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `7.09 ms` (✅ **1.00x**)                    |

### Blake3: prove

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.58 s` (✅ **1.00x**)                     |

### Blake3: verify

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `2.93 ms` (✅ **1.00x**)                    |

### Blake3:

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.58 s` (✅ **1.00x**)                     |

---
Made with [criterion-table](https://github.com/nu11ptr/criterion-table)

