package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzack extends zzacl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30363b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30364c;
    public final /* synthetic */ zzacr d;

    public zzack(zzacr zzacrVar) {
        this.d = zzacrVar;
        this.f30364c = zzacrVar.f();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f30363b < this.f30364c;
    }
}
