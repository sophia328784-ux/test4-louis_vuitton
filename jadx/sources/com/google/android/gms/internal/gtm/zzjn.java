package com.google.android.gms.internal.gtm;

import com.batch.android.s.b;
import defpackage.tr;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjn {
    public static final String b(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException unused) {
            "Cannot encode the string: ".concat(String.valueOf(str));
            zzbg.a();
            return "";
        }
    }

    public final String a(zzit zzitVar) {
        String string;
        boolean z = zzitVar.d;
        String str = zzitVar.f30106f;
        if (z) {
            string = zzitVar.f30105e;
        } else {
            String strTrim = !str.trim().isEmpty() ? str.trim() : "-1";
            StringBuilder sb = new StringBuilder();
            String str2 = zzitVar.f30104c;
            if (str2 != null) {
                sb.append(str2);
            } else {
                sb.append(b.a.f24015b);
            }
            sb.append("=");
            sb.append(b(zzitVar.f30102a));
            sb.append("&pv=");
            sb.append(b(strTrim));
            sb.append("&rv=5.0");
            if (zzitVar.d) {
                sb.append("&gtm_debug=x");
            }
            string = sb.toString();
        }
        return tr.g("https://www.google-analytics.com/gtm/android?", string);
    }
}
