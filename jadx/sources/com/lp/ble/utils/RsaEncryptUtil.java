package com.lp.ble.utils;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes2.dex */
public class RsaEncryptUtil {
    public static String a(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException {
        Cipher cipher = Cipher.getInstance("RSA/NONE/PKCS1Padding");
        byte[] bArrDecode = Base64.decode(str2, 0);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrDecode, 8, bArrDecode.length - 5);
        Arrays.toString(bArrCopyOfRange);
        HashMap map = BLELog.f36371a;
        cipher.init(1, KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(bArrCopyOfRange), new BigInteger("65537"))));
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = length - i2;
            if (i4 <= 0) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return Base64.encodeToString(byteArray, 0).replace("\n", "");
            }
            byte[] bArrDoFinal = i4 > 117 ? cipher.doFinal(bytes, i2, 117) : cipher.doFinal(bytes, i2, i4);
            byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
            i3++;
            i2 = i3 * 117;
        }
    }
}
