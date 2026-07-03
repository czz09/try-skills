<p align="center">
  <img src="https://img.shields.io/github/stars/chuaitry-edu/try-skills?style=for-the-badge&label=⭐%20Stars" alt="stars">
  <img src="https://img.shields.io/badge/skills-7-blue?style=for-the-badge" alt="skills">
  <img src="https://img.shields.io/github/license/chuaitry-edu/try-skills?style=for-the-badge" alt="license">
  <img src="https://img.shields.io/badge/agents-4-green?style=for-the-badge" alt="agents">
</p>

<h1 align="center">try-skills 🧪</h1>

<p align="center">
  <b>7 AI learning diagnosis tools</b> — stuck somewhere? Use the right tool.<br>
  <b>7 个 AI 学习诊断工具</b> — 卡在哪用哪个，不卡不用。<br>
  Supports Hermes / Claude Code / Codex / Cursor.
</p>

---

## 🇬🇧 English

### Why

Most people fail to learn not because they're lazy, but because they're **stuck at the wrong stage**.

| Symptom | Real problem | Use this |
|---------|-------------|----------|
| Open IDE → want to close it | Wrong difficulty (panic zone) | `try-stretch` |
| Bought 80 books, read 2 | Wrong method (reading ≠ skill) | `try-method` |
| Finished a chapter → forgot everything | Wrong review (rereading ≠ recall) | `try-review` |
| Have a goal, don't know what to do today | Missing task breakdown | `try-task` |
| Not sure if a goal is realistic | Missing feasibility check | `try-plan` |
| Don't know where you're stuck | Need a router | `try` |
| First time using try-skills | Need setup | `try-init` |

### Quickstart

```bash
# Auto-detect your agent and install
bash <(curl -s https://raw.githubusercontent.com/chuaitry-edu/try-skills/main/scripts/install.sh)
```

Or manually copy:

| Agent | Source | Target |
|-------|--------|--------|
| Hermes | `hermes/` | `~/.local/share/hermes/skills/` |
| Claude Code | `claude-code/*.md` | `.claude/skills/` |
| Codex | `codex/*.md` | `.agents/skills/` |
| Cursor | `cursor/*.mdc` | `.cursor/rules/` |

Just tell your AI:

```
"Check my learning problem"      → try (router)
"How long will this goal take?"  → try-plan
"Too hard / too easy"            → try-stretch
"Don't know how to learn this"   → try-method
"What should I do today?"        → try-task
"I forgot everything"            → try-review
"First time here"                → try-init
```

### The 7 Tools

```
         try (router) — figure out where you're stuck
              │
    ┌─────────┼─────────┐
    │         │         │
 try-plan  try-stretch  try-method
 (feasibility) (difficulty) (method)
    │         │         │
    └─────────┼─────────┘
              │
          try-task (daily breakdown)
              │
          try-review (review & recall)
              │
          try-init (first-time setup)
```

### Design

- **One tool, one job** — each skill diagnoses exactly one problem
- **One action** — no "3 choices", just the next step
- **Science-backed, plain-spoken** — active recall, spaced repetition, ZPD — in plain Chinese/English
- **Honest about limits** — "rough estimate, not a brain scan"

### Stats

| Metric | Value |
|--------|-------|
| Skills | 7 |
| Supported agents | 4 |
| Lines of code | ~1,500 |
| Review rounds | 3 (Opus + GPT-5.5 + Qwen + 5 agents) |
| Issues fixed | 16+ |

### License

MIT

---

## 🇨🇳 中文

### 为什么需要这个

大多数人学不进一样东西，不是因为懒——是因为**卡错了环节**。

| 你遇到的 | 实际是 | 用这个 |
|---------|--------|-------|
| 打开 IDE 就想关掉 | 难度不对（恐慌区） | `try-stretch` |
| 买了 80 本书只读了 2 本 | 方法不匹配（阅读≠技能） | `try-method` |
| 学完一章全忘了 | 复习方式错了（重读≠回忆） | `try-review` |
| 有目标却不知道每天该干嘛 | 缺任务分解 | `try-task` |
| 不知道这个目标现不现实 | 缺可行性判断 | `try-plan` |
| 不知道自己卡在哪 | 缺路由器 | `try` |
| 第一次用 | 初始化配置 | `try-init` |

### 30 秒安装

```bash
# 一行命令自动安装
bash <(curl -s https://raw.githubusercontent.com/chuaitry-edu/try-skills/main/scripts/install.sh)
```

或手动复制：

| Agent | 来源 | 目标目录 |
|-------|------|---------|
| Hermes | `hermes/` | `~/.local/share/hermes/skills/` |
| Claude Code | `claude-code/*.md` | `.claude/skills/` |
| Codex | `codex/*.md` | `.agents/skills/` |
| Cursor | `cursor/*.mdc` | `.cursor/rules/` |

装完后直接说：

```
「帮我看看我的学习问题」     → try（路由器）
「这个目标要多久？」        → try-plan
「太难了/太简单了」        → try-stretch
「不知道怎么学」           → try-method
「今天做什么？」           → try-task
「学完就忘了」             → try-review
「第一次用」               → try-init
```

### 7 个工具

```
         try（总路由器）— 判断卡在哪
              │
    ┌─────────┼─────────┐
    │         │         │
 try-plan  try-stretch  try-method
（可行性）  （难度定位）  （学法匹配）
    │         │         │
    └─────────┼─────────┘
              │
          try-task（每日任务）
              │
          try-review（复习巩固）
              │
          try-init（首次配置）
```

### 设计

- **一个工具只做一件事** — 每个 skill 只诊断一个环节
- **给唯一动作** — 不给三选一，只给下一步
- **背后有认知科学，但不搬术语** — 主动回忆、间隔重复、最近发展区，都用大白话
- **承认自己不知道** — 「这是粗略估算，不是扫描你的大脑」

### 数据

| 指标 | 值 |
|------|-----|
| skill 数 | 7 |
| 支持 agent | 4 |
| 代码行数 | ~1,500 |
| 审阅轮次 | 3（Opus + GPT-5.5 + Qwen + 5 subagents） |
| 已修复问题 | 16+ |

### 作者

[@初爱try](https://github.com/chuaitry-edu)

### License

MIT
