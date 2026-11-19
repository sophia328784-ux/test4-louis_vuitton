package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.v7;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class zzho extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f30088a = Pattern.compile("(.+)/(.+)/(.+)");

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        Preconditions.a(length >= 3);
        Preconditions.a(zzkkVarArr[1] instanceof zzkv);
        String strD = zzdj.d(zzkkVarArr[0]);
        String strD2 = zzdj.d(zzkkVarArr[1]);
        String strD3 = zzdj.d(zzkkVarArr[2]);
        String strD4 = length < 4 ? "AES/CBC/NoPadding" : zzdj.d(zzkkVarArr[3]);
        Matcher matcher = f30088a.matcher(strD4);
        if (!matcher.matches()) {
            v7.h("Encrypt: invalid transformation:".concat(String.valueOf(strD4)));
            return null;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(strD2.getBytes(), matcher.group(1));
        IvParameterSpec ivParameterSpec = new IvParameterSpec(strD3.getBytes());
        try {
            Cipher cipher = Cipher.getInstance(strD4);
            if (strD == null || strD.length() == 0) {
                v7.h("Encrypt: empty input string");
                return null;
            }
            try {
                cipher.init(1, secretKeySpec, ivParameterSpec);
                return new zzkv(zzab.a(cipher.doFinal(strD.getBytes())));
            } catch (Exception e2) {
                v7.h("Encrypt: ".concat(String.valueOf(e2.getMessage())));
                return null;
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            v7.h("Encrypt: invalid transformation:".concat(String.valueOf(strD4)));
            return null;
        }
    }
}
