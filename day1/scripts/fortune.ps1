# 1. PARAMETERS FIRST (Must be at the very top)
param (
    [string]$Mood = "Festive",
    [string]$Theme = "Magical",
    [string]$OutFile = "..\outputs\fortune_log.txt"
)

# 2. FORCE UTF-8 (Fixes garbage symbols)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# 3. CONSTRUCT PROMPT
$Prompt = "Context: You are the AI backup for Madame Zelda's broken crystal ball at the Winter Festival. " +
          "Task: Reveal a fortune to a waiting festival-goer. " +
          "Personality/Mood: $Mood. " +
          "Visual Theme: $Theme. " +
          "Include a central ASCII art image (like a snowman, crystal ball, or tree) that fits the mood. " +
          "Requirements: Output RAW TEXT only. Do NOT use markdown code blocks (```). " +
          "Use elegant ASCII art borders (using double lines). Include a central ASCII art icon fitting the '$Theme'. " +
          "Write a short, creative prediction about their winter. Use emojis."

Write-Host " Summoning a $Mood fortune..." -ForegroundColor Cyan

# 4. PREPARE LOG HEADER (Using Here-String for safety)
# We use dashes (-) instead of pipes (|) just to be extra safe against parser errors.
$Header = @"

==================================================
Mood: $Mood  -  Theme: $Theme
Date: $(Get-Date)
==================================================
"@

# 5. SAVE & DISPLAY
# First, write the header to both screen and file
$Header | Tee-Object -FilePath $OutFile -Append

# Then, run Goose and pipe the output to both screen and file
goose run --text $Prompt -q | Tee-Object -FilePath $OutFile -Append

Write-Host "`nSaved to $OutFile" -ForegroundColor Green