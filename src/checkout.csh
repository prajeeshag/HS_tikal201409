#!/bin/tcsh -f
# Checkout Script for Experiment 'HSt42'
# ------------------------------------------------------------------------------
# The script created at 2016-03-15T14:33:06 via:
# /ncrc/home2/fms/local/opt/fre-commands/bronx-10/bin/fremake --link --ncores=8 --platform=ncrc2.default --target=prod --walltime=120 --xmlfile=/autofs/mnt/ncrc-svm1_home1/Zhaoyi.Shen/xml/idealized.xml HSt42
# ------------------------------------------------------------------------------

source $MODULESHOME/init/csh
echo Using source directory = /lustre/f1/unswept/Zhaoyi.Shen/tikal_201409/HSt42/src...
cd /lustre/f1/unswept/Zhaoyi.Shen/tikal_201409/HSt42/src

module avail git >& .git_avail
if (! -z .git_avail) then
    module load git
endif

unalias *

# ---------------- component 'fms_spectral_solo'
setenv CVSROOT :ext:cvs.princeton.rdhpcs.noaa.gov:/home/fms/cvs
cvs co -r tikal_201409 fms_spectral_solo
 
        cvs co -r tikal_201409  atmos_shared/interpolator/interpolator.F90
        cvs co -r tikal_201409  shared/time_interp/time_interp.F90
       

exit 0
