function createArrow() {
	const n = document.createElement("span");
	const c = document.createTextNode("↗️");
	n.appendChild(c);
	n.classList.add("external-link");
	return n;
}

const links = document.getElementsByTagName("a");
for (let i of links) {
	if (i.host !== window.location.host) {
		i.after(createArrow());
	}
}