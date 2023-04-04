# create a hello world example

use strict;
use warnings;

use CGI;

my $cgi = CGI->new;

print $cgi->header;
print $cgi->start_html('Hello World');
print $cgi->h1('Hello World');
print $cgi->end_html;

# Path: main.pl
