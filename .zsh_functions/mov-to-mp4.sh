#!/usr/bin/env bash

function mov-to-mp4() {
    ffmpeg -i "$1" -q:v 0 "$2"
}
