const links = document.getElementsByTagName("a")

for (let i of links) {
	if (i.host !== window.location.host) {
		i.innerText += "↗️"
	}
}