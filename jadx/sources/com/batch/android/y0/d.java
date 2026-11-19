package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.x0.p;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class d implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ReadableByteChannel f24219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MessageBuffer f24220c;

    public d(ReadableByteChannel readableByteChannel, int i2) {
        this.f24219b = (ReadableByteChannel) p.a(readableByteChannel, "input channel is null");
        p.a(i2 > 0, "buffer size must be > 0: " + i2);
        this.f24220c = MessageBuffer.allocate(i2);
    }

    public ReadableByteChannel a(ReadableByteChannel readableByteChannel) throws IOException {
        ReadableByteChannel readableByteChannel2 = this.f24219b;
        this.f24219b = readableByteChannel;
        return readableByteChannel2;
    }

    @Override // com.batch.android.y0.g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24219b.close();
    }

    @Override // com.batch.android.y0.g
    public MessageBuffer next() throws IOException {
        ByteBuffer byteBufferSliceAsByteBuffer = this.f24220c.sliceAsByteBuffer();
        if (this.f24219b.read(byteBufferSliceAsByteBuffer) == -1) {
            return null;
        }
        byteBufferSliceAsByteBuffer.flip();
        return this.f24220c.slice(0, byteBufferSliceAsByteBuffer.limit());
    }

    public d(ReadableByteChannel readableByteChannel) {
        this(readableByteChannel, 8192);
    }
}
