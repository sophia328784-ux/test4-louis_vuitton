package defpackage;

import com.batch.android.v0.l;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k91 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f71602c;

    public /* synthetic */ k91(l lVar, int i2) {
        this.f71601b = i2;
        this.f71602c = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71601b;
        l lVar = this.f71602c;
        switch (i2) {
            case 0:
                lVar.j();
                break;
            default:
                lVar.l();
                break;
        }
    }
}
