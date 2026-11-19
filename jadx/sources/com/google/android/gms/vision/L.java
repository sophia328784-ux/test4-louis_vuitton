package com.google.android.gms.vision;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class L {
    public static void a(Exception exc, String str, Object... objArr) {
        if (Log.isLoggable("Vision", 6)) {
            if (Log.isLoggable("Vision", 3)) {
                String.format(str, objArr);
                return;
            }
            String str2 = String.format(str, objArr);
            String strValueOf = String.valueOf(exc);
            new StringBuilder(strValueOf.length() + str2.length() + 2);
        }
    }
}
