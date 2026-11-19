package com.appsflyer.internal;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFj1sSDK f22710c;
    public final /* synthetic */ String d;

    public /* synthetic */ u(AFj1sSDK aFj1sSDK, String str, int i2) {
        this.f22709b = i2;
        this.f22710c = aFj1sSDK;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f22709b;
        String str = this.d;
        AFj1sSDK aFj1sSDK = this.f22710c;
        switch (i2) {
            case 0:
                return AFj1sSDK.U_(aFj1sSDK, str);
            case 1:
                return AFj1sSDK.AFKeystoreWrapper(aFj1sSDK, str);
            default:
                return Boolean.valueOf(AFj1sSDK.registerClient(aFj1sSDK, str));
        }
    }
}
