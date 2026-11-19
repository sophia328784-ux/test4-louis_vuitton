package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ boolean f25820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25821b;

    public u(CLMakeupLiveFilter cLMakeupLiveFilter, boolean z) {
        this.f25821b = cLMakeupLiveFilter;
        this.f25820a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25821b.w4 = this.f25820a;
    }
}
