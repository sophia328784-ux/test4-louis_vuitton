package com.appsflyer;

import com.appsflyer.sdk_base.logger.AFLoggerBase;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AFLoggerBase[] f22601c;

    public /* synthetic */ d(AFLoggerBase[] aFLoggerBaseArr, int i2) {
        this.f22600b = i2;
        this.f22601c = aFLoggerBaseArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f22600b;
        AFLoggerBase[] aFLoggerBaseArr = this.f22601c;
        switch (i2) {
            case 0:
                AFLogger.AFKeystoreWrapper(aFLoggerBaseArr);
                break;
            default:
                AFLogger.AFLogger(aFLoggerBaseArr);
                break;
        }
    }
}
