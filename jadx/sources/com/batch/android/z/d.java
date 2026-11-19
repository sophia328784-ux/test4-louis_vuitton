package com.batch.android.z;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static String a(String str) {
        try {
            return Uri.parse(str).getQueryParameter("batchAnalyticsID");
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
