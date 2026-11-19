package com.perfectcorp.uma.countly;

/* JADX INFO: loaded from: classes3.dex */
final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ d f43227a;

    public g(d dVar) {
        this.f43227a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f43227a;
        synchronized (dVar) {
            if (dVar.f43223f > 0) {
                d.g.submit(new k(dVar, dVar.h()));
            }
        }
    }
}
