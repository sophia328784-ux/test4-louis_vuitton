package okhttp3.internal.connection;

import kotlin.Metadata;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Socket;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/connection/BufferedSocket;", "Lokio/Socket;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface BufferedSocket extends Socket {
    @Override // okio.Socket
    BufferedSink a();

    @Override // okio.Socket
    BufferedSource getSource();
}
