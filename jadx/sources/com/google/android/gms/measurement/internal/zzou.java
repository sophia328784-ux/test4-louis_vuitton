package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class zzou extends zzol {
    public static final boolean j(String str) {
        String str2 = (String) zzfy.t.a(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(",")) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008b, code lost:
    
        if (java.lang.Math.abs(r5.hashCode() % 100) < r7.P().A()) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzot h(java.lang.String r13) {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzou.h(java.lang.String):com.google.android.gms.measurement.internal.zzot");
    }

    public final String i(String str) {
        zzht zzhtVar = this.f31948b.f31980a;
        zzpg.U(zzhtVar);
        String strT = zzhtVar.t(str);
        if (TextUtils.isEmpty(strT)) {
            return (String) zzfy.r.a(null);
        }
        Uri uri = Uri.parse((String) zzfy.r.a(null));
        Uri.Builder builderBuildUpon = uri.buildUpon();
        String authority = uri.getAuthority();
        StringBuilder sb = new StringBuilder(String.valueOf(strT).length() + 1 + String.valueOf(authority).length());
        sb.append(strT);
        sb.append(FileUtils.HIDDEN_PREFIX);
        sb.append(authority);
        builderBuildUpon.authority(sb.toString());
        return builderBuildUpon.build().toString();
    }
}
