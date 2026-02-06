#!/bin/bash

rm -rf Brewfile \
&& brew bundle dump  \
&& sed -E -i '' -e '/^(vscode|go|cargo)/d' Brewfile
