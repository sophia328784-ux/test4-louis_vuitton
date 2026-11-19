package com.appsflyer.internal;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFc1aSDK f22687c;

    public /* synthetic */ i(AFc1aSDK aFc1aSDK, int i2) {
        this.f22686b = i2;
        this.f22687c = aFc1aSDK;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f22686b;
        AFc1aSDK aFc1aSDK = this.f22687c;
        switch (i2) {
            case 0:
                return aFc1aSDK.t_();
            case 1:
                return aFc1aSDK.AFLogger();
            case 2:
                return aFc1aSDK.enableTCFDataCollection();
            default:
                return aFc1aSDK.setAdditionalData();
        }
    }
}
