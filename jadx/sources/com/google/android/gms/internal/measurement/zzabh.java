package com.google.android.gms.internal.measurement;

import defpackage.d21;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzabh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzza f30343b;

    public zzabh(zzza zzzaVar, int i2) {
        if (zzzaVar == null) {
            md.n("format options cannot be null");
            throw null;
        }
        if (i2 < 0) {
            md.n(d21.f(i2, "invalid index: ", new StringBuilder(String.valueOf(i2).length() + 15)));
            throw null;
        }
        this.f30342a = i2;
        this.f30343b = zzzaVar;
    }

    public abstract void a(zzyy zzyyVar, Object obj);
}
