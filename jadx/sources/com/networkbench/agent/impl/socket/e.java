package com.networkbench.agent.impl.socket;

import com.android.org.conscrypt.OpenSSLSocketImplWrapper;
import com.android.org.conscrypt.SSLParametersImpl;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends OpenSSLSocketImplWrapper implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f38177c;

    public e(Socket socket, String str, int i2, boolean z, SSLParametersImpl sSLParametersImpl) throws IOException {
        super(socket, str, i2, z, sSLParametersImpl);
        this.f38177c = new j();
        this.f38175a = 0;
        this.f38176b = str;
    }

    @Override // com.networkbench.agent.impl.socket.m
    public void a(NBSTransactionState nBSTransactionState) {
        this.f38177c.a(nBSTransactionState);
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
            com.networkbench.agent.impl.util.r.A.a("CustomOpenSSLSocketImplWrapper getInputStream time:" + System.currentTimeMillis());
            if (inputStream instanceof i) {
                return inputStream;
            }
            this.f38177c.a(false);
            return new i(this.f38177c, inputStream);
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
            com.networkbench.agent.impl.util.r.A.a("CustomOpenSSLSocketImplWrapper getOutputStream time:" + System.currentTimeMillis());
            return outputStream instanceof h ? outputStream : new h(this.f38177c, outputStream);
        } catch (IOException e2) {
            com.networkbench.agent.impl.util.r.A.a("getOutputStream error:" + e2.getMessage());
            return super.getOutputStream();
        }
    }

    public final void startHandshake() throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        super.startHandshake();
        int iCurrentTimeMillis = this.f38175a + ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
        this.f38175a = iCurrentTimeMillis;
        r.a(this.f38176b, iCurrentTimeMillis);
        this.f38177c.a(this.f38176b);
    }
}
