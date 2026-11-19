package com.google.android.gms.measurement.internal;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzos extends zzol {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31956c;

    public zzos(zzpg zzpgVar) {
        super(zzpgVar);
        this.f31948b.r++;
    }

    public final void h() {
        if (this.f31956c) {
            return;
        }
        md.k("Not initialized");
    }

    public final void i() {
        if (this.f31956c) {
            md.k("Can't initialize twice");
            return;
        }
        j();
        this.f31948b.s++;
        this.f31956c = true;
    }

    public abstract void j();
}
