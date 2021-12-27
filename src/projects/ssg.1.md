% SSG(1) Version 0.1 | Manual

# NAME

**ssg** — static site generator

# SYNOPSIS

**ssg [-b]**

# DESCRIPTION

A tiny script for creating websites with `pandoc`.

## Options

**`-b`**:	Build site

## CONFIGURATION

A valid configuration file `./ssg.conf` is required to build.

**Note**: Do not add trailing `/` to paths.

`SRCDIR`

:	Path to input directory. Can contain files of valid `pandoc` input formats.

	<https://pandoc.org/MANUAL.html#general-options>

`DESTDIR`

:	Path to output directory.

`STATICDIR`

:	Path to static directory. This directory's contents will be copied into the `DESTDIR`.

`TEMPLATE`

:	Path to `pandoc --template` html file.
	
	<https://pandoc.org/MANUAL.html#templates>