package com.networkbench.agent.impl.util;

import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38421a = "SM4/ECB/PKCS5Padding";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38422b = com.networkbench.agent.impl.c.f.a();
    private static z d = new z();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Cipher f38423c;

    public void a(String str) {
        try {
            if (ab.c(str)) {
                return;
            }
            this.f38423c = i.a("SM4/ECB/PKCS5Padding", 1, ak.d(str));
        } catch (Throwable th) {
            f38422b.a("error create cipher", th);
        }
    }

    public static z a() {
        return d;
    }

    public byte[] a(byte[] bArr) throws Exception {
        Cipher cipher = this.f38423c;
        if (cipher != null) {
            return cipher.doFinal(bArr);
        }
        throw new d("error encrypt ecb padding, cipher is null");
    }
}
