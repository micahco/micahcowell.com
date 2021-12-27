% Shell Script: Handling Errors

Shell Script Series
:	[Shell Script: Introduction](Shell-Script-Introduction.html)
:	[Shell Script: Handling Errors](Shell-Script-Handling-Errors.html)\

```zsh
errorMsg() {
	echo "error: ${1}"
	shift
	for msg in "$@"; do
		echo "${msg}"
	done
	echo "help: man foo"
	exit 1;
}
```
