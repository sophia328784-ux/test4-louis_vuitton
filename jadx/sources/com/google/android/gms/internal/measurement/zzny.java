package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzny extends zzof {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f30770f;

    @Override // com.google.android.gms.internal.measurement.zznw
    public final /* synthetic */ void K(Object obj) {
        this.f30770f = ((Boolean) obj).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final /* synthetic */ Object b(String str) {
        return Boolean.valueOf(Boolean.parseBoolean(str));
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final /* synthetic */ Object c(Object obj) {
        return (Boolean) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zznw
    public final /* synthetic */ Object h0() {
        return Boolean.valueOf(this.f30770f);
    }
}
