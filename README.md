# Problem

A company operates two identical electronic wallets, Wallet A and Wallet B, to process its coin transactions during the upcoming season. Each wallet can hold between 0 and m coins. At the beginning of the season, both wallets contain 0 coins.
Before the season begins, the company knows the complete list of transactions that will occur, given as a sequence

```cpp
transactions[0], transactions[1], ..., transactions[n-1].
```

For each day i:

- If `transactions[i] > 0`, the company receives that many coins.
- If `transactions[i] < 0`, it must pay that many coins.

Each transaction must be processed immediately and entirely by one of the two wallets. Transactions cannot be split or postponed.

Since the company knows the entire sequence in advance, it may decide beforehand which wallet will handle each transaction.

At all times during the season, the balance of each wallet must remain between 0 and m coins. If a wallet would ever exceed capacity m or drop below 0, operations fail.


Design and implement an algorithm that determines the smallest integer m for which there exists an assignment of transactions to the two wallets such that all transactions can be completed successfully.

If no such capacity exists, the algorithm should report that the instance is infeasible.


## Implement the Following Function

```cpp
int FindMinWalletCapacity(const std::vector<int>& transactions)
```

- transactions[i] is the net number of coins on day i.
- The array is indexed from 0 to n-1.

The function should return the minimum required capacity m that makes the given sequence of transactions feasible.

If no such capacity exists, the function should return -1.


## Constraints

- The number of transactions does not exceed 100.
- The absolute value of each transaction does not exceed 10 coins.

## Compile Your Code

You may use any standard C++ compiler to compile your code.

To compile your code, run:

```bash
make
```

or alternatively:

```bash
g++ main.cpp student_code_6.cpp -std=c++20 -pedantic-errors -O3 -o main
```

### Test Your Code

Please run the unit tests:

```bash
./main small
./main large
```

We also recommend running memory tests:

```bash
./memtest small
./memtest large
```


### Submit Your Code

Submit your code on **Gradescope**.
