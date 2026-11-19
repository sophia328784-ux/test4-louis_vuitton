package com.google.android.gms.measurement.internal;

import defpackage.md;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjf extends zzje {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31851b;

    public zzjf(zzic zzicVar) {
        super(zzicVar);
        this.f31850a.A++;
    }

    public abstract boolean h();

    public final void i() {
        if (this.f31851b) {
            return;
        }
        md.k("Not initialized");
    }

    public final void j() {
        if (this.f31851b) {
            md.k("Can't initialize twice");
        } else {
            if (h()) {
                return;
            }
            this.f31850a.C.incrementAndGet();
            this.f31851b = true;
        }
    }
}
