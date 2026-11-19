package com.batch.android.e;

import android.util.Base64;

/* JADX INFO: loaded from: classes2.dex */
final class h extends j {
    private static final String d = "EASBase64Cryptor";

    public h(String str) {
        super(str);
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public String a(String str) {
        try {
            return b.c(a(b.a(str)));
        } catch (Exception e2) {
            t.c(d, "Error while encrypting AES string", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] b(byte[] bArr) {
        try {
            return super.b(Base64.decode(bArr, 0));
        } catch (Exception e2) {
            t.c(d, "Error while decrypting AES bytes", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public String c(String str) {
        try {
            return b.c(b(b.a(str)));
        } catch (Exception e2) {
            t.c(d, "Error while decrypting AES string", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] b(String str) {
        try {
            return b(b.a(str));
        } catch (Exception e2) {
            t.c(d, "Error while decrypting AES string to bytes", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] a(byte[] bArr) {
        try {
            return Base64.encode(super.a(bArr), 0);
        } catch (Exception e2) {
            t.c(d, "Error while encrypting AES bytes", e2);
            return null;
        }
    }
}
