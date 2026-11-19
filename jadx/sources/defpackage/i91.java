package defpackage;

import com.batch.android.v0.k;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i91 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f69925c;

    public /* synthetic */ i91(k kVar, int i2) {
        this.f69924b = i2;
        this.f69925c = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69924b;
        k kVar = this.f69925c;
        switch (i2) {
            case 0:
                kVar.i();
                break;
            default:
                kVar.k();
                break;
        }
    }
}
