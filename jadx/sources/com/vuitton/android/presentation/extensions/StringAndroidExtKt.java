package com.vuitton.android.presentation.extensions;

import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import android.webkit.URLUtil;
import com.vuitton.android.platform.extensions.StringExtKt;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StringAndroidExtKt {
    public static final String a(String str, String str2) {
        str.getClass();
        str2.getClass();
        String path = Uri.parse(str2).getPath();
        String strJ = d21.j(path != null ? StringsKt.J(str2, path, "") : null, str);
        if (URLUtil.isValidUrl(strJ)) {
            StringsKt.k(strJ, "vuitton", false);
        }
        return strJ;
    }

    public static final Spanned b(String str) {
        String strJ = str != null ? StringsKt.J(StringsKt.J(str, "<li>", "<li>\t"), "</br>", "<br/>") : null;
        if (strJ != null) {
            return Html.fromHtml(strJ, 0);
        }
        return null;
    }

    public static final boolean c(String str, String str2) {
        Boolean boolValueOf;
        if (str != null && StringExtKt.b(str) != null) {
            if (str2 != null) {
                Uri uri = Uri.parse(str);
                Uri uri2 = Uri.parse(str2);
                boolValueOf = Boolean.valueOf(Intrinsics.c(uri.getHost(), uri2.getHost()) && Intrinsics.c(uri.getEncodedPath(), uri2.getEncodedPath()));
            } else {
                boolValueOf = null;
            }
            if (boolValueOf != null) {
                return boolValueOf.booleanValue();
            }
        }
        return false;
    }
}
