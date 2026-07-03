#!/usr/bin/env bash
# try-skills 一键安装脚本
# 用法: bash <(curl -s https://raw.githubusercontent.com/chuaitry-edu/try-skills/main/scripts/install.sh)

set -e

echo "🧪 try-skills 安装脚本"
echo "======================"

# 检测 agent 类型
detect_agent() {
  if [ -d "$HOME/.claude/skills" ]; then
    echo "claude-code"
  elif [ -d "$HOME/.agents/skills" ]; then
    echo "codex"
  elif [ -d "$HOME/.cursor/rules" ]; then
    echo "cursor"
  elif [ -d "$HOME/AppData/Local/hermes/skills" ]; then
    echo "hermes"
  else
    echo "unknown"
  fi
}

AGENT=$(detect_agent)
echo "检测到: $AGENT"

case "$AGENT" in
  "hermes")
    DEST="$HOME/AppData/Local/hermes/skills"
    for s in try try-plan try-stretch try-method try-task try-review; do
      cp -r "hermes/$s" "$DEST/"
      echo "  ✅ $s"
    done
    ;;
  "claude-code")
    DEST="$HOME/.claude/skills"
    mkdir -p "$DEST"
    for s in try try-plan try-stretch try-method try-task try-review; do
      cp "claude-code/$s.md" "$DEST/"
      echo "  ✅ $s"
    done
    ;;
  "codex")
    DEST="$HOME/.agents/skills"
    mkdir -p "$DEST"
    for s in try try-plan try-stretch try-method try-task try-review; do
      cp "codex/$s.md" "$DEST/"
      echo "  ✅ $s"
    done
    ;;
  "cursor")
    DEST="$HOME/.cursor/rules"
    mkdir -p "$DEST"
    for s in try try-plan try-stretch try-method try-task try-review; do
      cp "cursor/$s.mdc" "$DEST/"
      echo "  ✅ $s"
    done
    ;;
  *)
    echo "❌ 未检测到已知的 agent 目录"
    echo "请手动安装: https://github.com/chuaitry-edu/try-skills"
    exit 1
    ;;
esac

echo ""
echo "🎉 安装完成！现在你可以对你的 AI 说："
echo "  「帮我看看我的学习问题」→ try 路由器"
echo "  「这个目标要多久」→ try-plan"
echo "  「太难了/太简单了」→ try-stretch"
echo "  「不知道怎么学」→ try-method"
echo "  「今天做什么」→ try-task"
echo "  「学完就忘了」→ try-review"
