#!/usr/bin/env bash
# init_tof_peal.sh - Initialize Tree of Life Bell Peal Project

set -e

PROJECT_NAME="tof_bell_peal"

echo "🔔 Initializing $PROJECT_NAME..."

# -----------------------------------------------------------------------------
# 1. Generate .gitignore
# -----------------------------------------------------------------------------
conf_print_gitignore() {
  cat <<-'EOF'
		# Python Artifacts
		__pycache__/
		*.py[cod]
		*$py.class
		*.so
		.Python
		build/
		develop-eggs/
		dist/
		downloads/
		eggs/
		.eggs/
		lib/
		lib64/
		parts/
		sdist/
		var/
		wheels/
		share/python-wheels/
		*.egg-info/
		.installed.cfg
		*.egg
		MANIFEST

		# Virtual Environments & Package Managers
		.venv/
		env/
		venv/
		ENV/
		env.bak/
		venv.bak/
		.uv/

		# Mise Local Environment
		.mise/
		.mise.toml

		# IDEs and Editors
		.vscode/
		.idea/
		*.swp
		*.swo
		.DS_Store

		# Logs, Testing, and Audio Artifacts
		*.log
		logs/
		htmlcov/
		.tox/
		.nox/
		.coverage
		.coverage.*
		.cache
		nosetests.xml
		coverage.xml
		*.cover
		*.py,cover
		.hypothesis/
		.pytest_cache/
		.ruff_cache/
		
		# Generated Audio Files (Large binaries)
		*.wav
		*.mp3
		*.flac
		bell_segments/
		audio_output/
	EOF
}
conf_print_gitignore | tee .gitignore

# -----------------------------------------------------------------------------
# 2. Generate .dockerignore
# -----------------------------------------------------------------------------
conf_print_dockerignore() {
  cat <<-'EOF'
		# Version Control
		.git
		.gitignore

		# Virtual Environments (Docker builds fresh)
		.venv/
		env/
		venv/
		.uv/

		# Mise
		.mise/
		.mise.toml

		# Python Cache & Build
		__pycache__/
		*.py[cod]
		*.so
		build/
		dist/
		*.egg-info/

		# IDEs & OS
		.vscode/
		.idea/
		.DS_Store

		# Audio Artifacts (Mount as volume instead)
		*.wav
		bell_segments/
		audio_output/
		
		# Docs & Logs
		docs/
		*.log
	EOF
}
conf_print_dockerignore | tee .dockerignore

# -----------------------------------------------------------------------------
# 3. Generate mise.toml
# -----------------------------------------------------------------------------
conf_print_mise_toml() {
  cat <<-'EOF'
		[tools]
		python = "3.12"
		uv = "latest"
		# Optional: Install sox system-wide via mise if available, otherwise use apt/dnf
		# sox = "latest" 

		[settings]
		python.uv_venv_auto = "create|source"
	EOF
}
conf_print_mise_toml | tee mise.toml

# -----------------------------------------------------------------------------
# 4. Initialize Environment and Dependencies
# -----------------------------------------------------------------------------
echo "🔒 Trusting mise configuration..."
mise trust

echo "📦 Installing tools (Python, uv)..."
mise install

echo "🚀 Initializing UV project..."
uv init --app --name "$PROJECT_NAME"

echo "🧩 Installing Python dependencies..."
uv add numpy sounddevice

# ⚠️ CRITICAL: ringing-lib is a C++ extension.
# It requires a C++ compiler and Python headers to build from source.
echo "🔨 Installing ringing-lib (requires build tools)..."
uv add ringing-lib

echo "✅ Project initialized!"
echo ""
echo "⚠️  IMPORTANT: Build Requirements"
echo "If 'uv add ringing-lib' fails, you must install system build tools first:"
echo "  Debian/Ubuntu: sudo apt install build-essential python3-dev"
echo "  Fedora:        sudo dnf install gcc gcc-c++ python3-devel"
echo "  Arch:          sudo pacman -S base-devel python"
echo ""
echo "Then re-run: uv add ringing-lib"
