# 0. SAT Solving in Reverse Engineering

Having completed the **static analysis project** , we are now ready to delve into dynamic analysis. This next phase will allow us to observe the behavior of binaries during execution, providing deeper insights into their functionality and potential vulnerabilities. Static analysis is a crucial step in reverse engineering, allowing analysts to examine binaries without executing them.

In this **challenge**, participants will explore the application of SAT solvers in reverse engineering tasks, gaining hands-on experience in analyzing logical constraints. By successfully completing the challenge, you will sharpen your problem-solving skills and deepen your understanding of how to leverage SAT solvers to navigate and decode complex logical relationships within obfuscated code.

## Objective

- Explore the use of SAT solvers to analyze and break down logical constraints present in the binary
- Translate extracted constraints into a Boolean formula.
- Use a SAT solver to find a satisfying assignment and understand the binary’s behavior.

## Steps

- 1- Obtain the Binary: Start with the provided binary that contains complex logical constraints.
- 2- Disassemble the Binary: Utilize reverse engineering tools to extract and analyze the logical constraints present in the binary.
- 3- Translate Constraints: Convert the identified constraints into a Boolean formula suitable for processing by a SAT solver.
- 4- Solve with SAT Solver: Employ a SAT solver to find a satisfying assignment that meets the logical conditions.
- 5- Interpret Results: Analyze the results to glean insights into the binary’s operation and any potential vulnerabilities.

## Tools

- Z3 SMT Solver / Angr
- MiniSat
- Binary Ninja or IDA Pro
- Python or C++

**Get ready to dive into the world of logical reasoning and discover how SAT solving can illuminate the hidden aspects of binaries!**

## Hints

The Z3 SMT solver may take a significant amount of time to compute the solution. Locally, the execution took approximately 35 minutes before the flag was printed. Execution time may vary depending on system performance and complexity of the constraints.

---

# 1. Exploring Anti-Debugging Techniques 

ollowing our exploration of static analysis, we now shift our focus to dynamic analysis, specifically investigating anti-debugging techniques. This phase will deepen our understanding of how binaries employ mechanisms to detect and obstruct debugging efforts.

In this challenge, we will analyze a provided binary that incorporates various anti-debugging strategies. By dissecting these techniques, we will learn to identify, bypass, and neutralize them, equipping ourselves with the skills necessary for effective **malware** analysis and reverse engineering.

## Challenge Overview
n this challenge, you are provided with a binary that employs various anti-debugging techniques. Your task is to:

- Disassemble and analyze the binary to identify the anti-debugging techniques used.
- Bypass these techniques using **debugging tools** and **scripts**.
- Successfully reverse engineer the binary to retrieve a hidden flag.

## Steps

- 1- Download the Binary: Obtain the binary containing the anti-debugging mechanisms.
- 2- Analyze the Binary: Use reverse engineering tools to disassemble and inspect the binary.
- 3- Identify Anti-Debugging Techniques: Document the methods employed to prevent debugging.
- 4- Bypass Techniques: Use appropriate debugging tools and scripts to bypass the identified anti-debugging measures.
- 5- Extract Information: Once bypassed, reverse engineer the binary to achieve your objective.

## Tools and Techniques
To successfully complete this challenge, you should be familiar with the following tools and techniques:

- **GDB (GNU Debugger)**
- **OllyDbg**
- **x64dbg**
- **Immunity Debugger**
- **Binary Ninja or IDA Pro**

---

# 2. SAT Solving in Reverse Engineering 
## Challenge Overview
The objective of this reverse engineering challenge is to explore the use of SAT solvers in reverse engineering, specifically in analyzing and breaking down complex logical constraints within binaries. SAT solvers are powerful tools used in various fields, including cryptography, software verification, and reverse engineering. By completing this challenge, participants will gain hands-on experience in applying SAT solving techniques to reverse engineering tasks, enhancing their problem-solving skills and understanding of logical problem structures.

In this challenge, you are provided with a binary or a code snippet that implements complex logical constraints. Your task is to:

## Steps:

- Disassemble the binary or analyze the code to extract the logical constraints.
- Translate the constraints into a Boolean formula that can be processed by a SAT solver.
- Use a SAT solver to find a satisfying assignment that meets the conditions of the problem.
- Interpret the results to understand the behavior of the binary or to break its protection mechanism.

