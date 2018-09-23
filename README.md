# Matlab Numerical Computing Experiments

> **Class design** for sophomore of SDCS, SYSU. 
> 
> **Numerical Computation** Class by Qing Ling, SDCS, SYSU. 
> 
> **Author** Nino Lau.


README: [English](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md) | [中文](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README_zh.md)

* [Matlab Numerical Computing Experiments]()
      * [Introduce](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#introduce)
      * [Usage](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#usage)
         * [Elimination](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#elimination)
         * [Iteration](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#iteration)
         * [PageRank](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#pagerank)
         * [Interpolation](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#interpolation)
         * [SqrRoot](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#sqrroot)
         * [LSM](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#lsm)
         * [FFT](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#fft)
         * [IntegralCal](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#integralcal)
         * [DiffEquation](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#diffequation)
         * [Documents](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#documents)
      * [Copyright &amp; Lisence](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#copyright--lisence)
      * [Thanks](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md#thanks)


## Introduce

This project provides implementations of some classic numerical computing problems. 

Methods using [Elimination](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/Elimination) and [Iteration](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/Iteration) are facilitated to solve linearly equations. With normal distributed dataset histograms, the answers are more convincing and universally appropriate. 

The project also give a powerful approach using sparse matrix data structure storing the huge data to [demo Page Rank Algorithm](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/PageRank). With this approach, you can obtain the **758888 nodes ranks** in the given dataset.

As your wish, some interpolations are constructed in detail using Lagrange [interpolation](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/Interpolation) (also we can construct Newton interpolation seemly). 

When refers to the non-linearly equation, [Newton method and its alternations](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/SqrtRoot) show their amazing effect on this puzzle. 

[Least Square Method](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/LSM) treats overdetermined linear equations as a fitting problem.

I just use a API to complete [Fast Fourier Transform](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/FFT) and plan to implement it in the future.

When solving some integration, common ways like trying to find the original functions of the integration are not mature enough. Here I use some [numerical integration](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/IntegralCal) ways, e.g. Newton Cotes & Compound Integration, to estimate the value.

Finally, initial value problem of ordinary differential equations is solved by [Euler method and its alternation](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/DiffEquation).


## Usage

### Elimination

* **CreateNormalVector.m** and **CreateNormalMatrix.m** are used to created normal distributed vector and matrix.
* **Gauss_Elim_aux.m** and **Gauss_Prin_aux.m** help to support Gauss Elimination and Gauss Principle Elimination as auxiliary functions respectively. Also they serve as module inspection.
* **Gauss_Elim.m** and **Gauss_Prin.m** using Gauss Elimination and Gauss Principle Elimination to solve the equations.

### Iteration

* **CreateNormalVector.m** and **CreateNormalMatrix.m** are used to created normal distributed vector and matrix which is diagonal optimized.
* **Jacobi_Iter.m**, **Gauss_Seidel_Iter.m**, **SOR_Iter.m** and **CG_Iter.m** help to support Jacobi Iteration, Gauss-Seidel Iteration, SOR Iteration and CG_Iteration as auxiliary functions respectively. Also they serve as module inspection.
* **Jacobi.m**, **Gauss_Seidel.m**, **SOR.m** and **CG.m** use Jacobi Iteration, Gauss-Seidel Iteration, SOR Iteration and CG_Iteration to generate the results of linearly equations.

### PageRank

* **Get_Sparse_Matrices.m** is used to get some sparse matrices which may be used later.
* **PageRank_Sort.m** helps to sort the ranks of each node in the descend order and generate scores of them by multiplying 10^5. 
* **PageRank_Write.m** helps to write the formatted results in to the **Answer.txt**.
* **PageRank.m** bundles upward three.

### Interpolation

* **Linear.m**, **Quadratic.m** and **Cubic.m** help to support Lagrange Interpolation.
* **Interpolation.m** uses API of Matlab, compare the results of our calculation and the API results.

### SqrRoot

* In this folder, ways trying to find the estimated value of non-linear problem are listed.
* **Dichotomy.m**, using dichotomy method, find the approximated square root of target number.
* **Newton.m** serves as a basement, iterating zero points to coming closer to the target.
* **NewtonPro.m** saves time of finding the derivative of all zero points and **Secant.m** helps to accurate using multi-step method.

### LSM

* As a part of fitting problems, LSM ideas are made fully use in evaluating the overdetermined equations.
* **CreateNormalVector.m** and **CreateNormalMatrix.m** are used to created normal distributed vector and matrix.
* **Func.m** creates the function later input.
* **Proof.m** facilitates fact that, when *A'Ax=A'b*, x is a LSM solution.
* **LSM_Iter.m** and **LSM.m** finally get the answer.
* The answer may not be accurate for it can be deeply determined by the initial value. To overcome this situation, you can created a matrix whose row number is greatly larger than the column row. Then the iteration will be more convincing. 
* Also, some interesting plots such as ans plots and err plots can be obtained in this part.

### FFT

* I just use a API to complete FFT in **FFT.m**, which uses fft() to solve signal processing puzzle. 
* And I plan to implement it in a more detailed manner in the near future.

### IntegralCal

* When solving some integration, common ways like trying to find the original functions of the integration are not mature enough. Here I use some numerical integration ways, e.g. Newton Cotes & Compound Integration, to estimate the value.
* **CSPS.m** uses Compound Simpson Methods to deal with integral calculation and **CTF** uses Compound Trapezoidal Formula.
* You are able to find some differences between these two methods in [Newtown-Cotes formula](https://en.wikipedia.org/wiki/Newton–Cotes_formulas).

### DiffEquation

* In this folder, I implement some ways to solve initial problem of ordinary differential equations, mostly Euler and its alternation. **Eular.m**, **BackwardEular.m**, **EularPro.m** and **LadderShape.m** support **Comparison.m** to get the plot of iteration.
* **Comparison.m** show the comparison in a elegant manner by plotting the results and relative errors.

### Documents

* Requirements are shown in **NC1Q.pdf** and **NC2Q.pdf**.
* Reference material -- **materialNC.pdf**.
* **NC1A.pdf** and **NC2A.pdf** contain lots of thoughts, impacts(Normal distributed dataset histograms, answer plots time computations etc.), conclusions, pseudocode and feelings from this experiments. 
* This part is written in *Chinese*.


## Copyright & Lisence

[GPL lisence](http://www.gnu.org/licenses/gpl.html)

[Mozilla lisence](https://www.mozilla.org/en-US/MPL/)

Copyright © Nino 2018.


## Thanks

Thanks to my teachers and families, I can accomplish my work smoothly and efficiently.




