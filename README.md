# Template cleaning scripts for Django/Jinja/Liquid templates

The scripts here are very simple scripts for cleaning the minor but
annoying spaceless template tag and template variable brackets that find
their way into Django templates. Will work with template languages with
similar syntax like [Jinja](http://jinja.pocoo.org/) (Python) or
[Liquid](http://liquidmarkup.org/) (Ruby).

The scripts are known to work in Ubuntu Linux but *not* on Mac OS X due to
sed related errors.

### Fix template tag and variable spacing

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
directory and limited to files with the "html" extension.

You can specify a starting directory with the `d` flag:

    ./curly-spacing.sh -d templates

And use the `f` flag to provide an alternate file extension to search.

    ./curly-spacing.sh -d templates -f htm

### Upgrade old `url` template tags

This script just adds single quotation marks around the URL name in each
instance of a `url` tag in your templates.

    ./django-url.sh

This script takes the same optional directory argument and file
extension as the template tag cleaning script.

### License

I have cobbled together these scripts based on other people's helpful
examples, so anything in here that is my original work is hereby
**released into the public domain**.
