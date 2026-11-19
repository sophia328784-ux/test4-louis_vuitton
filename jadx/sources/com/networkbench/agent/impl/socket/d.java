package com.networkbench.agent.impl.socket;

import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImplWrapper;
import org.apache.harmony.xnet.provider.jsse.SSLParametersImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends OpenSSLSocketImplWrapper implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f38174c;

    public d(Socket socket, String str, int i2, boolean z, SSLParametersImpl sSLParametersImpl) throws IOException {
        super(socket, str, i2, z, sSLParametersImpl);
        this.f38174c = new j();
        this.f38172a = 0;
        this.f38173b = str;
    }

    @Override // com.networkbench.agent.impl.socket.m
    public void a(NBSTransactionState nBSTransactionState) {
        this.f38174c.a(nBSTransactionState);
    }

    public final synchronized void close() throws IOException {
        super.close();
    }

    public final InputStream getInputStream() throws IOException {
        try {
            InputStream inputStream = super.getInputStream();
            if (inputStream == null) {
                return null;
            }
            com.networkbench.agent.impl.util.r.A.a("CustomOpenSSLSocketImplOldWrapper getInputStream time:" + System.currentTimeMillis());
            if (inputStream instanceof i) {
                return inputStream;
            }
            this.f38174c.a(false);
            return new i(this.f38174c, inputStream);
        } catch (Throwable th) {
            com.networkbench.agent.impl.util.r.A.a("getInputStream error:" + th.getMessage());
            return super.getInputStream();
        }
    }

    public final OutputStream getOutputStream() throws IOException {
        try {
            OutputStream outputStream = super.getOutputStream();
            if (outputStream == null) {
                return null;
            }
            com.networkbench.agent.impl.util.r.A.a("CustomOpenSSLSocketImplOldWrapper getOutputStream time:" + System.currentTimeMillis());
            return outputStream instanceof h ? outputStream : new h(this.f38174c, outputStream);
        } catch (IOException e2) {
            com.networkbench.agent.impl.util.r.A.a("getOutputStream error:" + e2.getMessage());
            return super.getOutputStream();
        }
    }

    public final void startHandshake() throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        super.startHandshake();
        int iCurrentTimeMillis = this.f38172a + ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
        this.f38172a = iCurrentTimeMillis;
        r.a(this.f38173b, iCurrentTimeMillis);
        this.f38174c.a(this.f38173b);
    }
}
