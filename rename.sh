#rename "1s.pdf 2s.pdf ... 26s.pdf" to "25.pdf 24.pdf ... 0.pdf" respectively
for Output in `ls  *s.pdf`
do
    name=`echo ${Output%%s*}`
    name=$((26 - name))
    mv $Output $name.pdf
done
