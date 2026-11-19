package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzyn extends zzyq {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzyq f31093c;
    public final /* synthetic */ zzyq d;

    public zzyn(zzyq zzyqVar, zzyq zzyqVar2) {
        this.f31093c = zzyqVar;
        this.d = zzyqVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        zzyq zzyqVar = this.d;
        try {
            this.f31093c.a();
        } finally {
            zzyqVar.a();
        }
    }
}
