# Matlab Numerical Computing Experiments

> 项目：数值计算课程设计 
> 
> 授课老师：凌青
> 
> 作者：Nino Lau


README: [English](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README.md) | [中文](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/blob/master/README_zh.md)


## 简介

这个项目提供了一些经典数值计算问题的实现：

* 项目采用[消元法](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/Elimination)和[迭代法](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/Iteration)求解线性方程组。使用正态分布数据集直方图，使结论更有说服力和普遍适用性。
* 同时该项目还提供了一种利用稀疏矩阵数据结构存储海量数据的强大方法，来演示[PageRank算法](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/PageRank)。使用这种方法，您可以获得给定数据集中的**758888个节点**的rank。
* 一些插值是用[拉格朗日插值](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/PageRank)（当然我们也可以构造牛顿插值）来构造差值。
* 在非线性方程问题的求解时，我们采用[牛顿法及其变换](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/SqrtRoot)，经过实验，该方法显示出良好的效果。
* 在[最小二乘算法LSM](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/LSM)中，我们将超定线性方程视为拟合问题。
* 很不幸，囿于当前只是水平和时间有限，我只用一个API来完成[快速傅里叶变换FFT](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/FFT)并计划在将来实现它。
* 在解决一些积分问题时，常见的方法————如试图找到积分的原始函数，还不够成熟。在这里，我使用一些[数值积分](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/IntegralCal)的方法，如[牛顿柯特和复合积分](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/IntegralCal)，来估计数值。
* 最后，用[欧拉法](https://github.com/LovelyBuggies/Matlab_NumericalComputing_Experiments/tree/master/DiffEquation)求解常微分方程初值问题，并进行了变换。


## 使用说明

### 消去法

* **CreateNormalVector.m** 和 **CreateNormalMatrix.m** 被用来构造正态独立同分布的矩阵和向量。
*  **Gauss_Elim_aux.m** 和 **Gauss_Prin_aux.m** 用作高斯消去法和列主元消去法的辅助函数，同时也作为单元检测。
* **Gauss_Elim.m** 和 **Gauss_Prin.m** 利用高斯消去法和列主元消去法来解决线性方程的求解。

### 迭代法

* **CreateNormalVector.m** 和 **CreateNormalMatrix.m** 被用来构造正态独立同分布的矩阵和向量。*值得注意的是，不同于之前的创建，这个正态矩阵是对角占优的。*
* **Jacobi_Iter.m**、**Gauss_Seidel_Iter.m**、**SOR_Iter.m** 和 **CG_Iter.m** 用于帮助支持Jacobi迭代，Gauss-Seidel迭代，SOR迭代和CG_Iteration作为辅助函数。它们还充当单元检查。
* **Jacobi.m**、**Gauss_Seidel.m**、**SOR.m** 和 **CG.m** 使用Jacobi迭代、高斯-塞德尔迭代、SOR迭代和CG_Iteration迭代生成线性方程的结果。

### PageRank算法

* **Get_Sparse_Matrices.m** 创建了一些之后会用到的稀疏矩阵。
* **PageRank_Sort.m** 用于帮助每个节点的rank进行排序（rank递减的顺序），并根据rank的值，生成score值，score是rank值乘以10的5次方。
* **PageRank_Write.m** 把结果写进 **Answer.txt**。
* **PageRank.m** 整合了以上三者，使之成为一个可以运行的程序。

### 插值法

* **Linear.m**、**Quadratic.m** 和 **Cubic.m** 分别用于用于支持一次、二次、三次的拉格朗日插值法。
* **Interpolation.m** 利用Matlab提供的 API，将其结果与上述三者得到的结果进行对比。

### 非线性方程值的求解

* 在此文件夹中，列出了寻找非线性问题估计值的方法。
* **Dichotomy.m** 用二分法求出目标数的近似平方根。
* **Newton.m** 作为基础，迭代0点以接近目标。
* **NewtonPro.m** 节省了用于求偏导数的时间
* **Secant.m** 用多步法使结果更加准确。

### 最小二乘法 LSM

* 作为拟合问题的一部分，LSM充分利用迭代思想来评价超定方程。
* **CreateNormalVector.m** 和 **CreateNormalMatrix.m** 被用来构造正态独立同分布的矩阵和向量。
* **Func.m** 用于构造之后会输入的函数。
* **Proof.m** 基于“如果 *A'Ax=A'b* 时 x 是一个最小二乘解”这一事实，找到最小二乘解。
* **LSM_Iter.m** 和 **LSM.m** 得到了最终的结果。
* 答案可能不准确，因为它可以由初始值决定。为了克服这种情况，您可以创建一个行数远远大于列数的矩阵，使迭代结果将更令人信服。
* 此外，在这一部分还可以得到一些有趣的图，如ans图和err图。

### 快速傅立叶变换 FFT

* 在此项目周，我仅仅利用了Matlab提供的API函数。 **FFT.m** 用了fft()方法求解。
* 我计划在不久的将来以更详细的方式实施它。

### 数值积分计算

* 在解决一些积分问题时，常见的方法，如试图找到积分的原始函数，还不够成熟。在这里，我使用一些数值积分的方法，如牛顿柯特和复合积分，来估计数值。
* **CSPS.m** 利用了复合辛普森方法。
*  **CTF** 利用了复合梯形法。
*  梯形法和辛普森法的区别可以详细参考[牛顿——柯特斯公式](https://en.wikipedia.org/wiki/Newton–Cotes_formulas)。

### 数值微分方程

* 在这个文件夹中，我实现了一些求解常微分方程初始问题的方法，主要是欧拉及其变换。 **Eular.m**、**BackwardEular.m**、**EularPro.m** 和 **LadderShape.m** 支持 **Comparison.m** 得到迭代图。
* **Comparison.m** 以一种优雅的方法对结果图和相对误差对进行了展现。
 
### 文档

* 课程设计要求详见 **NC1Q.pdf** 和 **NC2Q.pdf**.
* 参考教材——**materialNC.pdf**.
* **NC1A.pdf** 和 **NC2A.pdf** 包含大量的想法、效果（正态分布数据集直方图、作答图时间计算等）、结论、伪代码和实验感受。


## 版权和证书

[GPL lisence](http://www.gnu.org/licenses/gpl.html)

[Mozilla lisence](https://www.mozilla.org/en-US/MPL/)

Copyright © Nino 2018.


## 鸣谢

感谢家人和老师对我学业和工作的支持和指导，使我能够顺利地完成这个项目。





