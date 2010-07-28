#!/bin/sh
# bconfhtm.sh - v0.2
#
BBBSDIR=/opt/bbbs
SCRIPTS=$BBBSDIR/scripts
WORKDIR=$BBBSDIR/work
TEMPLATE=$WORKDIR/bcnfhtml.tpl
HTMLDIR=$BBBSDIR/htdocs
STATSFILE=$WORKDIR/bcnfstat.txt
HTMLFILE=bcnfstat.htm

cd $BBBSDIR

# create Conference Statistics file
$BBBSDIR/bbbs bconf > $STATSFILE

# bconfhtm.pl -t Template -o HTMLDir -s StatsFile [-f HTMLFile] [-l LogFile] [-x] [-h]
$SCRIPTS/bconfhtm.pl -t $TEMPLATE -o $WORKDIR -s $STATSFILE -f $HTMLFILE

# put new version of file online
cp $WORKDIR/$HTMLFILE $HTMLDIR/$HTMLFILE

# delete working copy
rm $WORKDIR/$HTMLFILE

