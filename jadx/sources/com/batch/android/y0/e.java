package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.x0.p;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class e implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WritableByteChannel f24221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MessageBuffer f24222c;

    public e(WritableByteChannel writableByteChannel, int i2) {
        this.f24221b = (WritableByteChannel) p.a(writableByteChannel, "output channel is null");
        this.f24222c = MessageBuffer.allocate(i2);
    }

    @Override // com.batch.android.y0.h
    public MessageBuffer a(int i2) throws IOException {
        if (this.f24222c.size() < i2) {
            this.f24222c = MessageBuffer.allocate(i2);
        }
        return this.f24222c;
    }

    @Override // com.batch.android.y0.h
    public void b(int i2) throws IOException {
        ByteBuffer byteBufferSliceAsByteBuffer = this.f24222c.sliceAsByteBuffer(0, i2);
        while (byteBufferSliceAsByteBuffer.hasRemaining()) {
            this.f24221b.write(byteBufferSliceAsByteBuffer);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24221b.close();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.batch.android.y0.h
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i2, i3);
        while (byteBufferWrap.hasRemaining()) {
            this.f24221b.write(byteBufferWrap);
        }
    }

    public WritableByteChannel a(WritableByteChannel writableByteChannel) throws IOException {
        WritableByteChannel writableByteChannel2 = this.f24221b;
        this.f24221b = writableByteChannel;
        return writableByteChannel2;
    }

    @Override // com.batch.android.y0.h
    public void a(byte[] bArr, int i2, int i3) throws IOException {
        write(bArr, i2, i3);
    }

    public e(WritableByteChannel writableByteChannel) {
        this(writableByteChannel, 8192);
    }
}
