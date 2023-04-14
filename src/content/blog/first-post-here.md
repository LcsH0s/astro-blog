---
author: Isaac Dagr
pubDatetime: 2023-05-14T11:40:00Z
title: First post here!
postSlug: first-post-here
featured: true
draft: false
tags:
  - test
ogImage: ""
description:
  The first post that I ever posted here. This is a little test!
  But... how did you find this?
---

Here is my first EVER post on my blog! I hope you enjoy it here! :)

## Table of contents

## Some tests

### Code test

Here is a little test on code linting:

```c
#include <stdio.h>
int main() {

  int i, n;

  // initialize first and second terms
  int t1 = 0, t2 = 1;

  // initialize the next term (3rd term)
  int nextTerm = t1 + t2;

  // get no. of terms from user
  printf("Enter the number of terms: ");
  scanf("%d", &n);

  // print the first two terms t1 and t2
  printf("Fibonacci Series: %d, %d, ", t1, t2);

  // print 3rd to nth terms
  for (i = 3; i <= n; ++i) {
    printf("%d, ", nextTerm);
    t1 = t2;
    t2 = nextTerm;
    nextTerm = t1 + t2;
  }

  return 0;
}
```

### And here is an image test

![Drag Racing](https://blog.dagrcorp.com/assets/5unn16axx1v81.jpg)


## Conclusion

I hope that you will be enjoying reading this blog as much as I am while writting it!