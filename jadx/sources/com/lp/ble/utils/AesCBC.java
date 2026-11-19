package com.lp.ble.utils;

import android.util.Base64;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class AesCBC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AesCBC f36370a;

    public static String a(String str, String str2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = new byte[(16 - (length % 16)) + length];
        System.arraycopy(bytes, 0, bArr, 0, length);
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
        cipher.init(1, new SecretKeySpec(str2.getBytes(), "AES"), new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        HexUtil.a(bArrDoFinal);
        return Base64.encodeToString(bArrDoFinal, 0);
    }
}
