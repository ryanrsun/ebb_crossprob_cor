# ebb_rossprob_cor calculates an approximation to the p-value of 
# GOF tests such as HC, BJ, and GHC when the observations are correlated.

# With this new version, we have made some big upgrades to the original routine
# which should improve speed.  For instance, now match all the moments at the beginning,
# and do it in a smarter way.
# Also we are now using an EBB (Prentice, 1986) instead of standard BB approximation.


# Usage is "./ebb_crossprob_cor d BOUNDS_FILE COR_FILE".
# d is the number of marginal test statistics, the bounds file should be
# one column of positive numbers sorted in increasing order, and the correlation
# file should be one column of all the pairwise correlations, where the 
# correlation coefficient in row I and column J is the (J + ((I-2)(I-1)/2)
# element of COR_FILE.

# ./ebb_crossprob_cor 5 HC.bounds5.txt sigmat5.txt should produce 0.124233256566438


