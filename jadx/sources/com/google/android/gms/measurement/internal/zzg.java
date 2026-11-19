package com.google.android.gms.measurement.internal;

import defpackage.md;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzg extends zzf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31741b;

    public zzg(zzic zzicVar) {
        super(zzicVar);
        this.f31850a.A++;
    }

    public final void h() {
        if (this.f31741b) {
            return;
        }
        md.k("Not initialized");
    }

    public final void i() {
        if (this.f31741b) {
            md.k("Can't initialize twice");
        } else {
            if (j()) {
                return;
            }
            this.f31850a.C.incrementAndGet();
            this.f31741b = true;
        }
    }

    public abstract boolean j();
}
