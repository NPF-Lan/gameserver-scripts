#!/usr/bin/env bash

steamcmd +login anonymous +force_install_dir /srv/repo/csgo/UPDATED/ +app_update 740 validate +quit

rsync -aHxv --progress --compare-dest=/srv/repo/csgo/BASE/ /srv/repo/csgo/UPDATED/ /srv/repo/csgo/DIFFERENCE/
