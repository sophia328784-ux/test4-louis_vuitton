package okhttp3.internal.ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import okio.Buffer;
import okio.InflaterSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "", "noContextTakeover", "<init>", "(Z)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MessageInflater implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Buffer f77354c = new Buffer();
    public Inflater d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InflaterSource f77355e;

    public MessageInflater(boolean z) {
        this.f77353b = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        InflaterSource inflaterSource = this.f77355e;
        if (inflaterSource != null) {
            inflaterSource.close();
        }
        this.f77355e = null;
        this.d = null;
    }
}
