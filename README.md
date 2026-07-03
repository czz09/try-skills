<p align="center">
  <img src="https://img.shields.io/github/stars/chuaitry-edu/try-skills?style=for-the-badge&label=⭐%20Stars" alt="stars">
  <img src="https://img.shields.io/badge/skills-6-blue?style=for-the-badge" alt="skills">
</p>

# try-skills 🧪

> 一套帮你「学得进去」的 AI 学习工具。不是学习方法课，是 6 个可以直接用的诊断工具。

## 为什么需要这个

大多数人学不进一样东西，不是因为懒——是因为**卡在了错误的环节**。

你打开 IDE 就想关掉 → 不是方法问题，是**难度不对**（恐慌区）。  
你买了 80 本书只读了 2 本 → 不是意志力问题，是**方法不匹配**（阅读≠技能）。  
你学完了发现全忘了 → 不是记性差，是**复习方式错了**（重读≠回忆）。

这套 skill 把「学习」这件事拆成 6 个环节，每个环节一个工具。卡在哪就用哪个。

## Quickstart（30 秒安装）

### Hermes Agent
```bash
# 把 hermes/ 下的目录复制到你的 skills 目录即可
cp -r hermes/try-* ~/AppData/Local/hermes/skills/
```

### Claude Code
```bash
# 把 claude-code/ 下的 .md 文件放入 .claude/skills/
cp claude-code/try-*.md .claude/skills/
```

### Codex CLI
```bash
cp codex/try-*.md .agents/skills/
```

### Cursor
```bash
cp cursor/try-*.mdc .cursor/rules/
```

装完后，直接对你的 AI 说一句话就能用：

```
「我想学 Python，但不知道每天该做什么」 → AI 调用 try-task
「学完就忘了怎么办」                    → AI 调用 try-review
「这个目标要多久？」                   → AI 调用 try-plan
「太难了/太简单了」                    → AI 调用 try-stretch
「不知道怎么学」                      → AI 调用 try-method
「帮我看看我的问题出在哪」             → AI 调用 try（总路由器）
```

## 6 个工具

```
  卡在入口             试试这个
  ──────────          ────────
  目标太大，不知道从哪下手    → try-plan   可行性检查
  太难/太简单/找到不状态     → try-stretch 拉伸区定位
  不知道该用什么方法学       → try-method  学法匹配
  知道方法但不知道今天做什么  → try-task    每日分解
  学完就忘                 → try-review  巩固策略
  不知道自己卡在哪           → try         总路由器
```

### try-plan 可行性检查
你不是不会规划——是没人告诉你「这个目标现不现实」。  
try-plan 帮你拆成最多 5 个阶段，用三档估算告诉你：以你每天的时间，这件事大概要多久。

### try-stretch 拉伸区定位
学不进可能是因为**难度不对**——不是内容的问题。  
舒适区 = 无聊，拉伸区 = 成长，恐慌区 = 逃避。先定位你在哪，再决定下一步。

### try-method 学法匹配
用读理论书的方法学编程？用看视频的方法学哲学？**方法错了，再努力也没用。**  
按知识/技能/行为/感受四类匹配最适合的学法。

### try-task 每日分解
知道该学什么，但不知道今天做什么？  
try-task 把大目标切到今天唯一能做的**一件事**。30-60 分钟，做完了就是推进。

### try-review 巩固策略
学完就忘是正常的——问题是你的复习方式是重读，不是回忆。  
主动回忆三遍法 + 间隔重复 + 行为复盘，给不同学习类型不同的巩固方案。

### try 总路由器
不知道自己卡在哪？总路由器问你一个问题，帮你判断该用哪个工具。

## 设计哲学

- **一个工具只做一件事** — 每个 skill 只诊断一个环节的问题
- **给唯一动作** — 不给三选一，只给下一步
- **背后有认知科学，但不搬术语** — 主动回忆、间隔重复、最近发展区，都用大白话
- **承认自己不知道** — 「这是粗略估算，不是扫描你的大脑」

## 作者

[@初爱try](https://github.com/chuaitry-edu)，一个 25 岁的内容创作者，用第一人称实验研究学习行为。  
这些工具是为自己的创作体系做的，公开出来给需要的人。

> 零赞零藏，太阳也会照常升起。

## License

MIT
