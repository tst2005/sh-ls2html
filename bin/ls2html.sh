#!/bin/sh

[ $# -gt 0 ] && dir="$1" || dir="$(basename -- "$(pwd)")"

printf %s '<html>
<head>
<title>Index of '\
"$dir"\
'</title>
</head>
<body>
<h1>Index of '\
"$dir"\
'</h1>
<pre>
<b>
Filename:             size                   time</b>
'
for f in *; do
	printf '%s\n' '<a href="'"$f"'">'"$f$([ ! -d "$f" ] || echo /)"'</a>             size + date'
	
done
printf '%s\n' '
</pre>
Output of <a href="https://github.com/tst2005/sh-ls2html"><b>ls2html</b></a> by <a href="https://github.com/tst2005">tst2005</a>

</body></html>
'
