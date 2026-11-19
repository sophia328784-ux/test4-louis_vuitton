package com.appsflyer.internal;

import com.appsflyer.sdk_base.referrer.ReferrerProp;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFi1aSDK f22704c;
    public final /* synthetic */ ReferrerProp d;

    public /* synthetic */ r(AFi1aSDK aFi1aSDK, ReferrerProp referrerProp, int i2) {
        this.f22703b = i2;
        this.f22704c = aFi1aSDK;
        this.d = referrerProp;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22703b;
        ReferrerProp referrerProp = this.d;
        AFi1aSDK aFi1aSDK = this.f22704c;
        switch (i2) {
            case 0:
                aFi1aSDK.AFLogger(referrerProp);
                break;
            default:
                aFi1aSDK.registerClient(referrerProp);
                break;
        }
    }
}
