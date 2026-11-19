package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ e f25794b;

    public f(e eVar, float f2) {
        this.f25794b = eVar;
        this.f25793a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f25794b;
        eVar.setFloat(eVar.I, this.f25793a);
    }
}
