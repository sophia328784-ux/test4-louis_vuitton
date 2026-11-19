package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ a f25774b;

    public b(a aVar, float f2) {
        this.f25774b = aVar;
        this.f25773a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f25774b;
        aVar.setFloat(aVar.I, this.f25773a);
    }
}
