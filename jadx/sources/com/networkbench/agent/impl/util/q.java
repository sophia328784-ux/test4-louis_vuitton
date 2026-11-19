package com.networkbench.agent.impl.util;

import defpackage.md;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38385a = "AES";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38386b = "AES/CBC/PKCS5Padding";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f38387c;
    private static byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static byte[] f38388e;

    public static byte[] a(byte[] bArr) throws Exception {
        if (bArr == null) {
            return null;
        }
        if (f38388e == null || d == null) {
            md.n("key is required.");
            return null;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(f38388e, f38385a);
        new SecureRandom().nextBytes(bArr);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(d);
        Cipher cipher = Cipher.getInstance(f38386b);
        cipher.init(1, secretKeySpec, ivParameterSpec);
        return cipher.doFinal(bArr);
    }

    public static void b(String str) {
        try {
            f38388e = ak.e(str);
        } catch (Throwable th) {
            r.A.a("setSecretKey error", th);
        }
    }

    public static byte[] b() {
        return f38388e;
    }

    public static String a() {
        return f38387c;
    }

    public static void a(String str) {
        if (str == null) {
            return;
        }
        f38387c = str;
        try {
            d = str.getBytes();
        } catch (Throwable th) {
            r.A.a("setAccessKey error", th);
        }
    }
}
