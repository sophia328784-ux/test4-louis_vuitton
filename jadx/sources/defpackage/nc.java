package defpackage;

import androidx.media3.common.util.BackgroundThreadStateHandler;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nc implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BackgroundThreadStateHandler f76494c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nc(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj, int i2) {
        this.f76493b = i2;
        this.f76494c = backgroundThreadStateHandler;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f76493b;
        Object obj = this.d;
        BackgroundThreadStateHandler backgroundThreadStateHandler = this.f76494c;
        switch (i2) {
            case 0:
                if (backgroundThreadStateHandler.f14139f == 0) {
                    backgroundThreadStateHandler.b(obj);
                }
                break;
            default:
                int i3 = backgroundThreadStateHandler.f14139f - 1;
                backgroundThreadStateHandler.f14139f = i3;
                if (i3 == 0) {
                    backgroundThreadStateHandler.b(obj);
                }
                break;
        }
    }
}
