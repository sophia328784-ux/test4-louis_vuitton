package com.networkbench.agent.impl.h;

import com.networkbench.agent.impl.util.Logger;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pqc.legacy.math.linearalgebra.ByteUtils;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f37208a = "SM4";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f37209b = "SM4/ECB/PKCS5Padding";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f37210c = 128;
    private static final String d = "NBSAgent";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37211e = "UTF-8";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final char[] f37212f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static char[] a(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i2 = 0;
        for (byte b2 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = f37212f;
            cArr[i2] = cArr2[(b2 & 240) >>> 4];
            i2 += 2;
            cArr[i3] = cArr2[b2 & 15];
        }
        return cArr;
    }

    public static String b(String str, String str2) {
        try {
            return new String(d(ByteUtils.fromHexString(str), ByteUtils.fromHexString(str2)), "UTF-8");
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String c(byte[] bArr, byte[] bArr2) {
        try {
            return new String(d(bArr, bArr2), "UTF-8");
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static byte[] d(byte[] bArr, byte[] bArr2) throws Exception {
        return a("SM4/ECB/PKCS5Padding", 2, bArr).doFinal(bArr2);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws Exception {
        return a("SM4/ECB/PKCS5Padding", 1, bArr).doFinal(bArr2);
    }

    private static String b() throws Exception {
        return new String(a(a(128)));
    }

    public static String a() {
        try {
            Class.forName(BouncyCastleProvider.class.getName());
            return b();
        } catch (Throwable th) {
            Logger.error("NBSAgent", "error setSM4Key:", th);
            return "";
        }
    }

    public static byte[] a(int i2) throws Exception {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("SM4", new BouncyCastleProvider());
        keyGenerator.init(i2, new SecureRandom());
        return keyGenerator.generateKey().getEncoded();
    }

    private static Cipher a(String str, int i2, byte[] bArr) throws Exception {
        Cipher cipher = Cipher.getInstance(str, new BouncyCastleProvider());
        cipher.init(i2, new SecretKeySpec(bArr, "SM4"));
        return cipher;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        try {
            return b(bArr, bArr2);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String a(String str, String str2) {
        try {
            return ByteUtils.toHexString(b(ByteUtils.fromHexString(str), str2.getBytes("UTF-8")));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean a(String str, String str2, String str3) throws Exception {
        return Arrays.equals(d(ByteUtils.fromHexString(str), ByteUtils.fromHexString(str2)), str3.getBytes("UTF-8"));
    }
}
