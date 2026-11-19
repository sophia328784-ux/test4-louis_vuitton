package defpackage;

import com.batch.android.o.e;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t81 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f80007c;

    public /* synthetic */ t81(e eVar, int i2) {
        this.f80006b = i2;
        this.f80007c = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80006b;
        e eVar = this.f80007c;
        switch (i2) {
            case 0:
                eVar.d();
                break;
            default:
                eVar.c();
                break;
        }
    }
}
