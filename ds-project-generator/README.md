# **ds-project-generator**

A lightweight Zsh-based generator for creating a clean, production-ready data science project structure. Automatically sets up directories, boilerplate code, configs, and deployment files for fast project initialization.

---

## **🚀 Usage**

### **1. Place the script in the repo**

Save the script as:

```
create_ds_project.zsh
```

### **2. Make it executable**

```bash
chmod +x create_ds_project.zsh
```

### **3. Run the script**

```bash
./create_ds_project.zsh <project-name>
```

**Example:**

```bash
./create_ds_project.zsh my-awesome-project
```

---

## **📁 Project Structure Generated**

```
project-name/
│
├── README.md                 # Project overview and documentation
├── LICENSE                   # License file (MIT by default)
├── .gitignore                # Files and folders to exclude from Git
├── pyproject.toml            # Modern Python package + dependency config
├── requirements.txt          # Alternative dependency file
├── Makefile                  # Common automation commands (optional)
│
├── data/                     # All project datasets
│   ├── raw/                  # Original data (never modified)
│   ├── processed/            # Cleaned/validated datasets
│   ├── interim/              # Temporary/partial outputs
│   └── external/             # Data pulled from APIs/external sources
│
├── notebooks/                # Jupyter notebooks for EDA + experiments
│   ├── 01_eda.ipynb
│   ├── 02_model_experiments.ipynb
│   └── templates/            # Notebook templates
│
├── src/                      # All production Python code
│   ├── __init__.py
│   ├── config/               # Global YAML/JSON config files
│   ├── data/                 # Data ingestion/loading/cleaning logic
│   │   ├── load_data.py
│   │   ├── transform.py
│   │   └── extract_api.py
│   ├── features/             # Feature engineering scripts
│   │   └── build_features.py
│   ├── models/               # Model training/evaluation/prediction
│   │   ├── train.py
│   │   ├── evaluate.py
│   │   └── predict.py
│   ├── pipelines/            # Full ETL/ML workflow pipelines
│   │   ├── train_pipeline.py
│   │   └── inference_pipeline.py
│   ├── utils/                # Helper utilities (logging, I/O, etc.)
│   │   ├── logger.py
│   │   └── file_utils.py
│   └── api/                  # API for model serving (FastAPI/Flask)
│       └── app.py
│
├── app/                      # Streamlit application for UI/visualization
│   ├── main.py               # Main Streamlit app entry point
│   ├── pages/                # Multi-page Streamlit pages
│   └── components/           # Reusable UI components
│
├── models/                   # Saved ML models (Pickle, ONNX, etc.)
│
├── config/                   # Config files for training + inference
│   ├── training.yaml
│   ├── inference.yaml
│   └── data_config.yaml
│
├── tests/                    # Unit tests (pytest)
│   ├── test_features.py
│   ├── test_data.py
│   └── test_models.py
│
├── scripts/                  # Automation + CLI scripts
│   ├── run_training.sh
│   ├── run_inference.sh
│   └── build_dataset.py
│
└── deployment/               # Deployment + infrastructure configs
    ├── Dockerfile            # Container definition
    ├── cloudrun.yaml         # GCP Cloud Run deployment spec
    ├── requirements_api.txt  # API-only dependencies
    └── monitoring/           # Logging/metrics scripts
        ├── metrics.py
        └── logging.py
```

---