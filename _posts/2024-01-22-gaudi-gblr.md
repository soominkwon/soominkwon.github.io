---
layout: academic-project 
title: "Gaudi-GBLR: Differentiable, and Generalized Block Low-Rank Matrix Format for Efficient DNNs"
description: A project page for the Gaudi-GBLR paper.
date: 2024-01-22

authors:
  - name: Changwoo Lee
    url: "https://changwoolee.github.io/"
  - name: Hun-Seok Kim 
    url: "https://kim.engin.umich.edu"

affiliation: University of Michigan 
conference: ICLR 2024
bibliography: 2018-12-22-distill.bib

paper:
  show: true
  link: https://arxiv.org/pdf/2310.18882.pdf
supp:
  show: false
  link: null
code:
  show: false
  link: null
arxiv:
  show: true
  link: https://arxiv.org/abs/2310.18882 

abstract: 
  show: false
  content: This paper investigates efficient deep neural networks (DNNs) to replace dense unstructured weight matrices with structured ones that possess desired properties. The challenge arises because the optimal weight matrix structure in popular neural network models is obscure in most cases and may vary from layer to layer even in the same network. Prior structured matrices proposed for efficient DNNs were mostly hand-crafted without a generalized framework to systematically learn them. To address this issue, we propose a generalized and differentiable framework to learn efficient structures of weight matrices by gradient descent. We first define a new class of structured matrices that covers a wide range of structured matrices in the literature by adjusting the structural parameters. Then, the frequency-domain differentiable parameterization scheme based on the Gaussian-Dirichlet kernel is adopted to learn the structural parameters by proximal gradient descent. Finally, we introduce an effective initialization method for the proposed scheme. Our method learns efficient DNNs with structured matrices, achieving lower complexity and/or higher performance than prior approaches that employ low-rank, block-sparse, or block-low-rank matrices.


poster:
  show: false
  link: null

# Optionally, you can add a table of contents to your post.
# NOTES:
#   - make sure that TOC names match the actual section names
#     for hyperlinks within the post to work correctly.
#   - we may want to automate TOC generation in the future using
#     jekyll-toc plugin (https://github.com/toshimaru/jekyll-toc).
toc:
  - name: Equations
    # if a section has subsections, you can add them as follows:
    # subsections:
    #   - name: Example Child Subsection 1
    #   - name: Example Child Subsection 2
  - name: Citations
  - name: Footnotes
  - name: Code Blocks
  - name: Layouts
  - name: Other Typography?

# Below is an example of injecting additional post-specific styles.
# If you use this post as a template, delete this _styles block.
_styles: >
  .fake-img {
    background: #bbb;
    border: 1px solid rgba(0, 0, 0, 0.1);
    box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 12px;
  }
  .fake-img p {
    font-family: monospace;
    color: white;
    text-align: left;
    margin: 12px 0;
    text-align: center;
    font-size: 16px;
  }

---







## Introduction

Deep Neural Networks (DNNs) are getting bigger and bigger. A way to reduce the complexity of the DNNs is to use the *structured* weight matrices, like Low-Rank or Sparse matrices. 

This work introduces a **Gaudi-GBLR** matrix, which is a (G)eneralized (B)lock (L)ow-(R)ank Matrix with (Gau)ssian-(Di)richlet Function. 

* *Expressiveness.*  **Gaudi-GBLR** includes other structured matrices such as Low-Rank, Block-Low-Rank, and Block-Sparse matrices.
* *Differentiability.* The structure of the **Gaudi-GBLR** is **differentiable**! The efficient structure of the weight matrix is learned from data. So the efficient DNN can be learned from scratch!
* *Layer-wise Optimization.* The structure (and the complexity) is optimized in a layer-wise manner. The less important, the less complexity.



### Generalized Block Low-Rank (GBLR) Matrix

A **GBLR** matrix is a generalized version of the Block Low-Rank (BLR) matrix. Unlike the BLR structure, a **GBLR** matrix is composed of multiple overlapping low-rank blocks. 
Notably, the **GBLR** structure includes multiple important efficient matrix structures. 
In our [paper](https://openreview.net/forum?id=pAVJKp3Dvn), we analyzed that the **GBLR** format contains *Low-Rank, Block-Sparse, Block-Low-Rank* matrices of the same complexity for the matrix-vector product.

<div align="center">

<img src="https://changwoolee.github.io/assets/img/projects/gaudi-gblr/block_matrices.drawio.webp" alt="gblr" width="400"/>

</div>

The key idea is to learn the location and the area of each block from data.
Once they are found, the matrix-vector product can be done faster on the specialized hardware. We left demonstrating the actual speedup as future work.

<div align="center">

<img src="https://changwoolee.github.io/assets/img/projects/gaudi-gblr/GBLR-detailed.webp" alt="gblr-detailed" width="800"/>

</div>



### Gaussian-Dirichlet (Gaudi) Function for Differentiability

Unfortunately, optimizing the structural (location and area) parameters of the GBLR matrix is not easy. The parameters are defined in the discrete space, and non-differentiable.

Here, we circumvent the problem by defining the structural parameter in the *frequency* domain. 
The location and the width and height of the low-rank block appear **explicitly** and **differentiably** in the form of the **[Dirichlet](https://en.wikipedia.org/wiki/Dirichlet_kernel)** function, which is the DFT pair of the Boxcar function.
By taking a Gaussian filter for the numerical stability, we obtain a **Gaussian-Dirichlet (Gaudi)** function to indicate the position of the low-rank block.

<div align="center">

<img src="https://changwoolee.github.io/assets/img/projects/gaudi-gblr/Gaudi.webp" alt="gaudi" width="400"/>

</div>

### Layer-wise Optimization

Intuitively, we don't think all layers are equally important. 
Some layers might contribute less than others, which indicates that less important layers can be compressed more.

Unfortunately, it has been very time-consuming to allocate different number of computations for each layer since the search space is discrete and the problem is NP-hard. 

In contrast, with the **GBLR** format, the **layer-wise structural parameter optimization** can be easily done because we can update the structural parameters by Stochastic Gradient Descent (SGD). 


The figure below illustrates the learned Gaudi-GBLR weight matrices of the ViT-Base model trained on ImageNet.
The brighter, the more overlapping low-rank blocks.
Each weight has different rank and structure, which are found during the training process by SGD.
<div align="center">

<img src="https://changwoolee.github.io/assets/img/projects/gaudi-gblr/mask_patterns.webp" alt="gaudi" width="400"/>

</div>
