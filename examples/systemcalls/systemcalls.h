#ifndef SYSTEMCALLS_H
#define SYSTEMCALLS_H
#include <stdio.h>
#include <stdbool.h>
#include <stdarg.h>
#include <sched.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

bool do_system(const char *command);
bool do_exec(int count, ...);
bool do_exec_redirect(const char *output_file, int count, ...);

#endif
