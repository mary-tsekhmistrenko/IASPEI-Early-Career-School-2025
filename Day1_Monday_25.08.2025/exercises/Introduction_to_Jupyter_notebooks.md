# IASPEI summer school 2025

## Introduction to Jupyter notebooks

**GOAL** 

Familiarise yourself with jupyter notebooks! 

Jupyter Notebooks are an interactive environment where you can combine code, text, and visuals in one document. They are widely used in data science, research, and teaching because they make it easy to explain your thinking while running code step by step.

A Jupyter Notebook has two main types of cells:

- **Code cells** → where you write and run code (Python, but also R, Julia, etc.).

- **Markdown cells** → where you write text, explanations, formulas, or even embed images.


### Starting a Jupyter Notebook

1. Open a terminal (or Anaconda Prompt if using Anaconda).

2. Navigate to the folder where your notebook files are located, for example:

        cd path/to/your/notebooks

3. You can start JupyterLab (a more advanced interface) with: 
        
        jupyter lab

4. Alternatively you can start Jupyter Notebook by running:

        jupyter notebook

5. This will open a web interface in your default browser showing the folder contents.

6. Click on a .ipynb file to open and start editing it.

### Anatomy of Jupyter Notebook

![alt text](figures/Anatomy_Jupyter.png "Anatomy of Jupyter Notebooks")

- Use Shift + Enter to run a cell and move to the next cell.
- Use Option + Enter (MAC) and Control + Enter (all others) to run a cell and stay on current cell. 

- If you’re using a virtual environment, make sure it’s activated first so the notebook sees all the installed packages.


### Exercise

- Create a new jupyter notebook 
- set the environment to "workshop" in the upper right conner
- try to run the following lines in the cells (attention there are some XXX for you to fill out):

Load an example file that comes with ObsPy:

        from obspy import read

        st = read()
        st

Show metadata:

        tr = XXX
        tr.stats

Plot a waveform:

        st.plot()

Filter the data and plot original and filtered together:

        tr_filtered = tr.copy()  
        tr_filtered.filter(XXX)

        tr.plot(color="gray", label="Original")
        tr_filtered.plot(color="red", label="Filtered")

