package com.appsflyer.internal;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f22678c;

    public /* synthetic */ d(Object obj, int i2) {
        this.f22677b = i2;
        this.f22678c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f22677b;
        Object obj = this.f22678c;
        switch (i2) {
            case 0:
                return ((AFa1tSDK) obj).registerClient();
            case 1:
                return AFc1gSDK.q_((AFc1gSDK) obj);
            case 2:
                return AFf1uSDK.AFLogger((AFc1bSDK) obj);
            default:
                return AFf1uSDK.d((AFf1uSDK) obj);
        }
    }
}
