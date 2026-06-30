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
  leetcode-75/

topics/
  README.md

scripts/
  new-leetcode-75-problem.ps1
```

Each problem README should include:

- Problem link
- Difficulty
- Topics
- Approach
- Complexity analysis
- Code notes when useful

## Study Plans

| Study Plan | Progress |
|---|---:|
| [LeetCode 75](leetcode/leetcode-75) | 0 / 75 |

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
.\scripts\new-leetcode-75-problem.ps1 -Number 1 -Slug merge-strings-alternately -Title "Merge Strings Alternately" -Difficulty easy -Topics "Two Pointers, String"
```

The script creates a numbered problem folder with a starter `README.md` and `Solution.java`. Then you only need to fill in the explanation and replace the Java method signature with the one required by LeetCode.
