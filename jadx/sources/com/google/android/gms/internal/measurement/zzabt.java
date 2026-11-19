package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public final class zzabt implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadLocal f30352c = new zzabs();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30353b = 0;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i2 = this.f30353b;
        if (i2 > 0) {
            this.f30353b = i2 - 1;
        } else {
            md.h("Mismatched calls to RecursionDepth (possible error in core library)");
        }
    }
}
