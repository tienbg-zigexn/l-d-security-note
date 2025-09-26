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

## On warp terminal

I hate the fact that this course suggests using this terminal emulator. The
concept of letting an LLM have access to your shell is really terrible. And
this is a **security** course.

I refuse to use it.

## Hard disk problems

One of my docker volume (database for ONE project) reach nearly 100 GiB. This
Dell laptop that Zigexn provides me does not have enough spaces for me to
confidently install another 3 VMs, especially one of them is a windows. I can
re-flesh my database and reduce the volume to less than 60 GiB, but this
requires the whole next Saturday of mine.
