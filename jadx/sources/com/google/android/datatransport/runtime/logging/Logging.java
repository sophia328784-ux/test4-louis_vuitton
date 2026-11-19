package com.google.android.datatransport.runtime.logging;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Logging {
    public static void a(String str, Object obj, String str2) {
        if (Log.isLoggable("TRuntime.".concat(str), 3)) {
            String.format(str2, obj);
        }
    }
}
