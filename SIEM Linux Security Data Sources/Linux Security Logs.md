# /var/log/messages (RedHat) or /var/log/syslog (Debian)

This log file contains generic system activity logs. It is mainly used to store informational and non-critical system messages.

## How we can use it (security)

Here you can track non-kernel boot errors, application-related service errors and the messages that are logged during system startup This is the first log file that the Linux administrators should check if something goes wrong. Also, Linux security systems uses this log file by default: iptables openvpn.

## Example (Security related logs samples)

```
Martian log enabled:
Feb 1 17:45:05 gatlan kernel: martian source 90.20.131.158 from 192.168.0.2, on dev ppp0
Feb 1 17:45:05 gatlan kernel: ll header: 45:48:00:28:c8:6a:40:00:72:06:a1:c0:c0:a8:00:02:5a:14:83:9e:12:36
Feb 1 17:45:26 gatlan kernel: martian source 90.20.131.158 from 192.168.0.2, on dev ppp0
Feb 1 17:45:26 gatlan kernel: ll header: 45:48:00:28:cc:f9:40:00:72:06:9d:31:c0:a8:00:02:5a:14:83:9e:12:36
Feb 1 17:46:10 gatlan kernel: martian source 90.20.131.158 from 192.168.0.2, on dev ppp0
Feb 1 17:46:10 gatlan kernel: ll header: 45:48:00:28:d6:f2:40:00:72:06:93:38:c0:a8:00:02:5a:14:83:9e:12:36

UDP warning (netfilter module):
kernel: UDP: short packet: From 2.0.0.0:3800 37860/38 to 72.17.117.129:20969

TCP shrunk window (netfilter module):
Jan 24 20:01:36 Lab3 kernel: TCP: Peer 93.97.112.201:50524/6960 unexpectedly shrunk window 930362701:930364976 (repaired)
```
## Splunk App / Is CIM DataModels are supported?

Splunk Add-on for Unix and Linux
https://splunkbase.splunk.com/app/833/

# /var/log/secure (RedHat) or /var/log/auth.log (Debian)

All authentication related events in Debian and Ubuntu server are logged here. If you’re looking for anything involving the user authorization mechanism, you can find it in this log file.

RedHat and CentOS based systems use this log file instead of /var/log/auth.log.
It is mainly used to track the usage of authorization systems. It stores all security related messages including authentication failures. It also tracks sudo logins, SSH logins and other errors logged by system security services daemon.

## How we can use it (security)

Suspect that there might have been a security breach in your server? Notice a suspicious javascript file where it shouldn’t be? If so, then find this log file asap!
Investigate failed login attempts Investigate brute-force attacks and other vulnerabilities related to user authorization mechanism.

All user authentication events are logged here. This log file can provide detailed insight about unauthorized or failed login attempts Can be very useful to detect possible hacking attempts. It also stores information about successful logins and tracks the activities of valid users.

## Example (Security related logs samples)

```
SSH Login sucessful:¶
May 21 20:22:28 slacker2 sshd[8813]: Accepted password for root from 192.168.20.185 port 1066 ssh2
May 21 20:22:28 sol2 sshd[23857]: [ID 702911 auth.notice] User test1, coming from 192.168.2.185, - authenticated.
Oct 11 08:05:46 hostname auth|security:info sshd[323808]: Accepted publickey for usr1 from 2.3.4.5 port 37909 ssh2

SSH Login failed:
May 21 20:22:28 slacker sshd[21487]: Failed password for root from 192.168.20.185 port 1045 ssh2

SSH Invalid user login attempt:
Jul 7 10:51:24 chaves sshd[19537]: Invalid user admin from spongebob.lab.ossec.net
Jul 7 10:53:24 chaves sshd[12914]: Failed password for invalid user test-inv from spongebob.lab.ossec.net
Jul 7 10:53:24 kiko sshd[3251]: User dcid not allowed because listed in DenyUsers

SUDO:
Jan 21 11:34:24 server-0 sudo: user1 : TTY=pts/0 ; PWD=/home/user1 ; USER=root ; COMMAND=/bin/cp /home/user1/file1.txt /root/file1.txt
```

## ## Splunk App / Is CIM DataModels are supported?

https://splunkbase.splunk.com/app/3476/ 
CIM: yes
https://splunkbase.splunk.com/app/3476/
Splunk Add-on for Unix and Linux
https://splunkbase.splunk.com/app/833/
CIM: yes


# /var/log/boot.log

The system initialization script, /etc/init.d/bootmisc.sh, sends all bootup messages to this log file This is the repository of booting related information and messages logged during system startup process.

## How we can use it (security)

You should analyze this log file to investigate issues related to improper shutdown, unplanned reboots or booting failures. Can also be useful to determine the duration of system downtime caused by an unexpected shutdown.

## Example (Security related logs samples)
```
???
```
## ## Splunk App / Is CIM DataModels are supported?
```
???
```

# /var/log/secure (RedHat) or /var/log/auth.log (Debian)

## How we can use it (security)

## Example (Security related logs samples)

## ## Splunk App / Is CIM DataModels are supported?



# /var/log/secure (RedHat) or /var/log/auth.log (Debian)

## How we can use it (security)

## Example (Security related logs samples)

## ## Splunk App / Is CIM DataModels are supported?



# /var/log/secure (RedHat) or /var/log/auth.log (Debian)

## How we can use it (security)

## Example (Security related logs samples)

## ## Splunk App / Is CIM DataModels are supported?



# /var/log/secure (RedHat) or /var/log/auth.log (Debian)

## How we can use it (security)

## Example (Security related logs samples)

## ## Splunk App / Is CIM DataModels are supported?
