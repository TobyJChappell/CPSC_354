# Fortran
Group Members: Joshua Barrs, Toby Chappell, Alex Jones, Jin Jung, and Rose Ramirez

[Presentation Link](https://docs.google.com/presentation/d/1K62LHEmTwz9L9m_X7Wj9Fya9YRvVLo_lGcWOvilyDNY/edit?usp=sharing)
> NOTE: To compile/run fortran, type “gfortran filename” to compile a fortran program assuming gcc is installed. File extensions are “.f”, “.f90”, or “.f95” depending on the version you want to compile with. Alternatively, fortran can be compiled using "ifort".

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
Fortran is very important to the development of programming languages as it is the first successful high-level language. This language was developed using high-level language (HLL), which means the syntax is written in words that humans use, then a compiler translates the HLL to machine code. This was intentional so that scientific programmers, such as physicists and other engineers could have an easier time learning to program in this language. Fortran has been described as having the appearance of “human-language”. This is beneficial as Fortran is primarily used in numerical and scientific computing as seen in weather forecasting, financial trading, and engineering simulation.

Although Fortran is 40 years, it still remains the top language in scientific and industrial programming. Along with being one of the oldest programming languages still used today, it also played a role in technology evolution. For example, Fortran was used in the early development of video games, air traffic control systems, payroll calculations, and military applications. Fortran lead to the growth of these useful applications. The invention of Fortran, not only advanced technology and systems used daily, but also sparked the growth of programming languages in general. Fortran was not the first attempt at using a compiler, but it was the first high-level language that successfully translated HLL to machine code using a compiler. With this achievement, other high-level languages started to be developed based off these concepts.

## History
John Backus created Fortran – or Formula Translation – in 1957 on behalf of IBM (International Business Machines); the development of Fortran shortened the process of programming and made computer-programming in general more accessible (Britannica). Prior to the development of Fortran, computer programmers had to write computer programs using machine language (a first-level language) or assembly language (a second-level language). In an effort to bypass the arduous nature of such computer-programming, Backus led a team of 10 IBM employees in developing the Fortran computer programming language – a language that combined equations from algebra with a form of English shorthand writing.

The development of Fortran enabled the further rapid development of computer programs that ran nearly as efficiently as programs that had arduously been compiled in hand-written machine code. Fortran became the first-choice programming language by the 1950s, mainly due to the fact that it allowed the efficient creation of programs without the need for difficult hand-written computations.

Developers updated Fortran multiple times in the 1950s and 1960s. FORTRAN 77 was released in 1978 and added strings as a distinct type. FORTRAN 90 was released in 1991 (and was further updated in the 1990s) and added various sorts of threading and direct-array processing. Today, FORTRAN has been mainly displaced by fourth and fifth-generation languages in the academic field, though it is still implemented in several fields/areas of study. FORTRAN 77, FORTRAN 90, and FORTRAN 95 remain the Fortran versions still in use today.

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
Although Fortran seems outdated by other, more sophisticated programming languages, it is still widely used in large scale scientific calculation applications. For example, Software for NASA probes Voyager 1 and Voyager 2 was originally written in FORTRAN 5, and later ported to FORTRAN 77. NASA continues to write some software in Fortran even as recently as of September 2013. Fortran is the language of choice when it comes to large scale simulation physical systems. In the field of High-Performance Computing (HPC), Fortran, along with C++ are the only two languages in use today. Fortran has now been in use for several decades and there is a vast body of Fortran software in daily use throughout the scientific and engineering communities.

## Works Cited
https://www.electronicdesign.com/compilers/whats-difference-between-fortran-now-and-then

http://moreisdifferent.com/2015/07/16/why-physicsts-still-use-fortran/

http://www.chem.ox.ac.uk/fortran/fortran1.html

https://www.tutorialspoint.com/fortran/fortran_overview.htm

https://modelingguru.nasa.gov/docs/DOC-1762

https://people.sc.fsu.edu/~jburkardt/f_src/openmp/openmp.html

https://www.britannica.com/technology/FORTRAN

https://jblevins.org/log/openmp

https://www.openmp.org/wp-content/uploads/F95_OpenMPv1_v2.pdf

https://www.thoughtco.com/history-of-fortran-1991415

https://ourcodingclub.github.io/2018/07/30/fortran-intro.html#understanding
