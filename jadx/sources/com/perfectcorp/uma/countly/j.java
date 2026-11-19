package com.perfectcorp.uma.countly;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ d f43233a;

    public j(d dVar) {
        this.f43233a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar = this.f43233a.f43219a;
        bVar.d();
        u uVar = new u();
        bVar.f43208a.b(bVar.a(uVar) + "&sdk_version=2.0&begin_session=1" + bVar.f43211e.a(uVar.f43257a));
        bVar.e();
        ExecutorService executorService = d.g;
        this.f43233a.f43219a.f43211e.c();
        this.f43233a.f43219a.f43211e.d();
        if (((int) this.f43233a.d.f43254a.a().e("EVENT_TABLE")) > 0) {
            this.f43233a.g();
        }
    }
}
