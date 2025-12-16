# ⛄️ Advent of AI - Day 1: The Fortune Teller's Tent

**Role:** AI Engineer  
**Tool:** `goose` CLI  
**Objective:** Restore order to Madame Zelda's tent by generating winter fortunes using AI.

---

## 🛠 Prerequisites

- [ ] Install **goose** CLI (not Desktop).
- [ ] Set up credits (Use Access Code: `ADVENTDAY1` at goose-credits.dev).
- [ ] Verify installation by running `goose --version`.

---

## 🟢 Level 1: Beginner
**Focus:** Prompt Engineering & Formatting  
**Goal:** Use the CLI to manually generate static fortunes with specific visual styles.

### Checklist
- [ ] **Configure Goose:** Ensure goose is connected to the model (e.g., Claude Sonnet 3.5).
- [ ] **Prompt Crafting:** Write a prompt that instructs the AI to use ASCII borders.
- [ ] **Mood Variation:** Run the command 3 times manually with different mood instructions (e.g., "Grumpy", "Festive", "Sarcastic").
- [ ] **Theme Consistency:** Ensure all output references winter/snow/holiday themes.

### 📄 Solution
* [View Beginner Solution & Prompts](./solutions/beginner.md)

---

## 🟡 Level 2: Intermediate
**Focus:** Bash Scripting & Automation  
**Goal:** Wrap the `goose` command in a shell script to accept arguments and save outputs.

### Checklist
- [ ] **Script Creation:** Create a file named `fortune.sh` in the `scripts` folder.
- [ ] **Variable Injection:** Modify the script to accept a `--mood` argument.
- [ ] **Prompt Construction:** Dynamically build the prompt string inside the script using the argument.
- [ ] **File Output:** Pipe the result of the goose run into a text file (e.g., `daily_fortune.txt`) or append to a log.

### 📄 Solution
* [View Intermediate Script Logic](./solutions/intermediate.md)

---

## 🔴 Level 3: Advanced
**Focus:** DevOps & CI/CD  
**Goal:** Automate the fortune generation using GitHub Actions.

### Checklist
- [ ] **Repo Setup:** Initialize a git repository for your Advent of AI code.
- [ ] **Workflow File:** Create `.github/workflows/daily_fortune.yml`.
- [ ] **Secrets Management:** Add your LLM API Key to GitHub Secrets.
- [ ] **Action Definition:** Configure the action to install `goose`, run the command, and output the result to the job summary or a PR comment.
- [ ] **Scheduling:** Set a `cron` trigger to run the fortune generator every morning.

### 📄 Solution
* [View Advanced Workflow Configuration](./solutions/advanced.md)

---

## 📤 Submission & Success Criteria

**You are done when:**
1.  You can run a command from your terminal.
2.  You receive a visually formatted (ASCII) winter fortune in return.
3.  The fortune reflects a specific personality/mood.

**Share your work:**
* Take a screenshot of your terminal output.
* Post to the Discussion board under Day 1.
* (Optional) Tweet/Post on social media.

---

### 📂 Directory Structure
This project is organized as follows:

```text
/advent-of-ai
└── /day1
    ├── problem.md (This file)
    ├── /solutions
    │   ├── beginner.md       (Prompts used)
    │   ├── intermediate.md   (Bash script explanation)
    │   └── advanced.md       (YAML workflow explanation)
    ├── /scripts
    │   └── fortune.sh        (Actual script)
    └── /outputs
        └── fortune_log.txt   (Saved outputs)