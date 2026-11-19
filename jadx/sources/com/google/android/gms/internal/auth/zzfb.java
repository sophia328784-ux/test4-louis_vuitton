package com.google.android.gms.internal.auth;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfb extends IOException {
    public zzfb(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public zzfb(String str) {
        super(str);
    }
}
