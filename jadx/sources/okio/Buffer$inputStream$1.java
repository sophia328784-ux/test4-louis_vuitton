package okio;

import java.io.InputStream;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okio/Buffer$inputStream$1", "Ljava/io/InputStream;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Buffer$inputStream$1 extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Buffer f77396b;

    public Buffer$inputStream$1(Buffer buffer) {
        this.f77396b = buffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return (int) Math.min(this.f77396b.f77390c, 2147483647L);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read() {
        Buffer buffer = this.f77396b;
        if (buffer.f77390c > 0) {
            return buffer.readByte() & 255;
        }
        return -1;
    }

    public final String toString() {
        return this.f77396b + ".inputStream()";
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) {
        bArr.getClass();
        return this.f77396b.read(bArr, i2, i3);
    }
}
