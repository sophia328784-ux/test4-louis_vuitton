package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f22683c;

    public /* synthetic */ g(Object obj, int i2) {
        this.f22682b = i2;
        this.f22683c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22682b;
        Object obj = this.f22683c;
        switch (i2) {
            case 0:
                AFb1gSDK.registerClient((AFb1gSDK) obj);
                break;
            case 1:
                AFa1tSDK.d((AFc1bSDK) obj);
                break;
            case 2:
                ((AFd1vSDK) obj).unregisterClient();
                break;
            default:
                AFe1wSDK.AFLogger((AFe1wSDK) obj);
                break;
        }
    }
}
