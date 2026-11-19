package com.google.android.gms.internal.gtm;

import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.v7;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhn extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        byte[] bArrDecode;
        String strEncodeToString;
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0);
        String strD = zzdj.d(zzkkVarArr[0]);
        String strD2 = length > 1 ? zzdj.d(zzkkVarArr[1]) : "text";
        int i2 = 2;
        String strD3 = length > 2 ? zzdj.d(zzkkVarArr[2]) : "base16";
        if (length > 3 && zzdj.g(zzkkVarArr[3])) {
            i2 = 3;
        }
        try {
            if ("text".equals(strD2)) {
                bArrDecode = strD.getBytes();
            } else if ("base16".equals(strD2)) {
                bArrDecode = zzab.b(strD);
            } else if ("base64".equals(strD2)) {
                bArrDecode = Base64.decode(strD, i2);
            } else {
                if (!"base64url".equals(strD2)) {
                    throw new UnsupportedOperationException("Encode: unknown input format: " + strD2);
                }
                bArrDecode = Base64.decode(strD, i2 | 8);
            }
            if ("base16".equals(strD3)) {
                strEncodeToString = zzab.a(bArrDecode);
            } else if ("base64".equals(strD3)) {
                strEncodeToString = Base64.encodeToString(bArrDecode, i2);
            } else {
                if (!"base64url".equals(strD3)) {
                    v7.h("Encode: unknown output format: ".concat(String.valueOf(strD3)));
                    return null;
                }
                strEncodeToString = Base64.encodeToString(bArrDecode, i2 | 8);
            }
            return new zzkv(strEncodeToString);
        } catch (IllegalArgumentException unused) {
            v7.h("Encode: invalid input:".concat(String.valueOf(strD2)));
            return null;
        }
    }
}
