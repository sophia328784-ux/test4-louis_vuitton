package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFe1wSDK f22697c;
    public final /* synthetic */ AFe1ySDK d;

    public /* synthetic */ o(AFe1wSDK aFe1wSDK, AFe1ySDK aFe1ySDK, int i2) {
        this.f22696b = i2;
        this.f22697c = aFe1wSDK;
        this.d = aFe1ySDK;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22696b;
        AFe1ySDK aFe1ySDK = this.d;
        AFe1wSDK aFe1wSDK = this.f22697c;
        switch (i2) {
            case 0:
                AFe1wSDK.unregisterClient(aFe1wSDK, aFe1ySDK);
                break;
            default:
                AFe1wSDK.AFKeystoreWrapper(aFe1wSDK, aFe1ySDK);
                break;
        }
    }
}
