# SafeMath Contract

This is an unlicensed Solidity contract named "SafeMath" that demonstrates safe mathematical operations using `require()`, `assert()`, and `revert()`. The contract provides a `subtract` function for subtracting one unsigned integer from another while ensuring safety against underflows and overflows.

## Functions

### `subtract(uint _a, uint _b)`

This function allows you to subtract `_b` from `_a` while ensuring the following safety checks:

- It uses the `require()` statement to check that `_b` is less than or equal to `_a`, preventing underflows. If `_b` is greater than `_a`, it will throw an error with the message "Subtraction result must be non-negative."

- It uses the `assert()` statement to check that `_b` is greater than or equal to 0, ensuring that `_b` is a non-negative number.

- It calculates the result of the subtraction and assigns it to the `result` variable.

- It uses an `if` statement to check if `_a` is less than `_b`. If true, it will trigger a `revert()` with the message "Subtraction overflow," preventing overflows.

- Finally, it returns the calculated result.

## Important Notes

- This contract does not have any licensing information. Please be aware of the legal implications of using or modifying this code.

- The contract's primary purpose is to demonstrate safe math operations. It is recommended to use established and well-audited libraries for safe math operations in real-world projects.

- Always exercise caution when handling mathematical operations in smart contracts to prevent potential vulnerabilities.

## Disclaimer

This contract is provided as-is, without any warranties or guarantees. Use it for educational purposes and ensure you understand its behavior and implications before using it in a production environment.
