package okio;

import defpackage.md;
import java.nio.ByteBuffer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "Lokio/Sink;", "sink", "<init>", "(Lokio/Sink;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealBufferedSink implements BufferedSink {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Sink f77440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Buffer f77441c;
    public boolean d;

    public RealBufferedSink(Sink sink) {
        sink.getClass();
        this.f77440b = sink;
        this.f77441c = new Buffer();
    }

    @Override // okio.Sink
    public final void D(Buffer buffer, long j2) {
        buffer.getClass();
        if (this.d) {
            md.k("closed");
        } else {
            this.f77441c.D(buffer, j2);
            X();
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink F0(long j2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.n0(j2);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink G1(ByteString byteString) {
        byteString.getClass();
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.l0(byteString);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    /* JADX INFO: renamed from: L, reason: from getter */
    public final Buffer getF77444c() {
        return this.f77441c;
    }

    @Override // okio.BufferedSink
    public final BufferedSink X() {
        if (this.d) {
            md.k("closed");
            return null;
        }
        Buffer buffer = this.f77441c;
        long jK = buffer.k();
        if (jK > 0) {
            this.f77440b.D(buffer, jK);
        }
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink Y0(int i2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.p0(SegmentedByteString.c(i2));
        X();
        return this;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Sink sink = this.f77440b;
        if (this.d) {
            return;
        }
        Buffer buffer = this.f77441c;
        long j2 = buffer.f77390c;
        if (j2 > 0) {
            sink.D(buffer, j2);
        }
        th = null;
        try {
            sink.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink f1(int i2, byte[] bArr) {
        bArr.getClass();
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.write(bArr, 0, i2);
        X();
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
        if (this.d) {
            md.k("closed");
            return;
        }
        Buffer buffer = this.f77441c;
        long j2 = buffer.f77390c;
        Sink sink = this.f77440b;
        if (j2 > 0) {
            sink.D(buffer, j2);
        }
        sink.flush();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.d;
    }

    @Override // okio.BufferedSink
    public final BufferedSink l1(long j2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.o0(j2);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink r0(String str) {
        str.getClass();
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.M0(str);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink r1(int i2, int i3, String str) {
        str.getClass();
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.I0(i2, i3, str);
        X();
        return this;
    }

    @Override // okio.Sink
    /* JADX INFO: renamed from: timeout */
    public final Timeout getF77431c() {
        return this.f77440b.getF77431c();
    }

    public final String toString() {
        return "buffer(" + this.f77440b + ')';
    }

    @Override // okio.BufferedSink
    public final long u0(Source source) {
        source.getClass();
        long j2 = 0;
        while (true) {
            long j3 = source.read(this.f77441c, 8192L);
            if (j3 == -1) {
                return j2;
            }
            j2 += j3;
            X();
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        bArr.getClass();
        if (this.d) {
            md.k("closed");
            return null;
        }
        Buffer buffer = this.f77441c;
        buffer.getClass();
        buffer.write(bArr, 0, bArr.length);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeByte(int i2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.m0(i2);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeInt(int i2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.p0(i2);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeShort(int i2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.v0(i2);
        X();
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink x(long j2) {
        if (this.d) {
            md.k("closed");
            return null;
        }
        this.f77441c.q0(SegmentedByteString.d(j2));
        X();
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (!this.d) {
            int iWrite = this.f77441c.write(byteBuffer);
            X();
            return iWrite;
        }
        md.k("closed");
        return 0;
    }
}
