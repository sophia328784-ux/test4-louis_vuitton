package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzje implements zzjg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f31850a;

    public zzje(zzic zzicVar) {
        Preconditions.h(zzicVar);
        this.f31850a = zzicVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzae a() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzgu b() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzhz c() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Context d() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Clock e() {
        throw null;
    }

    public void g() {
        zzhz zzhzVar = this.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
    }
}
