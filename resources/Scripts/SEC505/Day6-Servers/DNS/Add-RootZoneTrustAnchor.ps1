################################################################################
# The following command will add the DNSSEC root zone trust anchor information
# on Server 2012 and later.  Confirm that this information is still current at:
#      https://data.iana.org/root-anchors/root-anchors.xml
# After running the command, if the DNS server has Internet access, you may 
# have to wait 10 to 20 minutes before the DNSKEY record is downloaded.
################################################################################

# Manually import a couple modules related to DNS, not only for this
# script, but for the other labs to follow:
Import-Module -Name DnsClient -ErrorAction SilentlyContinue
Import-Module -Name DnsServer -ErrorAction SilentlyContinue


# Add DNSSEC root zone trust anchor data:
Add-DnsServerTrustAnchor -Name . -CryptoAlgorithm RsaSha256 -Digest 49AAC11D7B6F6446702E54A1607371607A1A41855200FD2CE1CDDE32F24E8FB5 -DigestType Sha256 -KeyTag 19036 


