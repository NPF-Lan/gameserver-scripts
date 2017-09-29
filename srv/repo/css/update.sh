#!/usr/bin/env bash

steamcmd +login anonymous +force_install_dir /srv/repo/css/UPDATED/ +app_update 232330 validate +quit

rsync -aHxv --progress --compare-dest=/srv/repo/css/BASE/ /srv/repo/css/UPDATED/ /srv/repo/css/DIFFERENCE/

