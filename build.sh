OUTDIR=$1
FILE=$2

OPTIONS="--synctex=1 -interaction=nonstopmode"

mkdir -p $OUTDIR

lualatex $OPTIONS --output-directory=$OUTDIR $FILE.tex
biber --output-directory=$OUTDIR $FILE
lualatex $OPTIONS --output-directory=$OUTDIR $FILE.tex
lualatex $OPTIONS --output-directory=$OUTDIR $FILE.tex

cp $OUTDIR/$FILE.pdf .
cp $OUTDIR/$FILE.pdf petarmatisic.pdf
