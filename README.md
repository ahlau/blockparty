blockparty
==========

**Block Party** is a Rails app that provides an interface to check mail server IP addresses against Block List Server lists using DNSBL protocols. BlockParty allows you to configure a list of Block List Servers and Mail Servers, record the results of Block List queries and view a history of queries.

Models
------

<tt>BlockListServer</tt> models the Block List Servers such as those provided by {surbl.org}[http://www.surbl.org] and {spamhaus.org}[http://www.spamhaus.org].

<tt>MailServer</tt> models the mail server IP addresses to verify against Block List Servers.

<tt>Query</tt> models the job that performs a check against the Block List Server using DNS requests.

<tt>QueryResult</tt> models the response from the DNS Block List Server results.

Future
------

What features this app does not yet have implemented are:
* ranges of MailServer, rather than one simple IP
* delayed job or queueing of DNS Block List lookups for asynchronous DNS requests
* cron or scheduled tasks
* mailers to notify users of blocked servers 