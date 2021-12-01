# clean
rm -r dist/
mkdir dist/
mkdir .tmp

# components
head=components/head.html
nav=components/nav.html
foot=components/foot.html

for i in pages/*.md ; do
	echo $i
done

# index
pandoc pages/index.md > .tmp/index.html
body=.tmp/index.html
sed -i '1i <main>' ${body}
echo '</main>' >> ${body}
cat ${head} ${nav} ${body} ${foot} > dist/index.html
title=`grep -m 1 "^# .*" pages/index.md | sed s/"# "//g`
sed -i "s/{{title}}/${title}/" dist/index.html

# archive
pandoc pages/archive.md > .tmp/archive.html
body=.tmp/archive.html
sed -i '1i <main>' ${body}
echo '</main>' >> ${body}
cat ${head} ${body} ${foot} > dist/archive.html
title=`grep -m 1 "^# .*" pages/archive.md | sed s/"# "//g`
sed -i "s/{{title}}/${title}/" dist/archive.html

# 404
pandoc pages/404.md > .tmp/404.html
body=.tmp/404.html
sed -i '1i <main>' ${body}
echo '</main>' >> ${body}
cat ${head} ${body} ${foot} > dist/404.html
title=`grep -m 1 "^# .*" pages/404.md | sed s/"# "//g`
sed -i "s/{{title}}/${title}/" dist/404.html

# exit
rm -r .tmp/
cp -a static/. dist/