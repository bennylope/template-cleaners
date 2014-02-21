# Django template linting scripts

The scripts here are very simple scripts for 

### Fix template tag and variable spacing

These scripts perform very simple clean up to ensure that there is a
space between opening and closing context variable brackets.

Annoying and hard to read:

    {{myar}}
    {%for object in object_list%}

Appease the gods:

    {{ myar }}
    {% for object in object_list %}

### Upgrade old `url` template tags

This script just adds single quotation marks around the URL name in each
instance of a `url` tag in your templates.
