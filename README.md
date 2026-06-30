# Coding Interview Solutions

<p align="left">
  <img src="https://img.shields.io/badge/Status-In%20Progress-yellow" />
  <img src="https://img.shields.io/badge/Platform-LeetCode-orange" />
  <img src="https://img.shields.io/badge/Focus-Interview%20Preparation-blue" />
  <img src="https://img.shields.io/badge/Topics-Data%20Structures%20%26%20Algorithms-purple" />
  <img src="https://img.shields.io/badge/Language-Java-red" />
</p>

This repository is a personal collection of coding interview solutions, focused on problems commonly used to practice data structures, algorithms and problem-solving patterns.

The goal is not only to store accepted code, but to document the reasoning behind each solution: approach, complexity, trade-offs and implementation details.

## Structure

```text
leetcode/
  easy/
  medium/
  hard/

topics/
  README.md

templates/
  problem-readme.md
  Solution.java

scripts/
  new-leetcode-problem.ps1
```

## Solution Format

Each problem should have its own folder:

```text
leetcode/medium/two-sum/
  README.md
  Solution.java
```

Each problem README should include:

- Problem link
- Difficulty
- Topics
- Approach
- Complexity analysis
- Code notes when useful

## Progress

| Platform | Difficulty | Solved |
|---|---:|---:|
| LeetCode | Easy | 0 |
| LeetCode | Medium | 0 |
| LeetCode | Hard | 0 |

## Topics Covered

- Arrays and hash maps
- Strings
- Linked lists
- Stacks and queues
- Trees and binary search trees
- Graphs
- Recursion and backtracking
- Dynamic programming
- Greedy algorithms
- Binary search

## Creating a New Problem

Use the helper script:

```powershell
.\scripts\new-leetcode-problem.ps1 -Difficulty medium -Slug two-sum -Title "Two Sum" -Topics "Array, Hash Map"
```

Then edit the generated `README.md` and `Solution.java`.
