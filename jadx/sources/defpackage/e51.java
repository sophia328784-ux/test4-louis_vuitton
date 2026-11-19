package defpackage;

import com.sightcall.universal.ui.UniversalLoadingActivity;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e51 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UniversalLoadingActivity f68770c;

    public /* synthetic */ e51(UniversalLoadingActivity universalLoadingActivity, int i2) {
        this.f68769b = i2;
        this.f68770c = universalLoadingActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68769b;
        UniversalLoadingActivity universalLoadingActivity = this.f68770c;
        switch (i2) {
            case 0:
                universalLoadingActivity.lambda$new$1();
                break;
            default:
                universalLoadingActivity.lambda$new$0();
                break;
        }
    }
}
