# tensor-interface
_towards standardization_

tensor-interface is a specification that prescribes a set of low-level routines for performing common linear algebra operations wit tensors, such as tensor contraction. It's like BLAS interface, but for tensors instead of just matrices.

At the moment Python, Fortran and C versions of the interface are being developed and C++ version is to be added as well.


This software and the content of this repository is distributed under the LGPL license described in the attached file LICENSE.txt.

---------

Selected requirements for the implementation of this interface:

1. Allows smooth addition of a new library
2. Interface defines set of functions that developer implements to integrate/create a tensor library
4. Access to tensors to be filled with data efficiently
5. Tensor type: includes metadata on possible subblock structure
6. Unifies returns from tensor functions, exception handling

Full list of requirements will become available in the documentation.