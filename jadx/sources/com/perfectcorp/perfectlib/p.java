package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ double f41101c;
    public final /* synthetic */ Object d;

    public /* synthetic */ p(Object obj, double d, int i2) {
        this.f41100b = i2;
        this.d = obj;
        this.f41101c = d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f41100b;
        double d = this.f41101c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                ((ApplyEffectUtility.ProgressCallbackMainThreadWrapper) obj).f39483a.a(d);
                break;
            default:
                ((SkinCare3RecommendationHandler.AnonymousClass1) ((RecommendationHandler.SyncServerCallback) obj)).progress(d);
                break;
        }
    }
}
