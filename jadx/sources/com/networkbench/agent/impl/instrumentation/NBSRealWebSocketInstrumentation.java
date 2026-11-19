package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.okhttp3.websocket.NBSWebSocketListener;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.r;
import okhttp3.WebSocketListener;
import okhttp3.internal.ws.RealWebSocket;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public class NBSRealWebSocketInstrumentation {
    private static final String TAG = "NBSRealWebSocketInstrumentation";

    private static boolean isCollection() {
        return r.u().V();
    }

    public static void onReadPong(Object obj, ByteString byteString) {
        try {
            if (isCollection() && obj != null && (obj instanceof RealWebSocket)) {
                WebSocketListener webSocketListener = (WebSocketListener) ad.a(obj, "listener");
                if (webSocketListener instanceof NBSWebSocketListener) {
                    ((NBSWebSocketListener) webSocketListener).onReadPong(byteString);
                }
            }
        } catch (Throwable th) {
            Logger.error(TAG, "websocket onReadPong", th);
        }
    }

    public static void send(Object obj, ByteString byteString, int i2) {
        try {
            if (isCollection() && obj != null && (obj instanceof RealWebSocket)) {
                WebSocketListener webSocketListener = (WebSocketListener) ad.a(obj, "listener");
                if (webSocketListener instanceof NBSWebSocketListener) {
                    ((NBSWebSocketListener) webSocketListener).send(byteString, i2);
                }
            }
        } catch (Throwable th) {
            Logger.error(TAG, "websocket send", th);
        }
    }

    public static void writePingFrame(Object obj) {
        try {
            if (isCollection() && obj != null && (obj instanceof RealWebSocket)) {
                WebSocketListener webSocketListener = (WebSocketListener) ad.a(obj, "listener");
                if (webSocketListener instanceof NBSWebSocketListener) {
                    ((NBSWebSocketListener) webSocketListener).writePingFrame();
                }
            }
        } catch (Throwable th) {
            Logger.error(TAG, "websocket send", th);
        }
    }
}
