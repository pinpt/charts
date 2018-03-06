<div align="center">
	<img width="500" src=".github/logo.svg" alt="pinpt-logo">
</div>

<p align="center" color="#6a737d">
	<strong>Helm Charts Repo used by Pinpoint</strong>
</p>

## Helm Charts

This repo contains charts for third-party components that we are using that aren't available in the public Helm repo.

## Added new charts to the repo

Add a new subfolder, modify the makefile, and update the index.html.

## Release Process

1. Merge all the changes.
2. Tag the commit. `git tag -a $VERSION -m $MESSAGE`
3. Run `make build` to create the files.
4. Add and commit the new files in the docs subfolder
5. Reset the tag to the new changes. `git tag -a $VERSION -m $MESSAGE -f`


## Legal

Copyright (c) 2018 by PinPT, Inc. All source code available in this repository are public domain.
