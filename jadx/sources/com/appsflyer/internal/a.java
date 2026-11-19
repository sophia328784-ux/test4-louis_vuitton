package com.appsflyer.internal;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22674b;

    public /* synthetic */ a(int i2) {
        this.f22674b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f22674b) {
            case 0:
                return AFa1mSDK.d(obj);
            case 1:
                return AFa1mSDK.AFKeystoreWrapper(obj);
            case 2:
                return AFa1mSDK.AFLogger(obj);
            case 3:
                return AFa1mSDK.unregisterClient(obj);
            case 4:
                return AFa1mSDK.i(obj);
            default:
                return AFc1aSDK.AFKeystoreWrapper((String) obj);
        }
    }
}
