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






Under Construction.