% Shell Script: Error Handling

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
