package coil3.disk;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0016\u0010\u0007\u001a\u0012\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/disk/FaultHidingSink;", "Lokio/Sink;", "delegate", "Lkotlin/Function1;", "Ljava/io/IOException;", "Lokio/IOException;", "", "onException", "<init>", "(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FaultHidingSink implements Sink {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Sink f21412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f21413c;
    public boolean d;

    public FaultHidingSink(Sink sink, Function1<? super IOException, Unit> function1) {
        this.f21412b = sink;
        this.f21413c = function1;
    }

    @Override // okio.Sink
    public final void D(Buffer buffer, long j2) {
        if (this.d) {
            buffer.skip(j2);
            return;
        }
        try {
            this.f21412b.D(buffer, j2);
        } catch (IOException e2) {
            this.d = true;
            this.f21413c.invoke(e2);
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.f21412b.close();
        } catch (IOException e2) {
            this.d = true;
            this.f21413c.invoke(e2);
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        try {
            this.f21412b.flush();
        } catch (IOException e2) {
            this.d = true;
            this.f21413c.invoke(e2);
        }
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.f21412b.timeout();
    }
}
