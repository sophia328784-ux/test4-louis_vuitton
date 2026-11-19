package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzcc implements zzca {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzw f30015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzce f30016b;

    public /* synthetic */ zzcc(zzce zzceVar) {
        this.f30016b = zzceVar;
        this.f30015a = new zzw(zzceVar.f30017a.getMainLooper(), new zzcb(this));
    }

    public final void a() {
        zzw zzwVar = this.f30015a;
        Object obj = zzce.l;
        zzwVar.removeMessages(1, obj);
        zzwVar.sendMessageDelayed(zzwVar.obtainMessage(1, obj), 1800000L);
    }
}
