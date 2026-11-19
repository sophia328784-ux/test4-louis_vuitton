package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ e f25796b;

    public g(e eVar, float f2) {
        this.f25796b = eVar;
        this.f25795a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f25796b;
        eVar.setFloat(eVar.J, this.f25795a);
    }
}
