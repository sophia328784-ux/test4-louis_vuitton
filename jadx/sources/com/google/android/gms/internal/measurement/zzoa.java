package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzoa extends zzof {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile double f30771f;

    @Override // com.google.android.gms.internal.measurement.zznw
    public final /* synthetic */ void K(Object obj) {
        this.f30771f = ((Double) obj).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final /* synthetic */ Object b(String str) {
        return Double.valueOf(Double.parseDouble(str));
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final /* synthetic */ Object c(Object obj) {
        return (Double) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zznw
    public final /* synthetic */ Object h0() {
        return Double.valueOf(this.f30771f);
    }
}
