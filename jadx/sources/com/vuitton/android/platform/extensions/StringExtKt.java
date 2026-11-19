package com.vuitton.android.platform.extensions;

import android.webkit.URLUtil;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"platform"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringExtKt {
    public static final boolean a(String str) {
        return (str == null || StringsKt.w(str) || !URLUtil.isValidUrl(str)) ? false : true;
    }

    public static final String b(String str) {
        if (a(str)) {
            return str;
        }
        return null;
    }
}
