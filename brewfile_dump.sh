#!/bin/bash

rm -rf Brewfile \
&& brew bundle dump  \
&& sed -i '' -e '/^vscode/d' Brewfile
