package com.perfectcorp.perfectlib;

import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n4 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoObject.Callback f41080c;

    public /* synthetic */ n4(VtoObject.Callback callback, int i2) {
        this.f41079b = i2;
        this.f41080c = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f41079b;
        VtoObject.Callback callback = this.f41080c;
        switch (i2) {
            case 0:
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
            case 1:
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
            default:
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
        }
    }
}
