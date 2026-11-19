package com.google.android.gms.internal.gtm;

import android.net.Uri;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f29972a;

    static {
        new HashMap();
    }

    public static String a(String str, String str2) {
        if (str2 != null) {
            return Uri.parse("http://hostname/?".concat(String.valueOf(str))).getQueryParameter(str2);
        }
        if (str.length() > 0) {
            return str;
        }
        return null;
    }
}
