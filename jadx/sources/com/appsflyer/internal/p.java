package com.appsflyer.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f22699c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f22700e;

    public /* synthetic */ p(Object obj, Object obj2, Object obj3, int i2) {
        this.f22698b = i2;
        this.f22699c = obj;
        this.d = obj2;
        this.f22700e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22698b;
        Object obj = this.f22700e;
        Object obj2 = this.d;
        Object obj3 = this.f22699c;
        switch (i2) {
            case 0:
                AFe1wSDK.unregisterClient((AFe1ySDK) obj3, (AFd1cSDK) obj2, (AFe1wSDK) obj);
                break;
            case 1:
                AFg1tSDK.AFLogger((AFg1tSDK) obj3, (AFh1pSDK) obj2, (Context) obj);
                break;
            case 2:
                ((AFi1aSDK) obj3).d((ExecutorService) obj2, (Runnable) obj);
                break;
            default:
                ((AFi1aSDK) obj3).AFLogger((AFi1gSDK) obj2, (Runnable) obj);
                break;
        }
    }
}
