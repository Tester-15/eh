@echo off
echo === A Record ===
nslookup -type=A example.com
echo === MX Record ===
nslookup -type=MX example.com
echo === NS Record ===
nslookup -type=NS example.com
echo === TXT Record ===
nslookup -type=TXT example.com
pause


dig A example.com +short
dig AAAA example.com +short
dig MX example.com +short
dig NS example.com +short
dig TXT example.com +short
dig CNAME www.example.com +short
dig SOA example.com +short
dig ANY example.com +short
dig AXFR example.com @ns1.example.com



-type=A: Retrieves the IPv4 address (A record).

-type=MX: Retrieves the mail servers (MX records).

-type=NS: Retrieves the domain's name servers (NS records).

-type=TXT: Retrieves text records (SPF, DKIM, etc.).

-type=SOA: Retrieves the Start of Authority record.






A: Retrieves the IPv4 address (A record).

AAAA: Retrieves the IPv6 address (AAAA record).

MX: Retrieves the mail servers (MX records).

NS: Retrieves the domain's name servers (NS records).

TXT: Retrieves text records (SPF, DKIM, etc.).

CNAME: Retrieves the canonical name (alias) for a domain.

SOA: Retrieves the Start of Authority record.

ANY: Attempts to retrieve all available record types (often restricted).

AXFR: Attempts a full DNS zone transfer.

@ns1.example.com: Specifies the nameserver to query for the zone transfer.

+short: Displays only the concise result (e.g., IPs or records only).
