package com.batch.android.l;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c.a f23638c;

    public /* synthetic */ f(c.a aVar, int i2) {
        this.f23637b = i2;
        this.f23638c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f23637b;
        c.a aVar = this.f23638c;
        switch (i2) {
            case 0:
                aVar.a();
                break;
            default:
                aVar.b();
                break;
        }
    }
}
