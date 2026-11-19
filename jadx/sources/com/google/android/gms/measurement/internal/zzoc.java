package com.google.android.gms.measurement.internal;

import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzoc extends zzg {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.google.android.gms.internal.measurement.zzcl f31936c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzob f31937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzoa f31938f;
    public final zzny g;

    public zzoc(zzic zzicVar) {
        super(zzicVar);
        this.d = true;
        this.f31937e = new zzob(this);
        this.f31938f = new zzoa(this);
        this.g = new zzny(this);
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean j() {
        return false;
    }

    public final void k() {
        g();
        if (this.f31936c == null) {
            this.f31936c = new com.google.android.gms.internal.measurement.zzcl(Looper.getMainLooper());
        }
    }
}
