package com.google.android.gms.internal.measurement;

import defpackage.ct0;
import defpackage.d21;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzwn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzwn f31047c;
    public final HashMap d = new HashMap(0);

    public zzwn(int i2, int i3) {
        if (i2 > i3) {
            ct0.c();
            throw null;
        }
        this.f31045a = i2;
        this.f31046b = i3;
        this.f31047c = null;
    }

    public final String toString() {
        int iIdentityHashCode = System.identityHashCode(this);
        return d21.f(iIdentityHashCode, "Node", new StringBuilder(String.valueOf(iIdentityHashCode).length() + 4));
    }
}
