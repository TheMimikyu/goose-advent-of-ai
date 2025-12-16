# 🟡 Level 2: The Sorcerer

**Goal:** Automate fortune generation with a PowerShell script that accepts specific Moods and Themes.

### 📜 The Script (`scripts/fortune.ps1`)

This script wraps the `goose` CLI, injects the "Madame Zelda" context, and streams output to both the console and a log file.

```powershell
# 1. PARAMETERS
param (
    [string]$Mood = "Festive",
    [string]$Theme = "Magical",
    [string]$OutFile = "..\outputs\fortune_log.txt"
)

# 2. CONFIGURATION
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# 3. PROMPT CONSTRUCTION
$Prompt = "Context: You are the AI backup for Madame Zelda's broken crystal ball at the Winter Festival. " +
          "Task: Reveal a fortune to a waiting festival-goer. " +
          "Personality: $Mood. Visual Theme: $Theme. " +
          "Requirements: Output RAW TEXT only. Do NOT use markdown code blocks. " +
          "Use elegant ASCII art borders (double lines). Include a central ASCII art icon fitting the theme. " +
          "Write a short, creative prediction. Use emojis."

Write-Host "Summoning a $Mood fortune..." -ForegroundColor Cyan

# 4. EXECUTION & LOGGING
$Header = @"

==================================================
Mood: $Mood  -  Theme: $Theme
Date: $(Get-Date)
==================================================
"@

$Header | Tee-Object -FilePath $OutFile -Append
goose run --text $Prompt -q | Tee-Object -FilePath $OutFile -Append

Write-Host "`nSaved to $OutFile" -ForegroundColor Green
```

## Usage

```bash
# Default Run
.\scripts\fortune.ps1

# Custom Combinations
.\scripts\fortune.ps1 -Mood "Sarcastic" -Theme "Spooky"
.\scripts\fortune.ps1 -Mood "Poetic" -Theme "Cyberpunk"
```

## 📄 Output Example
(Grumpy Mood + Romantic Theme)

![alt text](..\assets\i1.png)

(Playful Mood + Adventurous Theme)

![alt text](..\assets\i2.png)