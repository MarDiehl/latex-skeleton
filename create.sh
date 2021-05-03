#! /usr/bin/env sh

if [ -z ${1} ]; then echo "No directory given" && exit 1;fi

SCRIPT=$(readlink -f ${0})
SCRIPTPATH=$(dirname ${SCRIPT})
INSTALLPATH=$(readlink -f ${1})

echo install from ${SCRIPTPATH} to ${INSTALLPATH}

if [ -d ${INSTALLPATH}/backend ]; then mv ${INSTALLPATH}/backend ${INSTALLPATH}/backend_backup;fi
mkdir ${INSTALLPATH}/backend


for FILE in ${SCRIPTPATH}/backend/*
  do ln ${FILE} ${INSTALLPATH}/backend/
done
rm -f ${INSTALLPATH}/.gitignore
ln ${SCRIPTPATH}/.gitignore ${INSTALLPATH}/

cp ${SCRIPTPATH}/*.tex ${INSTALLPATH}
