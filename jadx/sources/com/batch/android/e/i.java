package com.batch.android.e;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class i extends j {
    private static final String d = "EASBase64GzipCryptor";

    public i(String str) {
        super(str);
    }

    private byte[] e(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    private byte[] f(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int i2 = gZIPInputStream.read(bArr2);
                        if (i2 == -1) {
                            byteArrayOutputStream.flush();
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            gZIPInputStream.close();
                            byteArrayOutputStream.close();
                            byteArrayInputStream.close();
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr2, 0, i2);
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        gZIPInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                byteArrayOutputStream.close();
                throw th4;
            }
        } catch (Throwable th5) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th6) {
                th5.addSuppressed(th6);
            }
            throw th5;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] a(byte[] bArr) {
        try {
            return Base64.encode(super.a(e(bArr)), 0);
        } catch (Exception e2) {
            t.c(d, "Error while encrypting AES bytes", e2);
            return null;
        }
    }

    @Override // com.batch.android.e.j, com.batch.android.e.c
    public byte[] b(byte[] bArr) {
        try {
            return f(super.b(Base64.decode(bArr, 0)));
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
            return b(b.a(str));
        } catch (Exception e2) {
            t.c(d, "Error while decrypting AES string to bytes", e2);
            return null;
        }
    }
}
