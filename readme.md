# The security course from Zigexn L&D team

<!--toc:start-->
- [The security course from Zigexn L&D team](#the-security-course-from-zigexn-ld-team)
  - [Other notes](#other-notes)
  - [Structure](#structure)
  - [Hacking lab](#hacking-lab)
  - [On warp terminal](#on-warp-terminal)
  - [Hard disk problems](#hard-disk-problems)
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

I have no choice. I have to use my spare personal machine to install these VMs
and practice. Should I request more storage?
