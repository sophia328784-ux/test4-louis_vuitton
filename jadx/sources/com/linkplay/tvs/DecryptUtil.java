package com.linkplay.tvs;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class DecryptUtil {
    public static String decrypt(String str, String str2) {
        try {
            byte[] bArrDecode = Base64.decode(str.getBytes(), 0);
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(2, new SecretKeySpec(str2.getBytes(), "AES"), new IvParameterSpec(new byte[cipher.getBlockSize()]));
            return new String(cipher.doFinal(bArrDecode), "UTF-8");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
