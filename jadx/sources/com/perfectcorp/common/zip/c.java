package com.perfectcorp.common.zip;

import com.perfectcorp.common.io.IO;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.Objects;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public class c extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f39460c;
    public InputStream d;

    public static class a extends c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ZipFile f39461e;

        public a(ZipFile zipFile, String str) {
            super(zipFile, str);
            this.f39461e = zipFile;
        }

        @Override // com.perfectcorp.common.zip.c, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            InputStream inputStream = this.d;
            if (inputStream != null) {
                IO.b(inputStream);
                this.d = null;
                this.f39461e.close();
            }
        }
    }

    public static final class b extends ZipException {
    }

    public c(ZipFile zipFile, String str) throws IOException {
        ZipEntry entry = zipFile.getEntry(str);
        if (entry == null) {
            throw new b(str.concat(" entry does not exist."));
        }
        InputStream inputStream = zipFile.getInputStream(entry);
        Objects.requireNonNull(inputStream, "FATAL: zip.getInputStream(entry) == null.");
        this.f39459b = str;
        long crc = entry.getCrc();
        this.f39460c = crc;
        this.d = crc != -1 ? new CheckedInputStream(inputStream, new CRC32()) : inputStream;
    }

    public static c c(ZipFile zipFile, String str, boolean z) {
        return z ? new a(zipFile, str) : new c(zipFile, str);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.d.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.d;
        if (inputStream != null) {
            IO.b(inputStream);
            this.d = null;
        }
    }

    public final void d(int i2) throws ZipException {
        if (i2 < 0) {
            long j2 = this.f39460c;
            if (j2 == -1 || j2 == ((CheckedInputStream) this.d).getChecksum().getValue()) {
                return;
            }
            throw new ZipException("CRC mismatch. " + this);
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i2 = this.d.read();
        d(i2);
        return i2;
    }

    public final String toString() {
        return "UnzipEntryStream [entryName='" + this.f39459b + "', crc32=" + String.format(Locale.US, "%08X", Integer.valueOf((int) this.f39460c)) + "]";
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i2 = this.d.read(bArr);
        d(i2);
        return i2;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.d.read(bArr, i2, i3);
        d(i4);
        return i4;
    }
}
