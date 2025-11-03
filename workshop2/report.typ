#set document(title: "WORKSHOP2 REPORT", author: "Tien Bui Gia")
#set heading(numbering: "1.")

#title()
#context document.author.first()

#outline()

#heading(numbering: none)[Summary]

+ There is NO upload endpoint to be exploited.
  + Login/Signin page is blocked by GCP. @login_blocked
+ Accessing arbitrary URLs is blocked by GCP. @access_blocked

= Check whitelist/blacklist for file uploads — compare MIME type vs. actual file content.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint. An image upload feature may
  exist on the profile page, but access was blocked by GCP. @login_blocked

#figure(
  image("./login_blocked.png"),
  caption: "Login feature is blocked",
) <login_blocked>

= Check file size limits and rate limiting.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint. An image upload feature may
  exist on the profile page, but access was blocked by GCP. @login_blocked
= Check for the presence of antivirus / upload scanning.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint. An image upload feature may
  exist on the profile page, but access was blocked by GCP. @login_blocked
= Check filename sanitization and the ability to upload unsafe filenames.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint. An image upload feature may
  exist on the profile page, but access was blocked by GCP. @login_blocked
= Test for LFI (path traversal) and verify (non-destructive).
/ Severity: #text(blue)[Information]
/ Result: Accessing arbitrary URLs is blocked by GCP. @access_blocked

#figure(
  image("./access_blocked.png"),
  caption: "Access wrong URLs is blocked",
) <access_blocked>
