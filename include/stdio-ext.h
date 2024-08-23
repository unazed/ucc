#pragma once

#include <stdio.h>

__attribute__((nonnull (1)))
int fpeek (FILE* stream, long lookahead);

__attribute__((nonnull (1)))
int fconsume (FILE* stream, long offset);

int isoctdigit (int ch);

int isident (int ch);
int isident_f (int ch);
