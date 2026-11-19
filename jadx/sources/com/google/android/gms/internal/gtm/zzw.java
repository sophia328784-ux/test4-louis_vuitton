package com.google.android.gms.internal.gtm;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzw extends Handler {
    public zzw() {
        Looper.getMainLooper();
    }

    public zzw(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        Looper.getMainLooper();
    }
}
