package defpackage;

import com.perfectcorp.common.network.ProgressCallback;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class px0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProgressCallback f78945c;

    public /* synthetic */ px0(ProgressCallback progressCallback, int i2) {
        this.f78944b = i2;
        this.f78945c = progressCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f78944b;
        ProgressCallback progressCallback = this.f78945c;
        switch (i2) {
            case 0:
                progressCallback.a(1.0d);
                break;
            case 1:
                progressCallback.a(0.9d);
                break;
            case 2:
                progressCallback.a(0.1d);
                break;
            case 3:
                progressCallback.a(0.0d);
                break;
            case 4:
                progressCallback.a(1.0d);
                break;
            case 5:
                progressCallback.a(0.2d);
                break;
            case 6:
                progressCallback.a(0.0d);
                break;
            case 7:
                progressCallback.a(0.0d);
                break;
            case 8:
                progressCallback.a(1.0d);
                break;
            case 9:
                progressCallback.a(0.0d);
                break;
            case 10:
                progressCallback.a(1.0d);
                break;
            case 11:
                progressCallback.a(0.1d);
                break;
            case 12:
                progressCallback.a(0.2d);
                break;
            case 13:
                progressCallback.a(0.8d);
                break;
            case 14:
                progressCallback.a(0.9d);
                break;
            default:
                progressCallback.a(1.0d);
                break;
        }
    }
}
