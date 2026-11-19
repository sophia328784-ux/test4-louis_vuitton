package com.linkplay.core.app;

import android.text.TextUtils;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public final class LPDeviceManagerUtil {
    public static String uuid2UpnpUUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() != 24) {
            return str;
        }
        String strSubstring = str.substring(0, 8);
        String strSubstring2 = str.substring(8, 12);
        String strSubstring3 = str.substring(12, 16);
        String strSubstring4 = str.substring(16, 20);
        String strSubstring5 = str.substring(20, 24);
        StringBuilder sbS = fc.s("uuid:", strSubstring, "-", strSubstring2, "-");
        cj.C(sbS, strSubstring3, "-", strSubstring4, "-");
        return n00.r(strSubstring5, strSubstring, sbS);
    }
}
