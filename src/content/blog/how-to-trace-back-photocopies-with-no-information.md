---
author: Isaac Dagr
pubDatetime: 2023-05-14T19:01:00Z
title: How to trace back photocopies with no initial information
postSlug: how-to-trace-back-photocopies-with-no-information
featured: true
draft: false
tags:
  - privacy
  - security
  - ctf
ogImage: ""
description:
  In this article I’m going to show you a way to trace the author of any photocopy, no matter the content of the page.
---

You read the title right, in this article, I’m going to show you a way to trace the author of any photocopy, no matter the content of the page.

## Table of contents

![Photocopies Illustration](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/1.jpg)


## Introduction

Recently, I participated in the Maple CTF 2022. For those unfamiliar with the term, a CTF or “Capture The Flag” is a cybersecurity competition with challenges or “challenges” to solve in order to score points.

![Maple CTF Illustration](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/2.png)

They usually last a few days and the subject of this video was the subject of a challenge during the Maple CTF 2022 Edition.

## But then how do you identify a photocopy?

Let’s take for example, the photocopy provided in the Maple CTF challenge: 

![Base Photocopy](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/3.jpeg)

You can see that it looks a lot like those famous declassified CIA documents on sensitive subjects like Area 51 or that kind of thing.

The Challenge statement is vague: We have to find any information that identifies the author(s) of this document : 

![Maple Instructions](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/4.jpeg)

In cybersecurity, such an “investigation” is akin to a very special category of cyber: forensics. This could be defined as the discipline that groups together all the techniques for investigating a crime.

In any case, we must put ourselves in the shoes of a forensic investigator.

First of all, we put the document under several color filters in case something is written on it but only visible under a certain spectrum.

Aaaaaaand BINGO!! Using an RGB Blue filter (using this online super useful tool) and by paying very close attention, we can locate theses weird and unnatural looking patterns at the top of the page :

![Blue Photocopy](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/5.jpeg)

If we zoom on theses patterns, we can clearly see that this must be some kind of encoded information and that it CAN’T possibly be some innocent dots. Furthermore, looking at the perfectly ordered grid formed by those dots, they don’t seem to come from a possible printing defect.

![Blue Zoomed Photocopy](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/6.png)

The final indication that these patterns are definitely printed on purpose is that if you look a little longer, you can easily see that THE SAME pattern is repeated ALL OVER the page.

## But what are these yellow dots apparently “randomly” placed on this “confidential” document?

These more or less rectangular patterns are called the MIC or Machine Identification Code.

According to this August 2007 paper published by the EFF collective, it is written that “Almost all color laser printers ever created incorporate patterns of small yellow dots to track any page printed in color mode by the printer.

> “Almost all color laser printers and color photocopiers ever made embed patterns of small yellow dots for tracking on every output page printed in color mode” - EFF.org – Seth Schoen

In this same document, one can find the various methods of encodings known.

**DISCLAIMER:**  Here, it is important to specify “the known encodings” because these methods of encoding, or in our case of decoding, are not in any case published by the manufacturers of the printers.

These patterns are identified thanks to the decoding work of cryptology and steganography researchers. Still according to the 2007 publication of the EFF the known encodings are the Xerox and DocuColor, and others are partially known as the Epsom encoding, or Reverse-L as highlighted in this 2018 study published by Peter Buck.

In any case, knowing that our document is part of a CTF, the encoding is probably the most common and used of all, Xerox.

It is a silly binary encoding with the first column and first row used to check the parity, that is to say to correct possible errors.

So we can ignore them.

Then, from our trusty 2007 EFF document, we know that the first 4 columns encode the time, the next three, the date, and after our separator which is simply a solid column, we have a printer identification number. It is therefore probably a character string and it is therefore very likely that our flag is hidden there.

![Yellow Dots](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/7.png)

So let’s get on with the decoding!

## Decoding & Identification

We will assign to each line a weight, and add these weights multiplied by 0 or 1 if a dot is present in front of it or not.

We thus obtain a list of numbers in decimal which looks very much like a silly ASCII encoding. For those who have trouble recognizing the encodings at first glance like here, I put you a link to a super complete post (lol it’s mine but anyway go check it out) on all the basic encodings to know and to recognize to start the CTFs in Cryptology.

![Decoded](https://blog.dagrcorp.com/assets/how-to-trace-back-photocopies-with-no-information/8.png)

We only have to decode our ASCII code, and TADA!! A flag with the name of the CTF!

```
maple{tw0_D3C4D35_0f_st3g0}
```

## Conclusion

In conclusion, I would like to first express my admiration for this challenge. As a general rule I don’t like steganography very much because it doesn’t translate well in the cybersecurity industry and you rarely learn real skills in these challenges. But this time, the creativity makes the challenge super interesting and the applications to security are real! Now you know that your printer can probably identify you no matter what you print!

Anyway I hope you enjoyed this article, I had a blast making it and if you did, please leave a comment or like to appease the gods of my medium algorithm ^^

Don’t hesitate to subscribe to my blog if you don’t want to miss my next articles or checkout the previous ones I wrote, even if I admit I’m not the most regular guy on the platform hahaha

Byee ^^