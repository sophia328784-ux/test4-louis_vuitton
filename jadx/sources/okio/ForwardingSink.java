package okio;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "<init>", "(Lokio/Sink;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ForwardingSink implements Sink {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Sink f77416b;

    public ForwardingSink(Sink sink) {
        sink.getClass();
        this.f77416b = sink;
    }

    @Override // okio.Sink
    public void D(Buffer buffer, long j2) {
        buffer.getClass();
        this.f77416b.D(buffer, j2);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f77416b.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.f77416b.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.f77416b.timeout();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.f77416b + ')';
    }
}
