package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzec implements zzdm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzdo f29708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzed f29709b;

    public zzec(zzcg zzcgVar, String str, Object[] objArr) {
        this.f29708a = zzcgVar;
        this.f29709b = new zzed(zzcgVar.getClass(), str, objArr);
    }

    @Override // com.google.android.gms.internal.clearcut.zzdm
    public final int a() {
        return (this.f29709b.d & 1) == 1 ? 1 : 2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdm
    public final boolean b() {
        return (this.f29709b.d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdm
    public final zzdo c() {
        return this.f29708a;
    }
}
