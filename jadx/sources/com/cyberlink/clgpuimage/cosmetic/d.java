package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ a f25778b;

    public d(a aVar, float f2) {
        this.f25778b = aVar;
        this.f25777a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f25778b;
        aVar.setFloat(aVar.K, this.f25777a);
    }
}
