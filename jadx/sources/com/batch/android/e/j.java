package com.batch.android.e;

import defpackage.md;
import defpackage.r81;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
class j implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23102c = "EASCryptor";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SecretKeySpec f23104b;

    public j(String str) {
        if (str == null) {
            r81.d("Null key given");
            throw null;
        }
        if (str.length() != 16) {
            md.n("key must be 16 chars (not more, not less)");
            throw null;
        }
        this.f23104b = new SecretKeySpec(b.a(str), "AES");
        this.f23103a = "AES/ECB/PKCS5Padding";
    }

    private byte[] c(byte[] bArr) throws Exception {
        Cipher cipher = Cipher.getInstance(this.f23103a);
        cipher.init(2, this.f23104b);
        return cipher.doFinal(bArr);
    }

    private byte[] d(byte[] bArr) throws Exception {
        Cipher cipher = Cipher.getInstance(this.f23103a);
        cipher.init(1, this.f23104b);
        return cipher.doFinal(bArr);
    }

    @Override // com.batch.android.e.c
    public byte[] a(byte[] bArr) {
        try {
            return d(bArr);
        } catch (Exception e2) {
            t.a(f23102c, "Error while encrypting AES bytes", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.c
    public byte[] b(byte[] bArr) {
        try {
            return c(bArr);
        } catch (Exception e2) {
            t.a(f23102c, "Error while decrypting AES bytes", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.c
    public String a(String str) {
        throw new IllegalAccessError("EAS cryptor doesn't support strings");
    }

    @Override // com.batch.android.e.c
    public byte[] b(String str) {
        throw new IllegalAccessError("EAS cryptor doesn't support strings");
    }

    @Override // com.batch.android.e.c
    public String c(String str) {
        throw new IllegalAccessError("EAS cryptor doesn't support strings");
    }
}
