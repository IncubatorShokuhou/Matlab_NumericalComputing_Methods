# Matlab NumericalComputation Experiments

> Class design for sophomore of SDCS, SYSU. 
> Numerical Computation Class by Qing Ling, SDCS, SYSU. 
> Author Nino Lau.

## Introduce

This project provides implementations of linearly equations solution. Methods using Gauss Elimination, Gauss Principle, Jacobi Iteration, Gauss-Seidel Iteration, Successive over-relaxation(SOR) Iteration, Conjugate Gradient Iteration. Normal distributed dataset histograms, answer plots time computations are also provided in the study report.

The project also give a powerful approach using sparse matrix data structure storing the huge data to demo Page Rank Algorithm. With this approach, you can obtain the 758888 nodes ranks in the given dataset.

## Folder Structure

.
+-- Elimination
|   +-- CreateNormalVector.m
|   +-- CreateNormalMatrix.m
|   +-- Gauss_Elim_aux.m
|   +-- Gauss_Elim.m
|   +-- Gauss_Prin_aux.m
|   +-- Gauss_Prin.m
+-- Iteration
|   +-- CreateNormalVector.m
|   +-- CreateNormalMatrix.m
|   +-- Jacobi_Iter.m
|   +-- Jacobi.m
|   +-- Gauss_Seidel_Iter.m
|   +-- Gauss_Seidel.m
|   +-- SOR_Iter.m
|   +-- SOR.m
|   +-- CG_Iter.m
|   +-- CG.m
+-- PageRank
|   +-- Get_Sparse_Matrices.m
|   +-- PageRank.m
|   +-- PageRank_Sort.m
|   +-- PageRank_Write.m
|   +-- soc-Epinions1.txt
|   +-- test.txt
|   +-- Anser.txt
+-- Documents
|   +-- Questions.pdf
|   +-- StudyReport.pdf
+-- readme.md

## Usage

### Elimination

* **CreateNormalVector.m** and **CreateNormalMatrix.m** are used to created normal distributed vector and matrix.
* **Gauss_Elim_aux.m** and **Gauss_Prin_aux.m** help to support Gauss Elimination and Gauss Principle Elimination as auxiliary functions respectively. Also they serve as module inspection.
* **Gauss_Elim.m** and **Gauss_Prin.m** using Gauss Elimination and Gauss Principle Elimination to solve the equations.

### Iteration

* **CreateNormalVector.m** and **CreateNormalMatrix.m** are used to created normal distributed vector and matrix which is diagonal optimized.
* **Jacobi_Iter.m**, **Gauss_Seidel_Iter**, **SOR_Iter.m** and **CG_Iter.m** help to support Jacobi Iteration, Gauss-Seidel Iteration, SOR Iteration and CG_Iteration as auxiliary functions respectively. Also they serve as module inspection.
* **Jacobi.m**, **Gauss_Seidel**, **SOR.m** and **CG.m** use Jacobi Iteration, Gauss-Seidel Iteration, SOR Iteration and CG_Iteration to generate the results of linearly equations.

### PageRank

* **Get_Sparse_Matrices.m** is used to get some sparse matrices which may be used later.
* **PageRank_Sort.m** helps to sort the ranks of each node in the descend order and generate scores of them by multiplying 10^5. 
* **PageRank_Write.m** helps to write the formatted results in to the **Answer.txt**.
* **PageRank.m** bundles upward three.

### Documents

* Requirements are shown in **Questions.pdf**.
* **StudyReport.pdf** contains lots of thoughts, impacts(Normal distributed dataset histograms, answer plots time computations etc.), conclusions, pseudocode and feelings from this experiments. 
* This part is written in *Chinese*.





