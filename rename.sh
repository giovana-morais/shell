# script para numerar amostras e facilitar o balanceamento de carga

a=1
for i in *.wav; do
  new = $(printf "%d_%s" "$a" "$i")
  mv "$i" "$new"
  let a=a+1
done
