package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/cache/FaultHidingSink;", "Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "Lkotlin/Function1;", "Ljava/io/IOException;", "", "onException", "<init>", "(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class FaultHidingSink extends ForwardingSink {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f77065c;
    public boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaultHidingSink(Sink sink, Function1<? super IOException, Unit> function1) {
        super(sink);
        sink.getClass();
        function1.getClass();
        this.f77065c = function1;
    }

    @Override // okio.ForwardingSink, okio.Sink
    public final void D(Buffer buffer, long j2) {
        buffer.getClass();
        if (this.d) {
            buffer.skip(j2);
            return;
        }
        try {
            this.f77416b.D(buffer, j2);
        } catch (IOException e2) {
            this.d = true;
            this.f77065c.invoke(e2);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            super.close();
        } catch (IOException e2) {
            this.d = true;
            this.f77065c.invoke(e2);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public final void flush() {
        if (this.d) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e2) {
            this.d = true;
            this.f77065c.invoke(e2);
        }
    }
}
