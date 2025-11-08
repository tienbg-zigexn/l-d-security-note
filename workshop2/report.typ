#set document(title: "WORKSHOP2 REPORT", author: "Bùi Gia Tiến")
#set heading(numbering: "1.")

#title()
#context document.author.first()

#outline()

#heading(numbering: none)[Summary]

+ There is NO upload endpoint to be exploited.
+ Accessing arbitrary URLs get 404 responses.

= Check whitelist/blacklist for file uploads — compare MIME type vs. actual file content.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint.

= Check file size limits and rate limiting.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint.

= Check for the presence of antivirus / upload scanning.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint.

= Check filename sanitization and the ability to upload unsafe filenames.
/ Severity: #text(blue)[Information]
/ Result: Unable to locate a file upload endpoint.

= Test for LFI (path traversal) and verify (non-destructive).
/ Severity: #text(blue)[Information]
/ Result: Accessing arbitrary URLs is blocked and got 404 response.
