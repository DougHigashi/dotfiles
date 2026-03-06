## Configure ssh rate limit with firewalld

```sh
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" port port="PORT HERE" protocol="tcp" log prefix="SSH_LIMIT: " level="info" limit value="10/m" accept'
```