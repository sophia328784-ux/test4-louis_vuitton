package com.google.android.gms.internal.measurement;

import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzze {
    public static /* synthetic */ boolean a(int i2, zzyc zzycVar, StringBuilder sb) {
        if (i2 - 1 != 0 || zzycVar == zzyc.f31087a) {
            return false;
        }
        sb.append(zzycVar.a());
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(zzycVar.b());
        sb.append(':');
        sb.append(zzycVar.c());
        return true;
    }
}
