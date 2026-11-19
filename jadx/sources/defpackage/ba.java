package defpackage;

import android.os.Process;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ba implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f20806c;

    public /* synthetic */ ba(Runnable runnable, int i2) {
        this.f20805b = i2;
        this.f20806c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20805b) {
            case 0:
                Process.setThreadPriority(-16);
                this.f20806c.run();
                break;
            case 1:
                Process.setThreadPriority(-3);
                this.f20806c.run();
                break;
            default:
                this.f20806c.run();
                break;
        }
    }
}
