package com.networkbench.agent.impl.okhttp3.websocket;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.crash.d;
import com.networkbench.agent.impl.crash.f;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.r;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebSocketListener extends WebSocketListener implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e f37599b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f37600a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<a> f37601c = new CopyOnWriteArrayList();

    public NBSWebSocketListener() {
        this.f37601c.add(new b());
        d.f36645a.add(this);
    }

    private NBSTransactionState a(Request request) {
        NBSTransactionState nBSTransactionState = null;
        if (request != null) {
            try {
                NBSTransactionState nBSTransactionState2 = (NBSTransactionState) request.a(Reflection.f71922a.b(NBSTransactionState.class));
                try {
                    if (nBSTransactionState2 == null) {
                        f37599b.a("retrive transaction from reqeust failed");
                        return nBSTransactionState2;
                    }
                    f37599b.a("retrive transaction from reqeust transaction obj:" + nBSTransactionState2.toString());
                    return nBSTransactionState2;
                } catch (Throwable th) {
                    th = th;
                    nBSTransactionState = nBSTransactionState2;
                    f37599b.f("error retriveRequestTransaction:" + th);
                    return nBSTransactionState;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return nBSTransactionState;
    }

    @Override // com.networkbench.agent.impl.crash.f
    public boolean isSpan() {
        return true;
    }

    @Override // com.networkbench.agent.impl.crash.f
    public void notifyCrash(Thread thread, Throwable th, long j2) {
        try {
            if (a()) {
                Iterator<a> it = this.f37601c.iterator();
                while (it.hasNext()) {
                    it.next().b(-1, "crash");
                }
            }
        } catch (Exception e2) {
            f37599b.a("websocket error", e2);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onClosed(WebSocket webSocket, int i2, String str) {
        try {
            try {
                if (a()) {
                    Iterator<a> it = this.f37601c.iterator();
                    while (it.hasNext()) {
                        it.next().b(i2, str);
                    }
                }
            } catch (Exception e2) {
                f37599b.a("websocket error", e2);
            }
        } finally {
            d.f36645a.remove(this);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onClosing(WebSocket webSocket, int i2, String str) {
        try {
            if (a()) {
                Iterator<a> it = this.f37601c.iterator();
                while (it.hasNext()) {
                    it.next().a(i2, str);
                }
            }
        } catch (Exception e2) {
            f37599b.a("websocket error", e2);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
        try {
            try {
                if (a()) {
                    int i2 = response != null ? response.f76986e : -1;
                    if (this.f37600a == null) {
                        c cVarA = a(a(webSocket.getOriginalRequest()));
                        this.f37600a = cVarA;
                        cVarA.f37610b = false;
                    }
                    Iterator<a> it = this.f37601c.iterator();
                    while (it.hasNext()) {
                        it.next().a(this.f37600a, i2, th.getMessage(), th);
                    }
                }
            } catch (Exception e2) {
                f37599b.a("websocket error", e2);
            }
        } finally {
            d.f36645a.remove(this);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(WebSocket webSocket, String str) {
        try {
            if (a()) {
                Iterator<a> it = this.f37601c.iterator();
                while (it.hasNext()) {
                    it.next().a(str == null ? 0 : str.length());
                }
            }
        } catch (Exception e2) {
            f37599b.a("websocket error", e2);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onOpen(WebSocket webSocket, Response response) {
        try {
            e eVar = f37599b;
            eVar.a("onOpen happened");
            if (!a()) {
                eVar.a("onOpen failed, Http_network_enabled is false");
                return;
            }
            this.f37600a = a(a(webSocket.getOriginalRequest()));
            Iterator<a> it = this.f37601c.iterator();
            while (it.hasNext()) {
                it.next().a(this.f37600a);
            }
        } catch (Exception e2) {
            f37599b.a("websocket error", e2);
        }
    }

    public void onReadPong(ByteString byteString) {
        try {
            f37599b.a("onReadPong payload length:" + byteString.e());
            if (a()) {
                Iterator<a> it = this.f37601c.iterator();
                while (it.hasNext()) {
                    it.next().c(byteString.e());
                }
            }
        } catch (Throwable th) {
            f37599b.a("websocket onReadPong", th);
        }
    }

    public boolean send(ByteString byteString, int i2) {
        try {
            f37599b.a("send data length:" + byteString.e() + ", formatOpcode:" + i2);
            if (!a()) {
                return false;
            }
            Iterator<a> it = this.f37601c.iterator();
            while (it.hasNext()) {
                it.next().a(byteString.e(), i2);
            }
        } catch (Throwable th) {
            f37599b.a("websocket send", th);
        }
        return false;
    }

    public void writePingFrame() {
        try {
            f37599b.a("writePingFrame happened");
            if (a()) {
                Iterator<a> it = this.f37601c.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
            }
        } catch (Throwable th) {
            f37599b.a("websocket writePingFrame", th);
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(WebSocket webSocket, ByteString byteString) {
        try {
            if (a()) {
                Iterator<a> it = this.f37601c.iterator();
                while (it.hasNext()) {
                    it.next().b(byteString == null ? 0 : byteString.e());
                }
            }
        } catch (Exception e2) {
            f37599b.a("websocket error", e2);
        }
    }

    private c a(NBSTransactionState nBSTransactionState) {
        c cVar = new c();
        cVar.f37609a = nBSTransactionState;
        cVar.f37610b = true;
        cVar.f37611c = -1;
        cVar.d = "";
        return cVar;
    }

    private boolean a() {
        return r.u().V();
    }
}
