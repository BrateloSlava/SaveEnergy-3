/*
 *  linux/include/linux/freq_define.h
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */
#ifndef _LINUX_FREQ_DEFINE_H
#define _LINUX_FREQ_DEFINE_H

/* defaults for min/max CPU freq values */
#define MIN_CPU_GOVERNOR_FREQ 162000

#ifdef CONFIG_CPU_OVERCLOCK
#define MAX_CPU_GOVERNOR_FREQ	1674000
#else
#define MAX_CPU_GOVERNOR_FREQ	1188000 
#endif

/* defaults for max CPU freq values in sleep state */
#define MAX_CPU_SLEEP_FREQ	702000

/* ---  */
#define MAX_TWO_PHASE_FREQ	918000
#define MAX_INPUT_EVENT_FREQ	486000
#define MAX_CPU_SYNC_FREQ	594000

#endif