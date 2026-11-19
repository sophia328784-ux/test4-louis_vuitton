package com.vuitton.android.presentation.extensions;

import android.net.http.SslError;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewExtKt {
    public static final String a(SslError sslError) {
        sslError.getClass();
        int primaryError = sslError.getPrimaryError();
        if (primaryError == 0) {
            return "certificate not valid yet";
        }
        if (primaryError == 1) {
            return "certificate expired";
        }
        if (primaryError == 2) {
            return "hostname mismatch";
        }
        if (primaryError == 3) {
            return "certificate authority not trusted";
        }
        if (primaryError != 4) {
            return primaryError != 5 ? pq0.k(sslError.getPrimaryError(), "unknown error ") : "certificate invalid";
        }
        return "certificate date invalid";
    }
}
