package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.r81;
import defpackage.v7;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhr extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        byte[] bArrB;
        zzkk zzkkVar;
        zzkk zzkkVar2;
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0);
        zzkk zzkkVar3 = zzkkVarArr[0];
        zzko zzkoVar = zzko.f30172h;
        if (zzkkVar3 == zzkoVar) {
            return zzkoVar;
        }
        String strD = zzdj.d(zzkkVar3);
        String strD2 = "MD5";
        if (length > 1 && (zzkkVar2 = zzkkVarArr[1]) != zzkoVar) {
            strD2 = zzdj.d(zzkkVar2);
        }
        String strD3 = (length <= 2 || (zzkkVar = zzkkVarArr[2]) == zzkoVar) ? "text" : zzdj.d(zzkkVar);
        if ("text".equals(strD3)) {
            bArrB = strD.getBytes();
        } else {
            if (!"base16".equals(strD3)) {
                v7.h("Hash: Unknown input format: ".concat(String.valueOf(strD3)));
                return null;
            }
            bArrB = zzab.b(strD);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(strD2);
            messageDigest.update(bArrB);
            return new zzkv(zzab.a(messageDigest.digest()));
        } catch (NoSuchAlgorithmException e2) {
            r81.g("Hash: Unknown algorithm: ".concat(String.valueOf(strD2)), e2);
            return null;
        }
    }
}
