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

|        | `Triton`                  | `Miden`                        | `Plonk: 3 by 3`                   | `Risc`                         | `Halo: 3 by 3`                      | `Vamp-IR zk-garage plonk: sudoku`          | `Vamp-IR halo2: sudoku`              |
|:-------|:--------------------------|:-------------------------------|:----------------------------------|:-------------------------------|:------------------------------------|:-------------------------------------------|:------------------------------------ |
|        | `227.60 us` (✅ **1.00x**) | `1.46 ms` (❌ *6.41x slower*)   | `99.33 ms` (❌ *436.40x slower*)   | `1.13 ms` (❌ *4.94x slower*)   | `347.08 ms` (❌ *1524.93x slower*)   | `692.24 ms` (❌ *3041.41x slower*)          | `691.91 ms` (❌ *3039.95x slower*)    |

### Sudoku: prove

|        | `Triton`                | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                    | `Vamp-IR zk-garage plonk: sudoku`          | `Vamp-IR halo2: sudoku`            |
|:-------|:------------------------|:----------------------------------|:----------------------------------|:------------------------------|:----------------------------------|:-------------------------------------------|:---------------------------------- |
|        | `10.04 s` (✅ **1.00x**) | `369.18 ms` (🚀 **27.18x faster**) | `99.30 ms` (🚀 **101.06x faster**) | `8.85 s` (✅ **1.13x faster**) | `121.02 ms` (🚀 **82.93x faster**) | `73.65 ms` (🚀 **136.27x faster**)          | `85.80 ms` (🚀 **116.96x faster**)  |

### Sudoku: verify

|        | `Triton`                 | `Miden`                         | `Plonk: 3 by 3`                 | `Risc`                          | `Halo: 3 by 3`                  | `Vamp-IR zk-garage plonk: sudoku`          | `Vamp-IR halo2: sudoku`           |
|:-------|:-------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------------------|:--------------------------------- |
|        | `85.45 ms` (✅ **1.00x**) | `2.53 ms` (🚀 **33.73x faster**) | `7.64 ms` (🚀 **11.18x faster**) | `5.88 ms` (🚀 **14.52x faster**) | `4.62 ms` (🚀 **18.51x faster**) | `8.26 ms` (🚀 **10.34x faster**)            | `4.06 ms` (🚀 **21.03x faster**)   |

### Sudoku:

|        | `Triton`               | `Miden`                           | `Plonk: 3 by 3`                   | `Risc`                        | `Halo: 3 by 3`                    | `Vamp-IR zk-garage plonk: sudoku`          | `Vamp-IR halo2: sudoku`            |
|:-------|:-----------------------|:----------------------------------|:----------------------------------|:------------------------------|:----------------------------------|:-------------------------------------------|:---------------------------------- |
|        | `9.25 s` (✅ **1.00x**) | `373.62 ms` (🚀 **24.77x faster**) | `208.37 ms` (🚀 **44.41x faster**) | `8.86 s` (✅ **1.04x faster**) | `469.47 ms` (🚀 **19.71x faster**) | `768.56 ms` (🚀 **12.04x faster**)          | `772.51 ms` (🚀 **11.98x faster**)  |

### fibonacci: compile

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `21.08 us` (✅ **1.00x**)        | `21.11 us` (✅ **1.00x slower**) | `71.11 us` (❌ *3.37x slower*)   | `61.04 us` (❌ *2.90x slower*)   | `49.21 us` (❌ *2.34x slower*)   | `1.03 ms` (❌ *48.80x slower*)   | `1.04 ms` (❌ *49.55x slower*)   | `1.06 ms` (❌ *50.43x slower*)   | `1.06 ms` (❌ *50.47x slower*)    |

