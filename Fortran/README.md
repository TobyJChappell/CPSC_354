# Fortran

> NOTE: To compile/run fortran, type “gfortran <filename>” to compile a fortran program assuming gcc is installed. File extensions are “.f”, “.f90”, or “.f95” depending on the version you want to compile with. Alternatively, fortran can be compiled using "ifort".

## Data Types Supported by Fortran
* Integer type
* Real type
* Floating point numbers
* Complex type
* Logical type
* Logical boolean values
* Character type
> NOTE: Names are case insensitive and have a max length of 31 characters

## Logical Operators
* .and.
* .or.
* .not.
* .eqv.
* .neqv.

## Assignment
> *data type* :: *variable name*


## Arrays in Fortran
Declared using the following line:
> *data type*, dimension(*size*) :: *variable name*

## The Basic Syntax of Fortran
* ‘!’ to comment
* ‘=’ for assignment

### Main Program Syntax
```
PROGRAM program_name
IMPLICIT none      
! type declaration statements      
! executable statements  
END PROGRAM program_name
```
### Method Syntax
```
SUBROUTINE method_name(<paramemter_name>)
IMPLICIT none
! code
END SUBROUTINE method_name
```

## Parallelism

`gfortran -fopenmp parallel.f90 -o parallel.exe`
