#!/bin/tcsh

source ./inputs/params/params.tcsh

set tool = hicmatrix

set chrom_excluded = 'chr[MY]'

set hicmatrix_params = ( \
--min-lambda=0.0 --max-lambda=1.0 --n-lambda=6 --gamma=0 \
--preprocess=none \
--method=inter \
--distance=`echo 1000000/$bin_size | bc` \
--distance2=`echo 1000000/$bin_size | bc` \
--skip-distance=0 \
--flank-dist=`echo 1000000/$bin_size | bc` \
--slope=1.1 \
--fdr=0.10 \
--track-dist=`echo 2000000/$bin_size | bc` \
--presentation=none \
)


