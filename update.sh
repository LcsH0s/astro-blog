#!/bin/bash

git pull
npm run build
rm -r /var/www/blog.dagrcorp.com/*
cp -r dist/* /var/www/blog.dagrcorp.com/
