# Fortran
[Presentation Link](https://docs.google.com/presentation/d/1K62LHEmTwz9L9m_X7Wj9Fya9YRvVLo_lGcWOvilyDNY/edit?usp=sharing)

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
* `.and.`
* `.or.`
* `.not.`
* `.eqv.`
* `.neqv.`

## The Basic Syntax of Fortran
* Use `!` to comment
* Use `=` for assignment
* Declare variables by: `data type :: variable name`
* Declare arrays by: `data type, dimension(size) :: variable name`


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
**Example:** Run `gfortran helloworld.f95 -o helloworld.exe` to compile and `./helloworld.exe` to execute

## Why We Chose Fortran

## History
John Backus created Fortran –  or Formula Translation –  in 1957 on behalf of IBM (International Business Machines); the development of Fortran shortened the process of programming and made computer-programming in general more accessible (Britannica). Prior to the development of Fortran, computer programmers had to write computer programs using machine language (a first-level language) or assembly language (a second-level language). In an effort to bypass the “arduous nature” of such computer-programming, Backus led a team of 10 IBM employees in developing the Fortran computer programming language – a language that combined equations from algebra with a form of English shorthand writing.

The development of Fortran enabled the further rapid development of computer programs that ran nearly as efficiently as programs that had arduously been compiled in hand-written machine code. Fortran became the first-choice programming language by the 1950s, mainly due to the fact that it allowed the efficient creation of programs that ran as efficiently as machine-coded programs.

Developers updated Fortran multiple times in the 1950s and 1960s. FORTRAN 77 was released in 1978 and  FORTRAN 90 was released in 1991 (and was further updated in the 1990s). FORTRANA 90 added various sorts of threading. Today, FORTRAN has been mainly displaced by fourth and fifth-generation languages in the academic field, though it is still implemented in several fields/areas of study. FORTRAN 77, FORTRAN 90, and FORTRAN 95 remain the Fortran versions still in use today.

## Advantages
### Scientific Computing
Fortran remains popular in high performance computing (HPC) applications especially within the physical sciences (ie. physics, chemistry, etc.). One reason for this is because there exists a lot of legacy code in Fortran. Since the goal of most researchers to explore their respective fields rather than write perfect code, Fortran becomes a great choice. This is because it allows researchers to copy and paste previously written code rather than write their own. Another reason Fortran remains popular is because it has a natural syntax for mathematical expressions. Meaning, it is far easier to script large quantities of computations in Fortran in comparison with most other high level languages. In addition, Fortran is easier to learn within these scientific communities due to the fact that Fortran has very little emphasis on OOP (Object-Orientated Programming). As such, researchers can focus on learning how to code pure mathematical computation in Fortran rather than concern themselves with different styles of programming that aren’t strictly relevant to them. Lastly, programmers generally don’t have to worry about pointers and memory allocation as with other languages such as C/C++.
### Parallelism
Parallelism is a built-in functionality of Fortran and is used for maximizing the use of available hardware in order to efficiently solve large problems. The need for parallel computing arose at a time when existing systems had limited computing power. Fortran improved on its parallel computing capabilities with each successive version. With Fortran 95 came High Performance Fortran. HPF uses a data parallel model of computation to support spreading the work of a single array computation over multiple processors. This allows efficient implementation on both SIMD and MIMD style architectures. Then, Coarray Fortran was introduced as an extension of Fortran 95/2003. A CAF program is interpreted as if it were replicated and all copy images executed asynchronously. However, CAF had many shortcomings including lack of support for processor subsets, global pointers, and collective communication. Fortran 2018 version promotes portability, reliability, maintainability, and efficient execution of parallel programs. These changes in Fortran 2018 aim to facilitate an environment where a subset of the images can work on part of an application without affecting other images. Parallelism in Fortran requires only a few major requirements, including: a few OpenMP directives, specially formatted comments, and compiled with a special flag to enable OpenMP.
**Example:** Run `gfortran -fopenmp parallel.f90 -o parallel.exe` and `./parallel.exe` to execute
### Matrices
A common use of Fortran is to implement and use matrices. The reason for this is because matrices are extremely fast and efficient in Fortran. In addition, Fortran includes a large number of built-in functionality for matrices including cross products, dot products. Moreover, declaring and using matrices in Fortran is easy to implement and use allowing for increased readability.
**Example:** Run `gfortran matrix.f90 -o matrix.exe` to compile and `./matrix.exe` to execute
### Longevity
Fortran is also useful when people are writing code that is meant to run over a long period of time due to the fact that Fortran will be readable for decades into the future. This is a result of the well knownness of the language as well as the simplicity in the code. Fortran is one of the oldest programming languages to date, meaning that it contains a large amount of libraries.

## Current Uses

## Works Cited

https://www.electronicdesign.com/compilers/whats-difference-between-fortran-now-and-then
http://moreisdifferent.com/2015/07/16/why-physicsts-still-use-fortran/
http://www.chem.ox.ac.uk/fortran/fortran1.html
https://www.tutorialspoint.com/fortran/fortran_overview.htm
https://modelingguru.nasa.gov/docs/DOC-1762
https://people.sc.fsu.edu/~jburkardt/f_src/openmp/dot_product_openmp.f90
https://www.britannica.com/technology/FORTRAN
https://jblevins.org/log/openmp
https://www.openmp.org/wp-content/uploads/F95_OpenMPv1_v2.pdf
https://www.thoughtco.com/history-of-fortran-1991415
https://ourcodingclub.github.io/2018/07/30/fortran-intro.html#understanding
