## firstNamesBe

### an R package to analyze first names of the Belgian population

This package contains a function called `namestats` that returns stats based on first names as an input. It is based on a [national statistics dataset](http://statbel.fgov.be/fr/modules/publications/statistiques/population/prenoms_de_la_population_totale.jsp) covering the first names of 10.573.205 people living in Belgium in 2013 (fyi the Belgian population was of 11.116.243 in 2012).

For any given first name, `namestats` returns the split by gender, region and age range, i.e. a named vector where `male` is the proportion of people with this first name that are males, `bruxelles` the proportion of people with this first name who live in brussels, etc. In addition, it also returns the total number `n` of people with this first name.

If you are only interested in the stats filtered on a given dimension (for instance the region), just give that as an additional input parameter. It will return the same output as previously, but the results will be filtered on the input parameters.

The function is vectorized and very fast.

### Getting started: 

Install the library from github using `devtools`:

    library(devtools)
    install_github("firstnamesbe", username="nassimhaddad")
    library(firstNamesBe)
    help(nameStats)

### Examples:

    library(firstNamesBe)
    
Get stats about a first name:
    
    nameStats("Bart")
    
    >      male female bruxelles flandre wallonie below18 18to64 above64     n
    > Bart    1      0     0.009   0.983    0.008   0.021  0.978       0 29699
    
You can give a vector of first names:

    nameStats(firstName = c("Alex", "Bart", "Clara"))
    
    >        male female bruxelles flandre wallonie below18 18to64 above64     n
    > Alex  0.979  0.021     0.069   0.677    0.254   0.314  0.624   0.062  6690
    > Bart  1.000  0.000     0.009   0.983    0.008   0.021  0.978   0.000 29699
    > Clara 0.000  1.000     0.100   0.367    0.533   0.602  0.151   0.247  9269

You can restrict the stats to a specific gender, region, or ageRange. Just give it as an additional input:

    nameStats(firstName = c("Alex", "Bart", "Clara"),
              region = c("bruxelles", "bruxelles", "flandre"))
              
    >        male female bruxelles flandre wallonie below18 18to64 above64    n
    > Alex  0.989  0.011         1       0        0   0.542  0.402   0.056  463
    > Bart  1.000  0.000         1       0        0   0.000  1.000   0.000  269
    > Clara 0.000  1.000         0       1        0   0.220  0.215   0.565 3403
