# EITA10 Electronics course at LU/EIT

This repository contains examples, notebooks, software etc for the EITA10 Electronics course at LU/EIT

Upstream is [github:PalePrime/eita10](https://github.com/PalePrime/eita10). This is a fork to easily allow installation with [nix](https://nixos.org/).

## "Installation" with nix

Clone this repository with

```
git clone https://github.com/ManneG/eita10.git
```

and run it with `nix-shell`, or more explicitly `nix-shell shell.nix`. It will run a shellHook that starts jupyter.

## Notebook server start

Start the notebook server using the command:

```
nix-shell
```

The notebook server should start and will write log messages in the shell/command window. It will display a URL to access the server (only localhost access by default), and normally it also automatically opens a tab in your web browser.

*The text below is unmodified from upstream, and nix should make sure installation is successful*

## Check that it works

Use the file panel on the web UI to open

 > notebooks/lcapy_first.ipynb
 
Run one code section at a time (shortcut is shift+enter). The first section should silently return after a few seconds. Subsequent sections should display:

1. A simple schematic diagram

2. An equation for the voltage across the capacitor as a function of time

3. A plot illustrating the voltage for 0<t<30 ms

## Links to documentation

We will use Python mostly for scripting and calling library code, you may want to check out https://www.w3schools.com/python/default.asp as an introduction.

For general documentation for notebooks look at https://jupyter.org/ and its Python kernel (engine) at https://ipython.org/

The Lcapy package provides really powerful tools for mathematical modelling of electronic circuits see https://lcapy.readthedocs.io/en/latest/index.html

Two Python packages provide the underlying mathematical foundations for Lcapy, Numpy https://numpy.org/doc/stable/index.html for numerical computation and SymPy https://www.sympy.org/en/index.html for symbolic math.

For plotting we rely on Matplotlib https://matplotlib.org/stable/index.html#

In general Google is your friend, prefer answers from sites like https://stackoverflow.com/

Don't spend too much time on this, you will pick up most of what is needed through examples. Just keep in mind that the links are here for reference.

## Suggestions, issues, etc

Please use the Q&A section on the course Canvas page as the main means of reporting problems, suggesting improvements, helping each other out with tips and tricks etc.
