package okio;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/BlackholeSink;", "Lokio/Sink;", "<init>", "()V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class BlackholeSink implements Sink {
    @Override // okio.Sink
    public final void D(Buffer buffer, long j2) {
        buffer.getClass();
        buffer.skip(j2);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return Timeout.d;
    }
}
