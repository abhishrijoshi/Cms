echo the title ?
read title
vim ./md/$title.md 
pandoc ./md/$title.md -t html -o ./html/$title.html 
sed -i -e "/<!--add-->/a $(cd html && echo \<a href=\"\./html/$(ls -t |head -1)\")"\>$(cd html && ls -t | head -1 )\<\/\a\> index.html
echo Done 


