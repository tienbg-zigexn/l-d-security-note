# Note when reading the book

<!--toc:start-->
- [Note when reading the book](#note-when-reading-the-book)
  - [Chapter 1: Introduction to Ethical Hacking](#chapter-1-introduction-to-ethical-hacking)
    - [Terminologies](#terminologies)
    - [Threat actors](#threat-actors)
    - [What matters to threat actors](#what-matters-to-threat-actors)
    - [Penetration testing](#penetration-testing)
    - [Penetration testing methodologies](#penetration-testing-methodologies)
      - [Pre-engagement phase](#pre-engagement-phase)
      - [Information gathering phase](#information-gathering-phase)
      - [Threat modeling](#threat-modeling)
      - [Vulnerability analysis](#vulnerability-analysis)
      - [Exploitation](#exploitation)
      - [Post-exploitation](#post-exploitation)
      - [Report writing](#report-writing)
    - [Penetration testing approaches](#penetration-testing-approaches)
    - [Types of penetration testing](#types-of-penetration-testing)
    - [Phases of penetration testing](#phases-of-penetration-testing)
      - [Reconnaissance](#reconnaissance)
      - [Scanning and enumeration](#scanning-and-enumeration)
      - [Gaining access (exploitation)](#gaining-access-exploitation)
      - [Maintaining access](#maintaining-access)
      - [Covering your tracks](#covering-your-tracks)
<!--toc:end-->

The author of this book is just teaching and writing books. He does not do
real works. I am getting a hard time convince myself to read.

I read the third edition by the way, not the second.

## Chapter 1: Introduction to Ethical Hacking

### Terminologies

Asset: Anything that has values. Categories:

- Tangible: servers, computers, network devices, etc.
- Intangible: plan, data, software, intellectual properties, etc.
- People: customers, employees, personal identity information, etc.
- Threat: anything that has potentials to cause harm, damage to a asset.
- Vulnerability: security weaknesses or flaw in the system (most
  significant is human errors).
- Exploit: tool, code or anything that takes advantage of security
  vulnerabilities.
- Attack: method, technique to exploit a weakness.
- Attack vector: area or pathway.
    - Direct access
    - Wireless
    - Email
    - Supply chain
        (this reminds me of the latest npm supply chain attack. Just this
        one maintainer who got tricked by a phishing email and causes
        indirect harm to a bunch of people through dependencies hell. This
        incident shows me how bad the node modules or node ecosystem is,
        and auto update is a terrible thing.)
    - Social media
    - Removable media (The auto run from Windows, I have seen too many.)
    - Cloud
- Risk: the potential impact or the likelihood of an attack, threat,
  vulnerability.
- Attack surface: vulnerable *entry* points.
- **Zero-day**: a security vulnerability that the vendor hasn't aware or
  developed a patch.

(I just notice that the author is using a lot of empty words. We can remove a
bunch of paragraphs without losing any meaning.)

### Threat actors

Script kiddie: Someone who does not fully understand the technical details of
cybersecurity to perform or develop a threat on their own. They are not
harmless, by following instructions, tutorials from malicious real hackers,
they can do equal harm or even worse.

Cyber terrorist: They target societies, they have ideological goals.

Hacktivist: (Reminds me of the 'V for Vendetta' movie.)

Insider: (Intel chipset has hardware-based back-doors, from Intel.)

State-sponsored: (Oh, China) The author is using fancy words again to describe
the basic concept that has existed through the whole history, **spy**. I am
laughing: reconnaissance, intelligence gathering.

Organized crime: Crime organizations are groups of expert people or have
specialized skill set, like a lawyer. With this level of efforts and resources,
their goals are big.

Black hat: Malicious goals.

White hat: Help people.

Gray hat: (Mr. Robot)

### What matters to threat actors

Time - Resources - Financial - Hack value

These factors can affect the worthwhile of a hack.

### Penetration testing

Organizations or companies hire these people to simulate real-world
cyber-attacks to discover and exploit hidden vulnerabilities.

After these works, the penetration testers will report detailing all the
findings, recommendations on how to mitigate and prevent.

### Penetration testing methodologies

We have some common methodologies/frameworks. Each can be used for different
kind of organizations, companies based on their industry, business.

- Penetration Testing Execution Standard (PTES)
- Payment Card Industry Data Security Standard (PCI DSS)
- Penetration Testing Framework (PTF)
- Technical Guide to Information Security Testing and Assessment
- Open Source Security Testing Methodology Manual
- OWASP Web Security Testing Guide
- OWASP Mobile Security Testing Guide
- OWASP Firmware Security Testing Methodology

This book will focus more on PTES as this can be applied to many scenarios.

#### Pre-engagement phase

The penetration testers and the customers setup legal boundaries. What to
touch, what not, which tools, etc.

Some legal agreements that force the service provider (penetration testing)
about credentials, proprietary informations.

I can call this the legal phase and scope settings.

For the penetration testers, they will have to understand the scope of a
penetration test in order to stay within the constraints.

#### Information gathering phase

Understand the target is super important before running any type of attacks.

Pros will spend 1-2 days just for gathering information, build profile about
target, identify attack surface, and determine which types of attacks are most
effective.

#### Threat modeling

There are standard, common models like `STRIDE` and `PASTA`.

I have nothing to say about this. These are just methods, or would I say, the
ways to approach a problem.

#### Vulnerability analysis

Hacker or penetration tester finds vulnerabilities both automatedly and
manually.

Analysis helps decision-makers determine priorities.

#### Exploitation

<!-- Haiz, this start to feel like homeworks. -->
<!-- Writing is fine, I love writing, but I also love to write what I want to
write only. Because we are doing this course from my company, I have to provide
some evidence of reading, studying. Some sections I would just skim over if I
don't have to write about everything. -->

The penetration testers do their research, create specific exploits that take
advantages of vulnerabilities of the system. They will now breaking into the
system.

#### Post-exploitation

This literally demonstrates the impact that the vulnerability and access gained
can pose to the targeted organization.

The hackers, penetration testers try to effect more on the network, setup
backdoors, C2, etc.

Good demonstrations help leadership, decision-makers better understand the
risks.

#### Report writing

Deliver step.

Reports have to be good, easy to understand for both technical and
non-technical customers. Illustrate the potential business impacts is
important. (MONEY)

### Penetration testing approaches

White box: Full information is provided.

Black box: Little or no information at all, except the name of the target.

Gray box: The customer wants blackbox but also wants to reduce time conduct
reconnaissance, so they try to give 'enough' information.

### Types of penetration testing

(I see that these people really like acronyms. They come up with a long ass
name then create a acronym for it.)

- Web application
- Mobile application
- Social engineering
- Network (external & internal)
- Cloud
- Physical

### Phases of penetration testing

#### Reconnaissance

Information gathering. The collected information is analyzed to build profile
about the targeted system. This helps develop/acquire specific exploits
suitable for the targeted systems.

Techniques:
- Use search engine
- Social networking platforms
- Perform google hacking techniques (What is this?)
- Perform DNS interrogration
- Social engineering

#### Scanning and enumeration

Improve the profile of the target.

Techniques:
- Host discovery
- Check firewalls, rules
- Check open ports, running services
- Check security vulnerabilities
- Create network topology of the target network

#### Gaining access (exploitation)

Based on information built from previous phases, threat actor craft or acquire
exploits from online sources that is designed to compromise the target.

Actions when access is gained:
- Retrieving and cracking passwords.
- Escalating previleges.
- Transferring additional payloads, malwares.

#### Maintaining access

Objectives:
- Lateral movement
- Exfiltration of data (What is this fancy word? It is not even exist in the
  oald - a dictionary.)
- Creating backdoors and persistent connections

#### Covering your tracks

Don't leave traces, don't trigger alerts, remove residual traces. Penetration
test is designed to be stealthy to simulate real-world attacks.
