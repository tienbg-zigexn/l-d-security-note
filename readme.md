# The security course from Zigexn L&D team

<!--toc:start-->
- [The security course from Zigexn L&D team](#the-security-course-from-zigexn-ld-team)
  - [Other notes](#other-notes)
  - [Structure](#structure)
  - [Hacking lab](#hacking-lab)
  - [On warp terminal](#on-warp-terminal)
  - [Hard disk problems](#hard-disk-problems)
  - [Website hacking - information gathering](#website-hacking-information-gathering)
  - [Website hacking - Files](#website-hacking-files)
  - [Website hacking - SQL injection](#website-hacking-sql-injection)
<!--toc:end-->

## Other notes

[Note when reading the book](./reading_book.md)

## Structure

This course is divided into 4 sections

1. Network
2. Gaining access
3. Post exploitation
4. Web hacking

## Hacking lab

We setup a lab to practice hacking. The lab contains 3 OSes: windows, kali
linux, and metasploitable. We use VMs.

Windows one will acts as the victim here.

The kali one acts as the hacker. It's a debian-based preinstalled a lot of
tools useful for hackers.

The Metasploitable is a vulnerable linux distro, so this is another victim.

This course suggests using VMware, which is bad. I have disliked this product
for a pretty long time. I don't want to explain why here. I just state that I
will use VirtualBox, at least. At best I would use something like kvm, qemu.

## On warp terminal

I hate the fact that this course suggests using this terminal emulator. The
concept of letting an LLM have access to your shell is really terrible. And
this is a **security** course.

I refuse to use it.

## Hard disk problems

One of my docker volume (database for ONE project) reach nearly 100 GiB. This
Dell laptop that Zigexn provides me does not have enough spaces for me to
confidently install another 3 VMs, especially one of them is a windows. I can
re-fresh my database and reduce the volume to less than 60 GiB, but this
requires the whole next Saturday of mine.

After rebuild my database my machine still does not have enough spaces left to
install these VMs. The Windows 11 requires at least 64GiB. I only have total
50GiB left.

    df -h

```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           1.6G  2.0M  1.6G   1% /run
efivarfs        374K  239K  131K  65% /sys/firmware/efi/efivars
/dev/nvme0n1p2  233G  172G   50G  78% /
tmpfs           7.7G  1.9M  7.7G   1% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
tmpfs           7.7G   64K  7.7G   1% /tmp
/dev/nvme0n1p1  1.1G   22M  1.1G   3% /boot/efi
tmpfs           1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           1.6G   72K  1.6G   1% /run/user/1000
```

    docker system df

```
TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          17        14        8.764GB   3.591GB (40%)
Containers      17        0         368.9MB   368.9MB (100%)
Local Volumes   15        15        71.02GB   0B (0%)
Build Cache     222       0         6.605GB   6.605GB
```

## Website hacking - information gathering

The first step of every hack always is building a profile about the target, I
mean gathering information.

Common for website hacking:

    IP Address
    Domain name info
    Technologies used
    Other websites on the same server
    DNS records
    Unlisted files, sub-domains, directories

The instructor suggests tools for gathering information, such as:

    whois.domaintools.com
    toolbar.netcraft.com
    robtex.com

The problem with these tools is they are online services. They can track our
activities and we are depending on the internet, on someone else's computers
(servers running those services).

I don't really have the expertise on this field but I know there are many tools
that is safer to use. We have some network cli FOSS tools that do not depends
on someone else's server `whois`, `dig`, etc.

I think the only reason we could use these online tools is because we are doing
white hat activities here. But to simulate a real APT, I think we should not.

It is weird that whois tool has the web server information (verion of apache).
I could not reproduce this, even using the same website in the video.

The privacy situation is way better now since all the hosting history
information is gone (from these tools).

`exploit-db.com` is a good resource about exploiting CVEs.

`robtex.com` helps gather information about DNS. We can use the reverse DNS to
gather information about other websites that are hosted on the same server.

We can even use search engine like `bing` to search websites that point to the
same ip address.

Discovering Subdomains: we have the `knockpy` tool (pre-installed on kali
linux). This tool has 2 methods:
- `--recon`: use DNS records.
- `--bruteforce`: use word list and bruteforce checking.

Discovering Sensitive Files: we have the `dirb` tool (also pre-installed on
kali linux). This tool uses bruteforce with wordlist. Which means it's just for
convenient.

## Website hacking - Files

File uploading: we can upload execution files on a server (ex: php shell). We
have tools for generating these scripts. One of them is `weevely`.

`weevely` generated script is really powerful, if success, we can implant
backdoors easily.

Remote code execution: if we managed to run code on a server (ex: through
insecure input), we can plant tcp backdoor using tools like `nc`, python's
`socket`, ruby's `TCPSocket`, or perl, php equivalents, etc.

File inclusion: if a website has the ability to load other files on the system,
we can take advantages of this to load other important files outside of the
current app.

Remote file inclusion: the target website can sometimes load remote files as
well. This behavior makes them terribly vulnerable.

## Website hacking - SQL injection

Most applications are just CRUD apps that interact with databases. So SQL
injection is a pretty serious problem.

To discover SQL injection vulnerabilities, we would manipulate those inputs of
forms, inspect the errors, testing.

We could try to first input valid sql in those inputs and see if it runs
successfully.

After aquired a SQL vulnerability, we can pretty much do almost anything we
want with the target's database.

In SQL we have the function `load_file()`. I did not know this, interesting. We
can even create files `into outfile '/var/www/someapp/dangerous.txt'`

Tool: `sqlmap` - Automatic SQL injection and database takeover tool.

This tool supports many SQL injection techniques and all database management
systems I could think of.

How to prevent SQL injection: parameterized (`select... ?, argument`) ->
separate data from sql code.
