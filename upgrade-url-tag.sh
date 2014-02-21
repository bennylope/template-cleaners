#!/bin/bash

# Upgrades legacy {% url url_name %} style template tag to Django 1.5+
# style {% url 'url_name' %}

# TODO parameterize the directory
# TODO parameterize the file extension
# TODO allow for checking only without replacing

find . -type f -name "*.html" -print0 | xargs -0 sed -i -r -e "s#\{% url ([a-zA-Z0-9_.:-]+)#\{% url '\1'#g"
