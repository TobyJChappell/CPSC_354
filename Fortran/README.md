# Fortran

> NOTE: To compile/run fortran, type “gfortran <filename>” to compile a fortran program assuming gcc is installed. File extensions are “.f”, “.f90”, or “.f95” depending on the version you want to compile with.

## Data Types Supported by Fortran
* Integer type
 * Only integer values
* Real type
* Floating point numbers
* Complex type
 * Complex numbers
* Logical type
* Logical boolean values
* Character type
 * Characters or strings
> NOTE: Names are case insensitive and have a max length of 31 characters

<data_type> “::” <variable_name>

## Logical Operators
* .and.
* .or.
* .not.
* .eqv.
* .neqv.

## Arrays in Fortran
* <data_type> dimension()

## The Basic Syntax of Fortran
* ‘!’ to comment
* ‘=’ for assignment

### Main Program Syntax
'''
{
	PROGRAM program_name
	IMPLICIT none      
	! type declaration statements      
	! executable statements  
	END PROGRAM program_name
}
'''
### Method Syntax
'''
{
	SUBROUTINE method_name(<paramemter_name>)
	IMPLICIT none
	! code
	END SUBROUTINE method_name
}
'''
