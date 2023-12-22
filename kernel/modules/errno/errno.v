// errno.v: Errno values for all the kernel errors.
// Code is governed by the GPL-2.0 license.
// Copyright (C) 2021-2022 The Vinix authors.

module errno

import proc

pub const err = u64(-1)

pub const (
	eperm = 1
	enoent = 2
	esrch = 3
	eintr = 4
	eio = 5
	enxio = 6
	e2big = 7
	enoexec = 8
	ebadf = 9
	echild = 10
	eagain = 11
	enomem = 12
	eacces = 13
	efault = 14
	enotblk = 15
	ebusy = 16
	eexist = 17
	exdev = 18
	enodev = 19
	enotdir = 20
	eisdir = 21
	einval = 22
	enfile = 23
	emfile = 24
	enotty = 25
	etxtbsy = 26
	efbig = 27
	enospc = 28
	espipe = 29
	erofs = 30
	emlink = 31
	epipe = 32
	edom = 33
	erange = 34
	edeadlk = 35
	enametoolong = 36
	enolck = 37
	enosys = 38
	enotempty = 39
	eloop = 40
	ewouldblock = eagain
	enomsg = 42
	eidrm = 43
	echrng = 44
	el2nsync = 45
	el3hlt = 46
	el3rst = 47
	elnrng = 48
	eunatch = 49
	enocsi = 50
	el2hlt = 51
	ebade = 52
	ebadr = 53
	exfull = 54
	enoano = 55
	ebadrqc = 56
	ebadslt = 57
	edeadlock = edeadlk
	ebfont = 59
	enostr = 60
	enodata = 61
	etime = 62
	enosr = 63
	enonet = 64
	enopkg = 65
	eremote = 66
	enolink = 67
	eadv = 68
	esrmnt = 69
	ecomm = 70
	eproto = 71
	emultihop = 72
	edotdot = 73
	ebadmsg = 74
	eoverflow = 75
	enotuniq = 76
	ebadfd = 77
	eremchg = 78
	elibacc = 79
	elibbad = 80
	elibscn = 81
	elibmax = 82
	elibexec = 83
	eilseq = 84
	erestart = 85
	estrpipe = 86
	eusers = 87
	enotsock = 88
	edestaddrreq = 89
	emsgsize = 90
	eprototype = 91
	enoprotoopt = 92
	eprotonosupport = 93
	esocktnosupport = 94
	eopnotsupp = 95
	enotsup = eopnotsupp
	epfnosupport = 96
	eafnosupport = 97
	eaddrinuse = 98
	eaddrnotavail = 99
	enetdown = 100
	enetunreach = 101
	enetreset = 102
	econnaborted = 103
	econnreset = 104
	enobufs = 105
	eisconn = 106
	enotconn = 107
	eshutdown = 108
	etoomanyrefs = 109
	etimedout = 110
	econnrefused = 111
	ehostdown = 112
	ehostunreach = 113
	ealready = 114
	einprogress = 115
	estale = 116
	euclean = 117
	enotnam = 118
	enavail = 119
	eisnam = 120
	eremoteio = 121
	edquot = 122
	enomedium = 123
	emediumtype = 124
	ecanceled = 125
	enokey = 126
	ekeyexpired = 127
	ekeyrevoked = 128
	ekeyrejected = 129
	eownerdead = 130
	enotrecoverable = 131
	erfkill = 132
	ehwpoison = 133
)

pub fn get() u64 {
	return proc.current_thread().errno
}

pub fn set(err_no u64) {
	proc.current_thread().errno = err_no
}
