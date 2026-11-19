package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes3.dex */
final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Runnable f42442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ x f42443b;

    public y(x xVar, Runnable runnable) {
        this.f42443b = xVar;
        this.f42442a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f42443b.f42440b = false;
        this.f42442a.run();
    }
}
