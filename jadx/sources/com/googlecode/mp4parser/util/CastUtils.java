package com.googlecode.mp4parser.util;

import defpackage.o60;
import defpackage.v7;

/* JADX INFO: loaded from: classes2.dex */
public class CastUtils {
    public static int a(long j2) {
        if (j2 <= 2147483647L && j2 >= -2147483648L) {
            return (int) j2;
        }
        v7.h(o60.i(j2, "A cast to int has gone wrong. Please contact the mp4parser discussion group (", ")"));
        return 0;
    }
}
