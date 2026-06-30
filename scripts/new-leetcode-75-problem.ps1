param(
    [Parameter(Mandatory = $true)]
    [ValidateRange(1, 75)]
    [int] $Number,

    [Parameter(Mandatory = $true)]
    [string] $Slug,

    [Parameter(Mandatory = $true)]
    [string] $Title,

    [Parameter(Mandatory = $true)]
    [ValidateSet("easy", "medium", "hard")]
    [string] $Difficulty,

    [string] $Topics = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$folderName = "{0:D3}-{1}" -f $Number, $Slug
$problemDir = Join-Path $repoRoot "leetcode\leetcode-75\$folderName"

if (Test-Path $problemDir) {
    throw "Problem folder already exists: $problemDir"
}

New-Item -ItemType Directory -Force -Path $problemDir | Out-Null

$difficultyLabel = $Difficulty.Substring(0, 1).ToUpper() + $Difficulty.Substring(1)

$readme = @"
# $Number. $Title

**Platform:** LeetCode
**Study Plan:** LeetCode 75
**Difficulty:** $difficultyLabel
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

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText((Join-Path $problemDir "README.md"), $readme, $utf8NoBom)
[System.IO.File]::WriteAllText((Join-Path $problemDir "Solution.java"), $solution, $utf8NoBom)

Write-Host "Created $problemDir"
