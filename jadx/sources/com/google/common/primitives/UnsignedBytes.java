package com.google.common.primitives;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class UnsignedBytes {
    public static byte a(long j2) {
        Preconditions.d(j2, "out of range: %s", (j2 >> 8) == 0);
        return (byte) j2;
    }
}
