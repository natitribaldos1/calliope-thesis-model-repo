# Calliope Thesis Project

This repository contains the energy system model built with Calliope for thesis research. Follow the steps below to set up the project on a new computer and run it independently.

---

# 1. Install Required Software

## A. Check if Anaconda Is Already Installed

Open Command Prompt or Anaconda Prompt and run:

```bash
conda --version
```

If a version number appears, Anaconda is already installed and you can skip to the next step.

## B. Install Anaconda

Download and install Anaconda:
[https://www.anaconda.com/download](https://www.anaconda.com/download)

Recommended: install with default settings.

After installation, open **Anaconda Prompt** and test:

```bash
conda --version
```

## C. Install Visual Studio Code

Download and install VS Code:
[https://code.visualstudio.com/](https://code.visualstudio.com/)

Recommended extensions:

* Python (recommended)
* YAML
* Jupyter (optional, only if using notebooks inside VS Code)
* GitHub Copilot (optional)

## D. Check if Git Is Already Installed

Open Command Prompt and run:

```bash
git --version
```

If a version number appears, Git is already installed and you can skip to the next step.

## E. Install Git

Download and install Git:
[https://git-scm.com/downloads](https://git-scm.com/downloads)

After installation, test:

```bash
git --version
```

## F. Install GitHub Desktop

Download and install GitHub Desktop:
[https://desktop.github.com/](https://desktop.github.com/)

Sign in with your GitHub account.

---

# 2. Get the Project Files

## Option A (recommended): Clone with GitHub Desktop

Make sure Git is installed first.

1. Open GitHub Desktop
2. File -> Clone Repository
3. Select this repository
4. Choose a local folder
5. Clone

## Option B: Download ZIP

Download the repository from GitHub and extract it.

---

# 3. Create the Conda Environment

Open **Anaconda Prompt** inside the project folder and run:

```bash
conda env create -f environment.yml
```

Activate the environment:

```bash
conda activate calliope-thesis-env
```

Test installation:

```bash
python -c "import calliope; print(calliope.__version__)"
```

---

# 4. Install the Gurobi Solver (Academic License)

1. Create an academic account at [https://www.gurobi.com/academia/](https://www.gurobi.com/academia/)
2. Request a free academic license using your university email.
3. Download and install Gurobi Optimizer.
4. Open **Anaconda Prompt** with the Calliope environment activated.
5. Install the Python package in **Anaconda Prompt** (run this exact command):

```bash
conda install -c gurobi gurobi
```

If that does not work, you can also try:

```bash
pip install gurobipy
```

Then activate your license as instructed by Gurobi.

6. Verify installation:

```bash
python -c "import gurobipy as gp; print(gp.gurobi.version())"
```

---

# 5. Open the Project

## In VS Code

1. Open VS Code
2. File -> Open Folder
3. Select the project folder

## Select Python Interpreter

Press `Ctrl+Shift+P` -> **Python: Select Interpreter**

Choose:

`calliope-thesis-env`

---

# 6. Running the Model

Typical workflow:

1. Activate environment

```bash
conda activate calliope-thesis-env
```

2. Start Jupyter

```bash
jupyter notebook
```

3. Open notebook in `/notebooks/`

4. Run model from notebook or script.

Example Python:

```python
import calliope
model = calliope.Model('model.yaml')
model.build()
model.solve()
results = model.results
```

---

# 7. Updating the Repository

## Pull latest changes

Use GitHub Desktop -> Fetch origin / Pull origin

## Save your changes

1. Commit changes in GitHub Desktop
2. Push origin
