package com.networkbench.agent.impl.socket;

import com.android.org.conscrypt.OpenSSLSocketImpl;
import com.android.org.conscrypt.SSLParametersImpl;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends OpenSSLSocketImpl implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f38157c;

    public b(InetAddress inetAddress, int i2, SSLParametersImpl sSLParametersImpl) {
        super(inetAddress, i2, sSLParametersImpl);
        this.f38157c = new j();
        this.f38156b = com.networkbench.agent.impl.util.s.a(inetAddress);
    }

    @Override // com.networkbench.agent.impl.socket.m
    public void a(NBSTransactionState nBSTransactionState) {
        this.f38157c.a(nBSTransactionState);
    }

    public final InputStream getInputStream() throws IOException {
        try {
            InputStream inputStream = super.getInputStream();
            if (inputStream == null) {
                return null;
            }
            com.networkbench.agent.impl.util.r.A.a("CustomOpenSSLSocketImpl getInputStream time:" + System.currentTimeMillis());
            if (inputStream instanceof i) {
                return inputStream;
            }
            this.f38157c.a(false);
            return new i(this.f38157c, inputStream);
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
            com.networkbench.agent.impl.util.r.A.a("CustomOpenSSLSocketImpl getOutputStream time:" + System.currentTimeMillis());
            return outputStream instanceof h ? outputStream : new h(this.f38157c, outputStream);
        } catch (IOException e2) {
            com.networkbench.agent.impl.util.r.A.a("getOutputStream error:" + e2.getMessage());
            return super.getOutputStream();
        }
    }

    public final void startHandshake() throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        super.startHandshake();
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
        this.f38155a = iCurrentTimeMillis;
        r.a(this.f38156b, iCurrentTimeMillis);
        this.f38157c.a(this.f38156b);
    }

    public b(String str, int i2, SSLParametersImpl sSLParametersImpl) {
        super(str, i2, sSLParametersImpl);
        this.f38157c = new j();
        this.f38156b = str;
    }

    public b(SSLParametersImpl sSLParametersImpl) {
        super(sSLParametersImpl);
        this.f38157c = new j();
    }

    public b(String str, int i2, InetAddress inetAddress, int i3, SSLParametersImpl sSLParametersImpl) {
        super(str, i2, inetAddress, i3, sSLParametersImpl);
        this.f38157c = new j();
        this.f38156b = str;
    }

    public b(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3, SSLParametersImpl sSLParametersImpl) {
        super(inetAddress, i2, inetAddress2, i3, sSLParametersImpl);
        this.f38157c = new j();
        this.f38156b = com.networkbench.agent.impl.util.s.a(inetAddress);
    }
}
