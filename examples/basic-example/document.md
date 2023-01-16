---
title: "HELLO WORLD"
author: "Evan McKinney"
date: "Today"
subject: "Markdown"
keywords: [Markdown, Example]
lang: "en"
...

# 1.
Find the eigenvalues, eigenvectors, and diagonal representation of the Pauli matrices. Solve the first by hand, you may do the other 2 with (commented) computer calcs:

$$\hat{X} = \hat{\sigma_1} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}, \hat{Y} = \hat{\sigma_2} = \begin{bmatrix} 0 & -1 \\ i & 0 \end{bmatrix}, \hat{Z} = \hat{\sigma_3} = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$$

```python
### python code that finds eigenvalues and eigenvectors of a Matrix
import numpy as np
from numpy import linalg as LA

def eigen(matrix):
	eigenvalues, eigenvectors = LA.eig(matrix)
	return eigenvalues, eigenvectors
```

more text goes here
SOLUTION GOES HERE

# 2. Determine if the matrices given below are unitary and Hermitian.

SOLUTION GOES HERE
test

```python
### python code that checks if a Matrix is Hermitean
def is_hermitean(matrix):
	return matrix == matrix.H
```