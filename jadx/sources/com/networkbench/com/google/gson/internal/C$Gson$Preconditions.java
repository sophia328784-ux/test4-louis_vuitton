package com.networkbench.com.google.gson.internal;

import defpackage.ct0;

/* JADX INFO: renamed from: com.networkbench.com.google.gson.internal.$Gson$Preconditions, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final class C$Gson$Preconditions {
    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        ct0.c();
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }
}
