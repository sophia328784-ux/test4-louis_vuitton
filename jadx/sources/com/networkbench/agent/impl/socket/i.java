package com.networkbench.agent.impl.socket;

import defpackage.r81;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class i extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38185b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InputStream f38186a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f38187c;

    public i(j jVar, InputStream inputStream) {
        if (inputStream == null || jVar == null) {
            r81.d("inputStream delegate or monitorStreamReadWrite was null");
            throw null;
        }
        this.f38186a = inputStream;
        this.f38187c = jVar;
        f38185b.a("HttpResponseParsingInputStream init time:" + System.currentTimeMillis());
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f38186a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38186a.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i2) {
        this.f38186a.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f38186a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i2 = this.f38186a.read();
        this.f38187c.c(System.currentTimeMillis());
        f38185b.a("HttpResponseParsingInputStream read() time:" + System.currentTimeMillis());
        return i2;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f38186a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j2) throws IOException {
        return this.f38186a.skip(j2);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i2 = this.f38186a.read(bArr);
        this.f38187c.c(System.currentTimeMillis());
        f38185b.a("HttpResponseParsingInputStream read(byte[] buffer) time:" + System.currentTimeMillis());
        return i2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f38186a.read(bArr, i2, i3);
        this.f38187c.c(System.currentTimeMillis());
        f38185b.a("HttpResponseParsingInputStream read(byte[] buffer, int byteOffset, int byteCount) time:" + System.currentTimeMillis());
        return i4;
    }
}
