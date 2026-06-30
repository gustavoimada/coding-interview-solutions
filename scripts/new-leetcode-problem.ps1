param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("easy", "medium", "hard")]
    [string] $Difficulty,

    [Parameter(Mandatory = $true)]
    [string] $Slug,

    [Parameter(Mandatory = $true)]
    [string] $Title,

    [string] $Topics = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$problemDir = Join-Path $repoRoot "leetcode\$Difficulty\$Slug"

if (Test-Path $problemDir) {
    throw "Problem folder already exists: $problemDir"
}

New-Item -ItemType Directory -Force -Path $problemDir | Out-Null

$readme = @"
# $Title

**Platform:** LeetCode
**Difficulty:** $Difficulty
**Topics:** $Topics
**Link:** https://leetcode.com/problems/$Slug/

## Problem Summary

Describe the problem in your own words.

## Approach

Explain the reasoning behind the solution.

## Complexity

- Time: O(?)
- Space: O(?)

## Notes

Add edge cases or implementation details.
"@

$solution = @"
class Solution {
    // Replace with the LeetCode method signature.
}
"@

Set-Content -LiteralPath (Join-Path $problemDir "README.md") -Value $readme -Encoding UTF8
Set-Content -LiteralPath (Join-Path $problemDir "Solution.java") -Value $solution -Encoding UTF8

Write-Host "Created $problemDir"
