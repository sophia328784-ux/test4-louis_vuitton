package com.networkbench.agent.impl.util;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.X509Certificate;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes5.dex */
public class i {
    public static X509Certificate a(String str) {
        return com.networkbench.agent.impl.h.b.a().b(str);
    }

    public static boolean b(X509Certificate x509Certificate) {
        return com.networkbench.agent.impl.h.b.a().a(x509Certificate);
    }

    public static boolean c() {
        return com.networkbench.agent.impl.h.b.a().b();
    }

    public static void a() {
        com.networkbench.agent.impl.util.a.a.e.a();
    }

    public static String b() {
        return com.networkbench.agent.impl.h.d.a();
    }

    public static String a(X509Certificate x509Certificate, String str) {
        return com.networkbench.agent.impl.h.b.a().a(x509Certificate, str);
    }

    public static boolean a(X509Certificate x509Certificate) {
        return com.networkbench.agent.impl.h.b.a().b(x509Certificate);
    }

    public static byte[] a(byte[] bArr) {
        return com.networkbench.agent.impl.util.a.g.a(bArr);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws Exception {
        return com.networkbench.agent.impl.h.d.d(bArr, bArr2);
    }

    public static Cipher a(String str, int i2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return com.networkbench.agent.impl.util.a.h.a(str, i2, bArr);
    }
}
