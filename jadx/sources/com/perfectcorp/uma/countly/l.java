package com.perfectcorp.uma.countly;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
final class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ int f43236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ String f43237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ d f43238c;

    public l(d dVar, int i2, String str) {
        this.f43238c = dVar;
        this.f43236a = i2;
        this.f43237b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f43238c.f43219a.b(this.f43236a, this.f43237b);
        ExecutorService executorService = d.g;
        this.f43238c.f43219a.f43211e.c();
        this.f43238c.f43219a.f43211e.d();
        if (((int) this.f43238c.d.f43254a.a().e("EVENT_TABLE")) > 0) {
            this.f43238c.g();
        }
    }
}
