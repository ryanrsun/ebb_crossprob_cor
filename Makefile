# $@ is the file name of the target
# $^ is the name of all dependencies separated by spaces, duplicate names removed
# -c means compile only (no executable, only make the .o file)
#

CXX=g++ -std=c++11
INCLUDES = -I/users/ryansun/Documents/Research/Paper2/Software/includes
CXXFLAGS = -g -Wall $(INCLUDES)
#LDFLAGS = -g -L/usr/local/lib
#LDLIBS = -larmadillo -lMvtnorm

all: ebb_crossprob_cor

# 
# It doesn't automatically know the name of the binary
#

ebb_crossprob_cor: ebb_crossprob_cor.o 
	$(CXX) ebb_crossprob_cor.o -o ebb_crossprob_cor 

#
# It automatically knows to make the .o from the .c, that's why we only need $^
#

ebb_crossprob_cor.o: ebb_crossprob_cor.cpp 
	$(CXX) $(CXXFLAGS) -c $^ 

clean:
	rm -f *.o ebb_crossprob_cor

