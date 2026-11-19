package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ a f25776b;

    public c(a aVar, float f2) {
        this.f25776b = aVar;
        this.f25775a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = this.f25776b;
        aVar.setFloat(aVar.J, this.f25775a);
    }
}
