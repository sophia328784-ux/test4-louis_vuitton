package defpackage;

import com.sightcall.universal.internal.view.ProgressivexImageView;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class nq0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProgressivexImageView f76595c;

    public /* synthetic */ nq0(ProgressivexImageView progressivexImageView, int i2) {
        this.f76594b = i2;
        this.f76595c = progressivexImageView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f76594b;
        ProgressivexImageView progressivexImageView = this.f76595c;
        switch (i2) {
            case 0:
                progressivexImageView.lambda$loadBitmap$0();
                break;
            default:
                progressivexImageView.lambda$loadInitialData$3();
                break;
        }
    }
}
