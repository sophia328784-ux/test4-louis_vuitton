package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ e f25798b;

    public h(e eVar, float f2) {
        this.f25798b = eVar;
        this.f25797a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f25798b;
        eVar.setFloat(eVar.K, this.f25797a);
    }
}
