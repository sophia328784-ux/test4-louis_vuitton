package okhttp3.internal.connection;

import kotlin.Metadata;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1", "Lokhttp3/internal/connection/BufferedSocket;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BufferedSocketKt$asBufferedSocket$1 implements BufferedSocket {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Socket f77083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RealBufferedSource f77084c;
    public final RealBufferedSink d;

    public BufferedSocketKt$asBufferedSocket$1(Socket socket) {
        this.f77083b = socket;
        this.f77084c = Okio.c(socket.getSource());
        this.d = Okio.b(socket.a());
    }

    @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
    public final BufferedSink a() {
        return this.d;
    }

    @Override // okio.Socket
    public final void cancel() {
        this.f77083b.cancel();
    }

    @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
    public final BufferedSource getSource() {
        return this.f77084c;
    }

    @Override // okio.Socket
    public final Sink a() {
        return this.d;
    }

    @Override // okio.Socket
    public final Source getSource() {
        return this.f77084c;
    }
}
