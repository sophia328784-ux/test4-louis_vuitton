package com.networkbench.agent.impl.socket;

import defpackage.r81;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class h extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38182b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OutputStream f38183a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f38184c;

    public h(j jVar, OutputStream outputStream) {
        if (outputStream == null || jVar == null) {
            r81.d("outputStream delegate or monitorStreamReadWrite was null");
            throw null;
        }
        f38182b.a("HttpRequestParsingOutputStream init time:" + System.currentTimeMillis());
        this.f38183a = outputStream;
        this.f38184c = jVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38183a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f38183a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        this.f38183a.write(i2);
        this.f38184c.a(System.currentTimeMillis());
        f38182b.a("HttpRequestParsingOutputStream write(int oneByte) time:" + System.currentTimeMillis());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f38183a.write(bArr);
        this.f38184c.a(System.currentTimeMillis());
        f38182b.a("HttpRequestParsingOutputStream write(byte[] buffer) time:" + System.currentTimeMillis());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        this.f38183a.write(bArr, i2, i3);
        this.f38184c.a(System.currentTimeMillis());
        f38182b.a("HttpRequestParsingOutputStream write(byte[] buffer, int offset, int count) time:" + System.currentTimeMillis());
    }
}