## Tools and Techniques:
To successfully complete this challenge, you should be familiar with the following tools and techniques:

- **IDA Pro**
- **Ghidra**
- **Valgrind**
- **Intel Pin Tool**

By completing this challenge, you will gain valuable experience in dynamic analysis and reverse engineering, particularly in handling binaries that utilize self-modifying code. Happy hacking!

---

# 3. self-modifying code
In this challenge, we focus on investigating self-modifying code techniques. This phase deepens our understanding of how binaries can alter their own execution instructions, often to evade detection and obfuscate their true behavior.

You will analyze a provided binary that employs self-modifying code. By dissecting these techniques, you will learn to identify and execute the dynamically modified instructions, equipping yourself with essential skills for effective malware analysis and advanced reverse engineering.

The objective of this challenge is to explore and understand the use of self-modifying code within binaries. Participants will gain hands-on experience in identifying, decrypting, and executing such code in a controlled environment, enhancing their skills in dynamic analysis and reverse engineering.

## Challenge Overview
In this challenge, you are provided with a binary that incorporates self-modifying code techniques. Your tasks are to:

- Disassemble and analyze the binary to identify the self-modifying code employed.
- Use dynamic analysis tools to decrypt and execute the modified code.
- Understand how the program validates user input (e.g., a flag or password).
- Successfully reverse engineer the binary to obtain the correct input that passes the validation.

## Steps

- 1- Analyze the Binary: Use reverse engineering tools to disassemble and inspect the binary.
- 2- ** Identify Self-Modifying Code:** Document the segments of code that modify themselves during execution.
- 3- Decrypt the Code: Utilize debugging tools to reveal the actual instructions being executed.
- 4- ** Understand Input Validation:** Analyze the logic used by the binary to validate inputs.
- 5- Extract Information: Use the identified valid input to execute the program and retrieve the desired output or flag.

## Tools and Techniques
To successfully complete this challenge, you should be familiar with the following tools and techniques:

- **GDB (GNU Debugger)**
- **IDA Pro**
- **Ghidra**
- **Valgrind**
- **Intel Pin Tool**

By completing this challenge, you will gain valuable experience in dynamic analysis and reverse engineering, particularly in handling binaries that utilize self-modifying code. Happy hacking!

---

# 4. Solve the 100 Binaries 
Building on the foundational skills of reverse engineering, this challenge introduces a hands-on approach to dynamic binary analysis. It requires understanding how simple binaries perform arithmetic operations on inputs and verifying them against predefined values. By solving each binary, participants will gain insight into how basic code flow and input validation work in compiled executables.

In this challenge, we will analyze 100 individual binaries, each of which employs arithmetic checks on a single input character. The challenge is to deduce the correct input for each binary and reconstruct the flag from these inputs.

## Challenge Overview
In this challenge, you are provided with 100 small binaries that:

- Perform simple arithmetic operations (addition or subtraction) on the provided input.
- Check if the result matches a hardcoded value within the binary.
- Produce no obvious output if the input is correct, but may silently succeed (e.g., exit with code 0).

## Your task is to:

- Analyze each binary to understand its logic (addition or subtraction on input).
- Bypass the arithmetic checks using debugging tools or scripts.
- Extract the correct input for each binary.
- Reconstruct the full flag by combining the inputs from all binaries.

## Steps

- 1- Download the Binaries: Obtain the set of 100 binaries provided for the challenge.

- 2- Analyze the Binaries: Use reverse engineering tools to disassemble and inspect each binary, focusing on how they process inputs.

- 3- Identify the Arithmetic Operation: Determine whether each binary uses addition or subtraction on the input and identify the target value for comparison.

- 4- Bypass the Checks: Use debugging tools to determine and bypass the arithmetic checks.

- 5- Automate the Solution: Once the logic is understood, automate the input testing across all binaries to streamline solving them.

- 6- Extract the Full Flag: Piece together the correct inputs to reveal the entire hidden flag.

## Tools and Techniques
To successfully complete this challenge, you should be familiar with the following tools and techniques:

- **GDB (GNU Debugger)**
- **Pwntools (Python library for automation)**
- **x64dbg**
- **Binary Ninja or IDA Pro**


