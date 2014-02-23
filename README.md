# Template cleaning scripts for Django/Jinja/Liquid templates

The primary script here is simple script for checking and cleaning the
minor but annoying spaceless template tag and template variable brackets
that find their way into Django templates. However it should work with
template languages with similar syntax like
[Jinja](http://jinja.pocoo.org/) (Python) or
[Liquid](http://liquidmarkup.org/) (Ruby).

The scripts are known to work in Ubuntu Linux but *not* on Mac OS X due to
sed related errors.

### Check and fix template tag and variable spacing

These scripts perform very simple clean up to ensure that there is a
space between opening and closing context variable brackets.

Annoying and hard to read:

    {{myar}}
    {%for object in object_list%}

Appease the gods:

    {{ myar }}
    {% for object in object_list %}

Basic usage:

    ./curly-spacing.sh

By default the script will search recursively starting from the current
directory and limited to files with the "html" extension. If there are
matches it will list them and return an exit code of 1. If there are no
matches it will return an exit code of 0. This allows for it to be used
by other scripts for automated codebase testing.

You can specify a starting directory with the `d` flag:

    ./curly-spacing.sh -d templates

And use the `f` flag to provide an alternate file extension to search.

    ./curly-spacing.sh -d templates -f htm

You can pass the `e` flag to edit the problems in place.

    ./curly-spacing.sh -d templates -f htm -e

When editing no attempt is made to control the exit code based on
matches.

### Upgrade old `url` template tags

This script just adds single quotation marks around the URL name in each
instance of a `url` tag in your templates.

    ./django-url.sh

This script takes the same optional directory argument and file
extension as the template tag cleaning script.

### License

I have cobbled together these scripts based on other people's helpful
examples
\[[1](http://stackoverflow.com/questions/13590699/migrate-url-tags-to-django-1-5/13592772#13592772)\],
so anything in here that is my original work is hereby
**released into the public domain**.
