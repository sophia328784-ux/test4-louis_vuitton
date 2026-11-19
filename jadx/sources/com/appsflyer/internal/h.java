package com.appsflyer.internal;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFb1gSDK f22685c;
    public final /* synthetic */ Intent d;

    public /* synthetic */ h(AFb1gSDK aFb1gSDK, Intent intent, int i2) {
        this.f22684b = i2;
        this.f22685c = aFb1gSDK;
        this.d = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22684b;
        Intent intent = this.d;
        AFb1gSDK aFb1gSDK = this.f22685c;
        switch (i2) {
            case 0:
                AFb1gSDK.i_(aFb1gSDK, intent);
                break;
            default:
                AFb1gSDK.j_(aFb1gSDK, intent);
                break;
        }
    }
}
