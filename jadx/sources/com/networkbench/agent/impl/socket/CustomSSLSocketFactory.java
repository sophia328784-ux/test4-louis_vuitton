package com.networkbench.agent.impl.socket;

import com.android.org.conscrypt.SSLParametersImpl;
import com.networkbench.agent.impl.util.ad;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomSSLSocketFactory extends a {
    private static boolean installed = false;
    private static SSLParametersImpl parameters;
    private static SSLSocketFactory sslSocketFactory;
    private SSLSocketFactory delegate;
    private SSLParametersImpl sslParameters;

    public CustomSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.delegate = sSLSocketFactory;
        this.sslParameters = a(sSLSocketFactory);
    }

    private static SSLParametersImpl a(SSLSocketFactory sSLSocketFactory) {
        SSLParametersImpl sSLParametersImplC;
        try {
            sSLParametersImplC = (SSLParametersImpl) ad.b(ad.a((Class) sSLSocketFactory.getClass(), SSLParametersImpl.class, false), sSLSocketFactory);
        } catch (Throwable unused) {
            sSLParametersImplC = null;
        }
        if (sSLParametersImplC == null) {
            com.networkbench.agent.impl.util.r.A.a("sSLParametersImpl == null");
            sSLParametersImplC = c();
        }
        parameters = sSLParametersImplC;
        return sSLParametersImplC;
    }

    public static boolean b() throws ThreadDeath {
        boolean z = installed;
        if (z) {
            return z;
        }
        SSLSocketFactory defaultSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
        try {
            CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory(defaultSSLSocketFactory);
            try {
                customSSLSocketFactory.createSocket(customSSLSocketFactory.createSocket(), "localhost", 6895, true);
            } catch (SocketException unused) {
            }
            HttpsURLConnection.setDefaultSSLSocketFactory(customSSLSocketFactory);
            sslSocketFactory = defaultSSLSocketFactory;
            installed = true;
            return true;
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused2) {
            return false;
        }
    }

    private static SSLParametersImpl c() {
        try {
            Method declaredMethod = SSLParametersImpl.class.getDeclaredMethod("getDefault", null);
            declaredMethod.setAccessible(true);
            return (SSLParametersImpl) declaredMethod.invoke(null, null);
        } catch (Exception e2) {
            com.networkbench.agent.impl.util.r.A.a("createAvalidSSLParameters is error:", e2);
            return null;
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i2, boolean z) throws IOException {
        return new e(socket, str, i2, z, a(this.sslParameters));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2) {
        return new b(str, i2, a(this.sslParameters));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return new b(str, i2, inetAddress, i3, a(this.sslParameters));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2) {
        return new b(inetAddress, i2, a(this.sslParameters));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return new b(inetAddress, i2, inetAddress2, i3, a(this.sslParameters));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return new b(a(this.sslParameters));
    }

    private static SSLParametersImpl a(SSLParametersImpl sSLParametersImpl) {
        try {
            Method declaredMethod = SSLParametersImpl.class.getDeclaredMethod("clone", null);
            declaredMethod.setAccessible(true);
            return (SSLParametersImpl) declaredMethod.invoke(sSLParametersImpl, null);
        } catch (Throwable unused) {
            return parameters;
        }
    }

    @Override // com.networkbench.agent.impl.socket.a
    public final SSLSocketFactory a() {
        return this.delegate;
    }
}
