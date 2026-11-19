package com.networkbench.agent.impl.instrumentation.io;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSCountingOutputStream extends OutputStream implements NBSStreamCompleteListenerSource {
    private final OutputStream impl;
    private long count = 0;
    private final a listenerManager = new a();

    public NBSCountingOutputStream(OutputStream outputStream) {
        this.impl = outputStream;
    }

    private void a() {
        if (this.listenerManager.a()) {
            return;
        }
        this.listenerManager.a(new NBSStreamCompleteEvent(this, this.count));
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListenerSource
    public void addStreamCompleteListener(NBSStreamCompleteListener nBSStreamCompleteListener) {
        a aVar = this.listenerManager;
        if (aVar != null) {
            aVar.a(nBSStreamCompleteListener);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.impl.close();
            a();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.impl.flush();
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    public long getCount() {
        return this.count;
    }

    @Override // com.networkbench.agent.impl.instrumentation.io.NBSStreamCompleteListenerSource
    public void removeStreamCompleteListener(NBSStreamCompleteListener nBSStreamCompleteListener) {
        this.listenerManager.b(nBSStreamCompleteListener);
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        try {
            this.impl.write(i2);
            this.count++;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.impl.write(bArr);
            this.count += (long) bArr.length;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    private void a(Exception exc) {
        if (this.listenerManager.a()) {
            return;
        }
        this.listenerManager.b(new NBSStreamCompleteEvent(this, this.count, exc));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        try {
            this.impl.write(bArr, i2, i3);
            this.count += (long) i3;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }
}
