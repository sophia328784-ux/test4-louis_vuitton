package defpackage;

import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wt0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Rtcc f80941c;

    public /* synthetic */ wt0(Rtcc rtcc, int i2) {
        this.f80940b = i2;
        this.f80941c = rtcc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80940b;
        Rtcc rtcc = this.f80941c;
        switch (i2) {
            case 0:
                rtcc.lambda$loadLibrary$1();
                break;
            default:
                rtcc.lambda$teardown$3();
                break;
        }
    }
}
