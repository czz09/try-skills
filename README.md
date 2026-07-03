<p align="center">
  <img src="https://img.shields.io/github/stars/chuaitry-edu/try-skills?style=for-the-badge&label=⭐%20Stars" alt="stars">
  <img src="https://img.shields.io/badge/skills-6-blue?style=for-the-badge" alt="skills">
  <img src="https://img.shields.io/github/license/chuaitry-edu/try-skills?style=for-the-badge" alt="license">
  <img src="https://img.shields.io/badge/agents-4-green?style=for-the-badge" alt="agents">
</p>

<h1 align="center">try-skills 🧪</h1>

<p align="center">
  <b>6 个 AI 学习诊断工具</b> — 卡在哪用哪个，不卡不用。
  <br>
  支持 Hermes / Claude Code / Codex / Cursor。
</p>

---

## 为什么需要这个

大多数人学不进一样东西，不是因为懒——是因为**卡错了环节**。

<table>
<tr>
<th>你遇到的</th>
<th>实际是</th>
<th>用这个</th>
</tr>
<tr>
<td>打开 IDE 就想关掉</td>
<td>难度不对（恐慌区）</td>
<td><code>try-stretch</code></td>
</tr>
<tr>
<td>买了 80 本书只读了 2 本</td>
<td>方法不匹配（阅读≠技能）</td>
<td><code>try-method</code></td>
</tr>
<tr>
<td>学完一章全忘了</td>
<td>复习方式错了（重读≠回忆）</td>
<td><code>try-review</code></td>
</tr>
<tr>
<td>有目标却不知道每天该干嘛</td>
<td>缺任务分解</td>
<td><code>try-task</code></td>
</tr>
<tr>
<td>不知道这个目标现不现实</td>
<td>缺可行性判断</td>
<td><code>try-plan</code></td>
</tr>
<tr>
<td>不知道自己卡在哪</td>
<td>缺路由器</td>
<td><code>try</code></td>
</tr>
</table>

## Quickstart（30 秒）

```bash
# 一行命令自动安装（自动检测你的 agent）
bash <(curl -s https://raw.githubusercontent.com/chuaitry-edu/try-skills/main/scripts/install.sh)
```

或手动复制到对应目录：

| Agent | 复制来源 | 目标目录 |
|-------|---------|---------|
| Hermes | `hermes/` | `~/.local/share/hermes/skills/` |
| Claude Code | `claude-code/*.md` | `.claude/skills/` |
| Codex | `codex/*.md` | `.agents/skills/` |
| Cursor | `cursor/*.mdc` | `.cursor/rules/` |

装完后直接对你的 AI 说一句话：

```
「帮我看看我的学习问题」
「这个目标要多久？」
「太难了/太简单了」
「不知道怎么学」
「今天做什么？」
「学完就忘了」
```

---

## 工具一览

```
  ┌─────────────────────────────────────────────────────┐
  │          try (总路由器)                               │
  │    用户一句话 → 判断卡在哪 → 指向子工具               │
  └─────────────────────────────────────────────────────┘
         │              │              │
         ▼              ▼              ▼
  ┌──────────┐   ┌──────────┐   ┌──────────┐
  │ try-plan  │   │try-stretch│   │try-method│
  │ 可行性检查 │   │ 拉伸区定位 │   │ 学法匹配  │
  └─────┬────┘   └─────┬────┘   └─────┬────┘
        │              │              │
        └──────────────┼──────────────┘
                       ▼
              ┌──────────────┐
              │  try-task    │
              │  每日任务分解  │
              └──────┬───────┘
                     ▼
              ┌──────────────┐
              │ try-review   │
              │ 复习巩固策略   │
              └──────────────┘
```

### try — 总路由器
不知道自己卡在哪？它问你一个问题，帮你找到入口。

### try-plan — 可行性检查
拆成最多 5 个阶段，三档估算（乐观/常规/保守），告诉你以你每天的时间这件事大概要多久。并且区分「入门」和「精通」。

### try-stretch — 拉伸区定位
舒适区（无聊）→ 拉伸区（成长）→ 恐慌区（逃避）。先定位你在哪，再决定下一步。

### try-method — 学法匹配
按知识/技能/行为/感受四类匹配学法。附带时间约束调整（30 天内先做再学）和高风险领域安全提醒。

### try-task — 每日任务分解
把大目标切成今天唯一能做的事。30-60 分钟，做完了就是推进。

### try-review — 巩固策略
主动回忆三遍法 + 间隔重复 + 行为复盘。不同学习类型不同方案。错过了窗口也告诉你怎么办。

---

## 设计

- **一个工具只做一件事** — 每个 skill 只诊断一个环节
- **给唯一动作** — 不给三选一，只给下一步
- **背后有认知科学** — 主动回忆、间隔重复、最近发展区，但不搬术语
- **承认自己不知道** — 「这是粗略估算，不是扫描你的大脑」

## 数据

| 指标 | 值 |
|------|-----|
| skill 数 | 6 |
| 支持 agent | 4 |
| 代码行数 | ~1,400 |
| 审阅轮次 | 3（Opus + GPT-5.5 + Qwen + 5 subagents） |
| 已修复问题 | 16 |

## License

MIT

## 作者

[@初爱try](https://github.com/chuaitry-edu)
