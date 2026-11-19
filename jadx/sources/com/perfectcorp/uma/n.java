package com.perfectcorp.uma;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
final class n implements m {
    @Override // com.perfectcorp.uma.m
    public final int a(int i2, String str, String str2) {
        return Log.println(i2, str, str2);
    }

    @Override // com.perfectcorp.uma.m
    public final int a(String str, String str2, Throwable th) throws Throwable {
        Log.wtf(str, str2, th);
        throw th;
    }
}
