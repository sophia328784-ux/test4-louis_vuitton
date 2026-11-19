package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFj1vSDK f22712c;

    public /* synthetic */ v(AFj1vSDK aFj1vSDK, int i2) {
        this.f22711b = i2;
        this.f22712c = aFj1vSDK;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22711b;
        AFj1vSDK aFj1vSDK = this.f22712c;
        switch (i2) {
            case 0:
                aFj1vSDK.w();
                break;
            case 1:
                aFj1vSDK.v();
                break;
            default:
                aFj1vSDK.force();
                break;
        }
    }
}
