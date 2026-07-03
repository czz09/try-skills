当你在这个仓库工作时：

## 目录结构

```
hermes/           ← 主版本（Hermes Agent 格式）
claude-code/      ← Claude Code 格式（.md）
codex/            ← Codex CLI 格式（.md）
cursor/           ← Cursor 格式（.mdc）
evals/            ← 验证测试（trigger + task prompts）
template/         ← 新 skill 模板
学习知识库/       ← 方法论文档（独立可读）
scripts/          ← 安装脚本
```

## 改一个 skill 时

1. 先改 `hermes/<skill-name>/SKILL.md`
2. 同步到其他 3 个格式目录（`claude-code/`、`codex/`、`cursor/`）
3. 更新 `evals/` 里的测试用例
4. 更新 `CHANGELOG.md`
