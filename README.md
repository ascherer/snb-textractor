# SNB TEXTractor.

This is a small Perl script for extracting “just the text” from a set of “Samsung Note” (`snb`) files.

## Background

After switching from a ”Samsung Galaxy S3 mini” smartphone to a “Lenovo Moto G4 Play”, all I could transfer were the exported notes in PDF format. Although these *can* be read with a suitable PDF viewer like “[MuPDF](https://play.google.com/store/apps/details?id=com.artifex.mupdfdemo)”, there’s no easy access to the text contents. (Moreover, the PDF files are **huge** compared to the plain text.)

So I hastily whipped together this small Perl program to grab and extract the plain text contents of my colletion of notes.

## Invocation

Simply run the script in a directory containing one or more `.snb` files. The resulting `.txt` files will be created next to their origin.

## Outlook

“Google Play” claims that the “[SNote](https://play.google.com/store/apps/details?id=com.samsung.android.snote)” app “is not compatible with your device”. Instead of looking further for a working replacement, I use “[AndTidWiki](https://play.google.com/store/apps/details?id=de.mgsimon.android.andtidwiki)” for keeping notes on the “Lenovo”, respctively, with the help of “[File Shortcut](https://play.google.com/store/apps/details?id=com.nagopy.file.shortcut)” on the *external* SD card.
