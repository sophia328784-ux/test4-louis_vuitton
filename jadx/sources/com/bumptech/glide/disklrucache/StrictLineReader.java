package com.bumptech.glide.disklrucache;

import defpackage.md;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
class StrictLineReader implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileInputStream f24342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Charset f24343c;
    public byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24345f;

    public StrictLineReader(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(Util.f24347a)) {
            md.n("Unsupported encoding");
            throw null;
        }
        this.f24342b = fileInputStream;
        this.f24343c = charset;
        this.d = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f24342b) {
            try {
                if (this.d != null) {
                    this.d = null;
                    this.f24342b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0040  */
    public final String h() {
        int i2;
        synchronized (this.f24342b) {
            try {
                byte[] bArr = this.d;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f24344e >= this.f24345f) {
                    int i3 = this.f24342b.read(bArr, 0, bArr.length);
                    if (i3 == -1) {
                        throw new EOFException();
                    }
                    this.f24344e = 0;
                    this.f24345f = i3;
                }
                for (int i4 = this.f24344e; i4 != this.f24345f; i4++) {
                    byte[] bArr2 = this.d;
                    if (bArr2[i4] == 10) {
                        int i5 = this.f24344e;
                        if (i4 != i5) {
                            i2 = i4 - 1;
                            if (bArr2[i2] != 13) {
                                i2 = i4;
                            }
                        } else {
                            i2 = i4;
                        }
                        String str = new String(bArr2, i5, i2 - i5, this.f24343c.name());
                        this.f24344e = i4 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f24345f - this.f24344e) + 80) { // from class: com.bumptech.glide.disklrucache.StrictLineReader.1
                    @Override // java.io.ByteArrayOutputStream
                    public final String toString() {
                        int i6 = ((ByteArrayOutputStream) this).count;
                        if (i6 > 0) {
                            int i7 = i6 - 1;
                            if (((ByteArrayOutputStream) this).buf[i7] == 13) {
                                i6 = i7;
                            }
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i6, StrictLineReader.this.f24343c.name());
                        } catch (UnsupportedEncodingException e2) {
                            md.h(e2);
                            return null;
                        }
                    }
                };
                while (true) {
                    byte[] bArr3 = this.d;
                    int i6 = this.f24344e;
                    byteArrayOutputStream.write(bArr3, i6, this.f24345f - i6);
                    this.f24345f = -1;
                    FileInputStream fileInputStream = this.f24342b;
                    byte[] bArr4 = this.d;
                    int i7 = fileInputStream.read(bArr4, 0, bArr4.length);
                    if (i7 == -1) {
                        throw new EOFException();
                    }
                    this.f24344e = 0;
                    this.f24345f = i7;
                    for (int i8 = 0; i8 != this.f24345f; i8++) {
                        byte[] bArr5 = this.d;
                        if (bArr5[i8] == 10) {
                            int i9 = this.f24344e;
                            if (i8 != i9) {
                                byteArrayOutputStream.write(bArr5, i9, i8 - i9);
                            }
                            this.f24344e = i8 + 1;
                            return byteArrayOutputStream.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
