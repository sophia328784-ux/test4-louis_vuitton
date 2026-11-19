package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzoc extends zzof {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile long f30772f;

    @Override // com.google.android.gms.internal.measurement.zznw
    public final /* synthetic */ void K(Object obj) {
        this.f30772f = ((Long) obj).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final /* synthetic */ Object b(String str) {
        return Long.valueOf(Long.parseLong(str));
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final /* synthetic */ Object c(Object obj) {
        return (Long) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zznw
    public final /* synthetic */ Object h0() {
        return Long.valueOf(this.f30772f);
    }
}