### fibonacci: prove

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.20 s` (✅ **1.00x**)          | `2.47 s` (❌ *2.05x slower*)     | `370.93 ms` (🚀 **3.24x faster**) | `179.48 ms` (🚀 **6.70x faster**) | `180.93 ms` (🚀 **6.65x faster**) | `4.92 s` (❌ *4.09x slower*)   | `4.92 s` (❌ *4.09x slower*)   | `4.93 s` (❌ *4.10x slower*)   | `4.93 s` (❌ *4.10x slower*)    |

### fibonacci: verify

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                | `Miden: fixed-92`               | `Miden: fixed-50`               | `Risc0: iter-93`                | `Risc0: iter-50`                | `Risc0: fixed-50`               | `Risc0: fixed-92`                |
|:-------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:--------------------------------|:-------------------------------- |
|        | `53.04 ms` (✅ **1.00x**)        | `66.16 ms` (❌ *1.25x slower*)   | `2.55 ms` (🚀 **20.79x faster**) | `2.49 ms` (🚀 **21.32x faster**) | `2.49 ms` (🚀 **21.30x faster**) | `10.40 ms` (🚀 **5.10x faster**) | `10.39 ms` (🚀 **5.10x faster**) | `13.65 ms` (🚀 **3.88x faster**) | `15.82 ms` (🚀 **3.35x faster**)  |

### fibonacci:

|        | `Triton: fibonacci-50`          | `Triton: fibonacci-93`          | `Miden: iter-93`                 | `Miden: fixed-92`                | `Miden: fixed-50`                | `Risc0: iter-93`              | `Risc0: iter-50`              | `Risc0: fixed-50`             | `Risc0: fixed-92`              |
|:-------|:--------------------------------|:--------------------------------|:---------------------------------|:---------------------------------|:---------------------------------|:------------------------------|:------------------------------|:------------------------------|:------------------------------ |
|        | `1.10 s` (✅ **1.00x**)          | `2.23 s` (❌ *2.02x slower*)     | `374.48 ms` (🚀 **2.94x faster**) | `182.30 ms` (🚀 **6.04x faster**) | `183.63 ms` (🚀 **6.00x faster**) | `4.94 s` (❌ *4.49x slower*)   | `4.94 s` (❌ *4.49x slower*)   | `4.95 s` (❌ *4.49x slower*)   | `4.95 s` (❌ *4.49x slower*)    |

### fibonacci large: compile

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `21.32 us` (✅ **1.00x**)          | `71.26 us` (❌ *3.34x slower*)   | `1.03 ms` (❌ *48.26x slower*)    |

### fibonacci large: prove

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `35.82 s` (✅ **1.00x**)           | `3.31 s` (🚀 **10.84x faster**) | `8.82 s` (🚀 **4.06x faster**)  |

### fibonacci large: verify

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`              | `Risc0: iter-1000`               |
|:-------|:----------------------------------|:--------------------------------|:-------------------------------- |
|        | `107.09 ms` (✅ **1.00x**)         | `2.84 ms` (🚀 **37.71x faster**) | `12.18 ms` (🚀 **8.79x faster**)  |

### fibonacci large:

|        | `Triton: fibonacci-1000`          | `Miden: iter-1000`             | `Risc0: iter-1000`             |
|:-------|:----------------------------------|:-------------------------------|:------------------------------ |
|        | `37.38 s` (✅ **1.00x**)           | `3.31 s` (🚀 **11.30x faster**) | `8.83 s` (🚀 **4.23x faster**)  |

### Blake: compile

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`          | `Vamp-IR halo2: Blake2s`              |
|:-------|:------------------------------|:--------------------------------------------|:------------------------------------- |
|        | `1.75 ms` (✅ **1.00x**)       | `48.98 s` (❌ *27996.88x slower*)            | `212.02 s` (❌ *121176.67x slower*)    |

### Blake: prove

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`          | `Vamp-IR halo2: Blake2s`           |
|:-------|:------------------------------|:--------------------------------------------|:---------------------------------- |
|        | `16.58 s` (✅ **1.00x**)       | `58.32 s` (❌ *3.52x slower*)                | `29.85 s` (❌ *1.80x slower*)       |

### Blake: verify

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`          | `Vamp-IR halo2: Blake2s`           |
|:-------|:------------------------------|:--------------------------------------------|:---------------------------------- |
|        | `4.97 ms` (✅ **1.00x**)       | `436.65 ms` (❌ *87.94x slower*)             | `1.01 s` (❌ *203.88x slower*)      |

### Blake:

|        | `Risc0: Library-abc`          | `Vamp-IR zk-garage plonk: Blake2s`          | `Vamp-IR halo2: Blake2s`           |
|:-------|:------------------------------|:--------------------------------------------|:---------------------------------- |
|        | `16.66 s` (✅ **1.00x**)       | `107.73 s` (❌ *6.46x slower*)               | `240.20 s` (❌ *14.41x slower*)     |

### Blake3: compile

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `7.08 ms` (✅ **1.00x**)                    |

### Blake3: prove

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.58 s` (✅ **1.00x**)                     |

### Blake3: verify

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `2.87 ms` (✅ **1.00x**)                    |

### Blake3:

|        | `Miden: Library-quick brown fox`           |
|:-------|:------------------------------------------ |
|        | `1.60 s` (✅ **1.00x**)                     |

---
Made with [criterion-table](https://github.com/nu11ptr/criterion-table)

