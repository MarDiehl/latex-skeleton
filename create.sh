#! /usr/bin/env sh

mkdir -p ${1}/backend
SCRIPT=$(readlink -f ${0})
SCRIPTPATH=$(dirname ${SCRIPT})
echo $SCRIPTPATH
for FILE in ${SCRIPTPATH}/backend/*
    do ln ${FILE} $(readlink -f ${1})/backend/
done
cp ${SCRIPTPATH}/*.tex ${1}
