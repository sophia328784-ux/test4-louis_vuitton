package com.networkbench.agent.impl.socket;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.v;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PlainSocketImpl;
import java.net.SocketAddress;
import java.net.SocketException;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends PlainSocketImpl implements m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38178c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f38180b;
    private j d = new j();

    @Override // com.networkbench.agent.impl.socket.m
    public void a(NBSTransactionState nBSTransactionState) {
        this.d.a(nBSTransactionState);
    }

    public final void close() throws IOException {
        super.close();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [byte[], java.io.Serializable] */
    public final void connect(InetAddress inetAddress, int i2) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            super.connect(inetAddress, i2);
            return;
        }
        if (com.networkbench.agent.impl.util.s.a(i2)) {
            f38178c.a("connect(InetAddress ipAddr, int port) port:" + i2 + ", is not http/https");
            super.connect(inetAddress, i2);
            return;
        }
        com.networkbench.agent.impl.data.l lVar = new com.networkbench.agent.impl.data.l();
        try {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                lVar.a(com.networkbench.agent.impl.util.s.a(inetAddress));
                lVar.b(com.networkbench.agent.impl.util.s.b(inetAddress.getAddress()));
                lVar.b(i2);
                super.connect(inetAddress, i2);
                int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                this.f38179a = iCurrentTimeMillis;
                lVar.c(iCurrentTimeMillis);
                if (lVar.d() == null || v.d(lVar.d())) {
                    return;
                }
                Harvest.addSocketDatasInfo(lVar);
            } catch (IOException e2) {
                lVar.a(-1);
                lVar.d(e2.getMessage());
                throw e2;
            }
        } catch (Throwable th) {
            if (lVar.d() != null && !v.d(lVar.d())) {
                Harvest.addSocketDatasInfo(lVar);
            }
            throw th;
        }
    }

    public final InputStream getInputStream() throws IOException {
        try {
            InputStream inputStream = super.getInputStream();
            if (inputStream == null) {
                return null;
            }
            f38178c.a("CustomPlainSocketImpl getInputStream time:" + System.currentTimeMillis());
            if (inputStream instanceof i) {
                return inputStream;
            }
            this.d.a(false);
            return new i(this.d, inputStream);
        } catch (Throwable th) {
            f38178c.a("getInputStream error:" + th.getMessage());
            return super.getInputStream();
        }
    }

    public final Object getOption(int i2) throws SocketException {
        return super.getOption(i2);
    }

    public final OutputStream getOutputStream() throws IOException {
        try {
            OutputStream outputStream = super.getOutputStream();
            if (outputStream == null) {
                return null;
            }
            f38178c.a("customplainSocketImpl getOutputStream time:" + System.currentTimeMillis());
            return outputStream instanceof h ? outputStream : new h(this.d, outputStream);
        } catch (IOException e2) {
            f38178c.a("getOutputStream error:" + e2.getMessage());
            return super.getOutputStream();
        }
    }

    public final void setOption(int i2, Object obj) throws SocketException {
        super.setOption(i2, obj);
    }

    public final void connect(String str, int i2) throws IOException {
        if (com.networkbench.agent.impl.util.s.a(i2)) {
            f38178c.a("connect(String host, int port) port:" + i2 + ", is not http/https");
            super.connect(str, i2);
            return;
        }
        com.networkbench.agent.impl.data.l lVar = new com.networkbench.agent.impl.data.l();
        try {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                lVar.b(str);
                lVar.b(i2);
                super.connect(str, i2);
                int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                this.f38179a = iCurrentTimeMillis;
                lVar.c(iCurrentTimeMillis);
                if (lVar.d() == null || v.d(lVar.d())) {
                    return;
                }
                Harvest.addSocketDatasInfo(lVar);
            } catch (IOException e2) {
                lVar.a(-1);
                lVar.d(e2.getMessage());
                throw e2;
            }
        } catch (Throwable th) {
            if (lVar.d() != null && !v.d(lVar.d())) {
                Harvest.addSocketDatasInfo(lVar);
            }
            throw th;
        }
    }

    public final void connect(SocketAddress socketAddress, int i2) throws IOException {
        String strA;
        String strB;
        if (!Harvest.isHttp_network_enabled()) {
            super.connect(socketAddress, i2);
            return;
        }
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            strA = com.networkbench.agent.impl.util.s.a(inetSocketAddress);
            strB = com.networkbench.agent.impl.util.s.b(inetSocketAddress.getAddress());
        } else {
            strA = "";
            strB = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        super.connect(socketAddress, i2);
        f38178c.a("connect end time: " + System.currentTimeMillis());
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
        this.f38179a = iCurrentTimeMillis;
        this.d.a(iCurrentTimeMillis);
        v.a(strB, strA, this.f38179a, this.port, false);
        this.d.a(strA);
    }
}
