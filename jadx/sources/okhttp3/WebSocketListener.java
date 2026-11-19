package okhttp3;

import kotlin.Metadata;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/WebSocketListener;", "", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i2, String str) {
        str.getClass();
    }

    public void onClosing(WebSocket webSocket, int i2, String str) {
        str.getClass();
    }

    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
        th.getClass();
    }

    public void onMessage(WebSocket webSocket, String str) {
        str.getClass();
    }

    public void onOpen(WebSocket webSocket, Response response) {
        response.getClass();
    }

    public void onMessage(WebSocket webSocket, ByteString byteString) {
        byteString.getClass();
    }
}
