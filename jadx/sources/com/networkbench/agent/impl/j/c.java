package com.networkbench.agent.impl.j;

import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.r81;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37402a = "AES";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37403b = "AES/CBC/PKCS5Padding";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f37404c;
    private static byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f37405e = r.A;

    public static byte[] a(byte[] bArr) throws Exception {
        if (bArr == null || bArr.length == 0 || d == null) {
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(d, f37402a);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(f37404c.getBytes());
        Cipher cipher = Cipher.getInstance(f37403b);
        cipher.init(1, secretKeySpec, ivParameterSpec);
        return cipher.doFinal(bArr);
    }

    public static byte[] b(byte[] bArr) throws Exception {
        if (bArr == null || bArr.length == 0) {
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(d, f37402a);
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(f37404c.getBytes());
            Cipher cipher = Cipher.getInstance(f37403b);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Throwable th) {
            r81.g("failed to decrypt ", th);
            return null;
        }
    }

    public static byte[] c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] d(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
            byte[] bArr2 = new byte[256];
            while (true) {
                int i2 = gZIPInputStream.read(bArr2);
                if (i2 < 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, i2);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void a(String str) {
        if (str != null) {
            f37404c = str;
        }
    }

    public static String a() {
        return f37404c;
    }

    public static void b(String str) {
        if (str != null) {
            d = ak.d(str);
        }
    }
}
