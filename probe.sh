#!/bin/bash
# test job
sleep 5 
echo "I am " 
whoami
echo "TMPDIR is $TMPDIR"
echo "GLITE_LOCAL_CUSTOMIZAION_DIR IS $GLITE_LOCAL_CUSTOMIZATION_DIR"
echo "i am currently in $PWD"
echo "Software Dir is $VO_SAGRID_SW_DIR"
echo "what's in SAGRID SWDIR ? "
ls -lht $VO_SAGRID_SW_DIR
date
uname -a
hostname -f
date

echo "LFC_HOST is $LFC_HOST"
echo "Top-BDII is $LCG_GFAL_INFOSYS"
echo "LFC_TYPE is $LFC_TYPE"

echo "now setting the variables correctly"
export LFC_HOST=devslngrd002.uct.ac.za
export LCG_GFAL_INFOSYS=srvslngrd001.uct.ac.za:2170
export LFC_TYPE=lfc
echo "new variables:"
echo "LFC_HOST is $LFC_HOST"
echo "Top-BDII is $LCG_GFAL_INFOSYS"
echo "LFC_TYPE is $LFC_TYPE"
echo "trying to interact with the logical file catalog"
#lcg-cp -v lfn:/grid/sagrid/portal.tar.gz file:/dev/null
#lcg-cp -v lfn:/grid/sagrid/SoftRepo/heasoft-6.11.1src-all.tar.gz file:/dev/null
#echo "which sagrid rpms are there ?"
rpm -qa |grep sagrid
#touch $VO_SAGRID_SW_DIR/main

echo "checking for MPI"
rpm -qa |grep -i mpi
which mpif90

exit 0;