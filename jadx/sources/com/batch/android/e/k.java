package com.batch.android.e;

/* JADX INFO: loaded from: classes2.dex */
final class k extends j {
    private static final String d = "EASHexCryptor";

    public k(String str) {
        super(str);
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] a(byte[] bArr) {
        try {
            return b.a(b.b(super.a(bArr)));
        } catch (Exception e2) {
            t.c(d, "Error while encrypting AES bytes", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] b(byte[] bArr) {
        try {
            return super.b(b.b(b.c(bArr)));
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
    public String a(String str) {
        try {
            return b.c(a(b.a(str)));
        } catch (Exception e2) {
            t.c(d, "Error while encrypting AES string", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] b(String str) {
        try {
            return super.b(b.b(str));
        } catch (Exception e2) {
            t.c(d, "Error while decrypting AES string to bytes", e2);
            return null;
        }
    }
}
