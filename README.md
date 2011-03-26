# What is This? #

This is a simple client that resolves an NAPTR record for a particular subdomain into a URI.

# How do I Use It? #

To see the resolver in action you will need to have Ruby installed. Once you have Ruby installed, execute the following command:

  bin/resolve twitter.anthony.com

# How Does it Work? #

The resolver uses what is known as an NAPTR record, which allows a domain name to be mapped to a regular expression. Resolving a name to a URL is then a matter of looking up a specific name's NAPTR record and executing the regular expression.
