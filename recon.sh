## Recon on wildcard domain script
#
# Created using this cheat sheet
# https://github.com/sehno/Bug-bounty/blob/master/bugbounty_checklist.md
#
# TODO using domain as parameters 

#amass
echo "##################"
echo "##### amass ######"
echo "##################"
amass enum -d hackerone.com

#subfinder
#
# TODO optional parameter for output
echo "##################"
echo "### subfinder ####"
echo "##################"
subfinder -d hackerone.com -v -o /home/kali/hacking/hackerone.com/subfinder.txt

#assetfinder
#
# TODO optional parameter for  output
echo "##################"
echo "### assetfinder ##"
echo "##################"
assetfinder hackerone.com > hacking/hackerone.com/assetfinder.txt

#dnsgen with massdns
#
# TODO domain as parameter
# TODO run resolvers check
# TODO massdns output as parameter
echo "##################"
echo "# dsngen&massdns #"
echo "##################"
cat hackerone.txt | dnsgen - | massdns -r tools/dnsvalidator/resolvers.txt -t A > hacking/hackerone.com/dns-mass.txt 

#httprobe
#
# TODO domain as parameter
# TODO optional output as parameter
echo "##################"
echo "#### httprobe ####"
echo "##################"
cat hackerone.txt | httprobe > hacking /hackerone.com/httprobe.txt

# aquatone
#
# TODO domain as parameter
# TODO optional output as parameter
echo "##################"
echo "#### aquatone ####"
echo "##################"
cat hackerone.txt | aquatone -out /home/kali/hacking/hackerone.com

