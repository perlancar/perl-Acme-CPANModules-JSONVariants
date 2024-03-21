package Acme::CPANModules::WorkingWithTree;

use strict;
use warnings;

use Acme::CPANModulesUtil::Misc;

# AUTHORITY
# DATE
# DIST
# VERSION

my $text = <<'MARKDOWN';
JSON is hugely popular, yet very simple. This has led to various extensions or
variants of JSON.

An overwhelmingly popular extension is comments, because JSON is used a lot in
configuration. Another popular extension is dangling (trailing) comma.

This list catalogs the various JSON variants which have a Perl implementation on
CPAN.


**JSON5**. <https://json5.org/>, "JSON for Humans". Allowing more whitespaces,
single-line comment (C++-style), multiline comment (C-style), single quote for
strings, hexadecimal number literal (e.g. 0x123abc), leading decimal point,
trailing decimal point, positive sign in number, trailing commas.

Perl modules: <pm:JSON5>, <pm:File::Serialize::Serializer::JSON5>.


1) **HJSON**. <https://hjson.org>, Human JSON. A JSON variant that aims to be
more user-friendly by allowing comments, unquoted keys, and optional commas.
It's designed to be easier to read and write by humans.

Perl modules: (none so far).


2) **JSONC**. JSON with Comments.

Perl modules: (none so far).


3) **CSON**. CofeeScript Object Notation. JSON-like data serialization format
inspired by CoffeeScript syntax. It allows for a more concise representation of
data by leveraging CoffeeScript's features such as significant whitespace and
optional commas.

Perl modules: (none so far).


4) **RJSON**. Relaxed JSON. Trailing commas, comments (C-style and C++-style),
single-quoted strings as well as bare/unquoted, hash key without value (value
will default to `undef`).

Perl modules: <pm:JSON::Relaxed>.


5) **<pm:JSON::Diffable>**. Basically just allowing for trailing commas.


6) **JSONLines**. <https://jsonlines.org>. A more restrictive JSON format, all
JSON records must fit in one line as newline is the record delimiter. Encoding
must be UTF-8. Convention for line-oriented processing which support JSON. E.g.
for CSV replacement.

Perl moduless: <pm:JSON::Lines>.


7) **YAML**. YAML is a superset of JSON. It allows for indentation-based syntax
and various features like references, heredocs, etc.

Perl modules: <pm:YAML>, <pm:YAML::PP>, among others.


MARKDOWN

our $LIST = {
    summary => 'List of JSON variants/extensions',
    description => $text,
    tags => ['task'],
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:
