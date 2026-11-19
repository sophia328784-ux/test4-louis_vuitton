package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzmm extends zzaz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zznl f31910e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzmm(zznl zznlVar, zzic zzicVar) {
        super(zzicVar);
        this.f31910e = zznlVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaz
    public final void a() {
        zznl zznlVar = this.f31910e;
        zznlVar.g();
        if (zznlVar.x()) {
            zzgu zzguVar = zznlVar.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.a("Inactivity, disconnecting from the service");
            zznlVar.o();
        }
    }
}
