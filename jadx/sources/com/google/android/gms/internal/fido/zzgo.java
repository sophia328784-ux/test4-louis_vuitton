package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes2.dex */
final class zzgo extends zzgq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29896b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29897c;
    public final /* synthetic */ zzgx d;

    public zzgo(zzgx zzgxVar) {
        this.d = zzgxVar;
        this.f29897c = zzgxVar.h();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29896b < this.f29897c;
    }
}
