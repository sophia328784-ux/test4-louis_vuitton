package com.cyberlink.clgpuimage.cosmetic;

/* JADX INFO: loaded from: classes2.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float f25822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25823b;

    public v(CLMakeupLiveFilter cLMakeupLiveFilter, float f2) {
        this.f25823b = cLMakeupLiveFilter;
        this.f25822a = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25823b.m1 = this.f25822a;
    }
}
