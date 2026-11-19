package com.perfectcorp.uma.countly;

/* JADX INFO: loaded from: classes3.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ int f43234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ d f43235b;

    public k(d dVar, int i2) {
        this.f43235b = dVar;
        this.f43234a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar = this.f43235b.f43219a;
        int i2 = this.f43234a;
        bVar.d();
        if (i2 > 0) {
            bVar.f43208a.b(bVar.a(new u()) + "&session_duration=" + i2);
            bVar.e();
        }
        if (((int) this.f43235b.d.f43254a.a().e("EVENT_TABLE")) > 0) {
            this.f43235b.g();
        }
    }
}
