# Calliope Thesis Project: Energy Hub Optimization for Electrified Logistics Depots

**A Calliope-based techno-economic model for evaluating PV, battery storage, and EV fleet charging under grid connection constraints**

Master's thesis research: TU Delft / Leiden University | Martin Lüneburg & Natalia Tribaldos. 

---
# 1. What this model does

This repository contains an open-source energy system model built with **Calliope** that optimizes behind-the-meter energy infrastructure for commercial logistics depots \ think warehouses or freight hubs with large rooftop areas, an electrifying vehicle fleet, and a limited grid connection.
The model jointly optimises:
- **Rooftop PV capacity** (constrained by available roof area)
- **Battery energy storage (BESS)** sizing (power and energy capacity)
- _[in the future] Smart EV fleet charging schedules (within dwell-time windows)
under binding import and export limits imposed by the existing grid connection contract._

The central research question is: **"When does upgrading the grid connection become economically justified compared to maximising local flexibility through PV and PV curtailment, storage, and smart charging?"**

# 2. Motivation 

Logistics companies across Europe are under pressure to electrify their fleets to meet EU CO2 emissions targets for heavy-duty vehicles. Many depots have large rooftop areas well-suited for solar PV, but face two simultaneous constraints:

1. **Limited grid import capacity** \ charging hundreds of kW of electric trucks strains the existing connection
2. **Limited or zero export capacity** \ excess PV generation cannot be fed into the grid, leading to curtailment

The standard solution is to upgrade the grid connection (a costly, slow, and sometimes administratively difficult process). This model evaluates whether and under what conditions local flexibility can defer or replace that upgrade.

# 3. Related Work   

This model builds on and contributes to the literature on:

- PV curtailment and distribution grid hosting capacity
- Depot-level EV fleet charging optimization
- Flexibility vs. grid reinforcement trade-offs
  
Key references: Frank et al. (2024), Nunez Munoz et al. (2023), Fatima et al. (2023), Sevilla et al. (2018).


# 4. Model Structure  

[will follow] 

# 4. Status (24.04.2026) 

\ Early-stage / work in progress

 - Basic YAML model structure (PV, BESS, grid, demand)
 - Import and export limits
 - EV fleet charging profiles (fixed not optimized)
 - Discrete transformer upgrade decision (work in progress)
 - Scenario comparison and NPV analysis

# 5. How tu run 

# 6. Install Required Software

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

# 7. Get the Project Files

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

# 8. Create the Conda Environment

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

# 9. Install the Gurobi Solver (Academic License)

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

# 10. Open the Project

## In VS Code

1. Open VS Code
2. File -> Open Folder
3. Select the project folder

## Select Python Interpreter

Press `Ctrl+Shift+P` -> **Python: Select Interpreter**

Choose:

`calliope-thesis-env`

---

# 11. Running the Model

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

# 12. Updating the Repository

## Pull latest changes

Use GitHub Desktop -> Fetch origin / Pull origin

## Save your changes

1. Commit changes in GitHub Desktop
2. Push origin
