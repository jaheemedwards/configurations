#!/bin/zsh

# ===== CONFIG =====
PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
  echo "❌ Usage: ./create_ds_project.zsh <project-name>"
  exit 1
fi

echo "🚀 Creating Data Science project: $PROJECT_NAME"

# ===== DIRECTORIES =====
dirs=(
  "$PROJECT_NAME/data/raw"
  "$PROJECT_NAME/data/processed"
  "$PROJECT_NAME/data/interim"
  "$PROJECT_NAME/data/external"

  "$PROJECT_NAME/notebooks"
  "$PROJECT_NAME/notebooks/templates"

  "$PROJECT_NAME/src/config"
  "$PROJECT_NAME/src/data"
  "$PROJECT_NAME/src/features"
  "$PROJECT_NAME/src/models"
  "$PROJECT_NAME/src/pipelines"
  "$PROJECT_NAME/src/utils"
  "$PROJECT_NAME/src/api"

  "$PROJECT_NAME/app"
  "$PROJECT_NAME/app/pages"
  "$PROJECT_NAME/app/components"

  "$PROJECT_NAME/models"

  "$PROJECT_NAME/config"

  "$PROJECT_NAME/tests"

  "$PROJECT_NAME/scripts"

  "$PROJECT_NAME/deployment/monitoring"
)

echo "📁 Creating directories..."
for d in $dirs; do
  mkdir -p "$d"
done

# ===== ROOT FILES =====
touch "$PROJECT_NAME/README.md"
touch "$PROJECT_NAME/LICENSE"
touch "$PROJECT_NAME/.gitignore"
touch "$PROJECT_NAME/pyproject.toml"
touch "$PROJECT_NAME/requirements.txt"
touch "$PROJECT_NAME/Makefile"

# ===== NOTEBOOK FILES =====
touch "$PROJECT_NAME/notebooks/01_eda.ipynb"
touch "$PROJECT_NAME/notebooks/02_model_experiments.ipynb"

# ===== SRC FILES =====
touch "$PROJECT_NAME/src/__init__.py"

# config
touch "$PROJECT_NAME/src/config/__init__.py"

# data
touch "$PROJECT_NAME/src/data/load_data.py"
touch "$PROJECT_NAME/src/data/transform.py"
touch "$PROJECT_NAME/src/data/extract_api.py"

# features
touch "$PROJECT_NAME/src/features/build_features.py"

# models
touch "$PROJECT_NAME/src/models/train.py"
touch "$PROJECT_NAME/src/models/evaluate.py"
touch "$PROJECT_NAME/src/models/predict.py"

# pipelines
touch "$PROJECT_NAME/src/pipelines/train_pipeline.py"
touch "$PROJECT_NAME/src/pipelines/inference_pipeline.py"

# utils
touch "$PROJECT_NAME/src/utils/logger.py"
touch "$PROJECT_NAME/src/utils/file_utils.py"

# api
touch "$PROJECT_NAME/src/api/app.py"

# ===== STREAMLIT APP =====
touch "$PROJECT_NAME/app/main.py"

# ===== CONFIG FILES =====
touch "$PROJECT_NAME/config/training.yaml"
touch "$PROJECT_NAME/config/inference.yaml"
touch "$PROJECT_NAME/config/data_config.yaml"

# ===== TEST FILES =====
touch "$PROJECT_NAME/tests/test_features.py"
touch "$PROJECT_NAME/tests/test_data.py"
touch "$PROJECT_NAME/tests/test_models.py"

# ===== SCRIPT FILES =====
touch "$PROJECT_NAME/scripts/run_training.sh"
touch "$PROJECT_NAME/scripts/run_inference.sh"
touch "$PROJECT_NAME/scripts/build_dataset.py"

# ===== DEPLOYMENT FILES =====
touch "$PROJECT_NAME/deployment/Dockerfile"
touch "$PROJECT_NAME/deployment/cloudrun.yaml"
touch "$PROJECT_NAME/deployment/requirements_api.txt"
touch "$PROJECT_NAME/deployment/monitoring/metrics.py"
touch "$PROJECT_NAME/deployment/monitoring/logging.py"

echo "✅ Project structure created successfully!"
echo "📦 Location: $PROJECT_NAME"
