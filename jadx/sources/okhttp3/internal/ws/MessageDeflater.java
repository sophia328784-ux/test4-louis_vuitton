package okhttp3.internal.ws;

import java.io.Closeable;
import java.util.zip.Deflater;
import kotlin.Metadata;
import okio.Buffer;
import okio.DeflaterSink;
import okio.Sink;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/ws/MessageDeflater;", "Ljava/io/Closeable;", "", "noContextTakeover", "<init>", "(Z)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MessageDeflater implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Buffer f77350c;
    public final Deflater d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DeflaterSink f77351e;

    public MessageDeflater(boolean z) {
        this.f77349b = z;
        Buffer buffer = new Buffer();
        this.f77350c = buffer;
        Deflater deflater = new Deflater(-1, true);
        this.d = deflater;
        this.f77351e = new DeflaterSink((Sink) buffer, deflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        this.f77351e.close();
    }
}
