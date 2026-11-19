package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.x0.p;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class i implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OutputStream f24225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MessageBuffer f24226c;

    public i(OutputStream outputStream, int i2) {
        this.f24225b = (OutputStream) p.a(outputStream, "output is null");
        this.f24226c = MessageBuffer.allocate(i2);
    }

    @Override // com.batch.android.y0.h
    public MessageBuffer a(int i2) throws IOException {
        if (this.f24226c.size() < i2) {
            this.f24226c = MessageBuffer.allocate(i2);
        }
        return this.f24226c;
    }

    @Override // com.batch.android.y0.h
    public void b(int i2) throws IOException {
        write(this.f24226c.array(), this.f24226c.arrayOffset(), i2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24225b.close();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f24225b.flush();
    }

    @Override // com.batch.android.y0.h
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        this.f24225b.write(bArr, i2, i3);
    }

    public OutputStream a(OutputStream outputStream) throws IOException {
        OutputStream outputStream2 = this.f24225b;
        this.f24225b = outputStream;
        return outputStream2;
    }

    @Override // com.batch.android.y0.h
    public void a(byte[] bArr, int i2, int i3) throws IOException {
        write(bArr, i2, i3);
    }

    public i(OutputStream outputStream) {
        this(outputStream, 8192);
    }
}
