package com.appsflyer.internal;

import android.content.Context;
import android.hardware.SensorEvent;
import com.appsflyer.sdk_base.referrer.Referrer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f22693c;
    public final /* synthetic */ Object d;

    public /* synthetic */ m(Object obj, Object obj2, int i2) {
        this.f22692b = i2;
        this.f22693c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22692b;
        Object obj = this.d;
        Object obj2 = this.f22693c;
        switch (i2) {
            case 0:
                AFe1fSDK.unregisterClient((Referrer) obj2, (AFe1fSDK) obj);
                break;
            case 1:
                ((AFi1aSDK) obj2).AFKeystoreWrapper((Runnable) obj);
                break;
            case 2:
                AFi1bSDK.AFKeystoreWrapper((AFi1bSDK) obj2, (Context) obj);
                break;
            case 3:
                ((AFi1dSDK) obj2).P_((SensorEvent) obj);
                break;
            case 4:
                ((AFi1gSDK) obj2).registerClient((Context) obj);
                break;
            default:
                AFi1iSDK.d((AFi1iSDK) obj2, (Context) obj);
                break;
        }
    }
}
