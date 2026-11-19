package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class GmsLogger {
    public GmsLogger(String str, String str2) {
        Preconditions.i(str, "log tag cannot be null");
        int length = str.length();
        Preconditions.c(length <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
    }

    public GmsLogger(String str) {
        this(str, null);
    }
}
