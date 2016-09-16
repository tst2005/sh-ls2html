#!/bin/sh



[ $# -gt 0 ] && dir="$1" || dir="$(basename -- "$(pwd)")"

printf '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
 <head>
  <title>Index of %s</title>
 </head>
 <body>
<h1>Index of %s</h1>
  <table>
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
   <tr><th colspan="5"><hr></th></tr>\n' \
"$dir" "$dir"

printf '%s\n' '<tr><td valign="top"><img src="/icons/back.gif" alt="[PARENTDIR]"></td><td><a href="..">Parent Directory</a></td><td>&nbsp;</td><td align="right">  - </td><td>&nbsp;</td></tr>'

for f in *; do
	printf '<tr><td valign="top"><img src="/icons/image2.gif" alt="[IMG]"></td><td><a href="%s">%s</a></td><td align="right">%s</td><td align="right">%s</td><td>&nbsp;</td></tr>' \
		"$f" "$f$([ ! -d "$f" ] || echo /)" 'DATE' 'SIZE'
done

printf '%s\n' '
   <tr><th colspan="5"><hr></th></tr>
</table>

Output of <a href="https://github.com/tst2005/sh-ls2html"><b>ls2html</b></a> by <a href="https://github.com/tst2005">tst2005</a>

</body></html>'
