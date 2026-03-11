## Configure ssh rate limit with firewalld

```sh
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" port port="SSH PORT HERE" protocol="tcp" log prefix="SSH_LIMIT: " level="info" limit value="3/h" accept'
```
Exposing and ssh service to the internet will attract bots trying to connect. To view these connection attempts query the journalctl entries with the prefix from the rich rule:

```sh
journalctl -k | grep "SSH_LIMIT"
```
And to view the top connection attempts by IP
```
journalctl -k | grep "SSH_LIMIT" | awk -F"SRC=" '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -nr | head -n 10
```

## Dumping journalctl to online log sharing site

```sh
sudo journalctl -b | curl -F 'file=@-' 0x0.st
```