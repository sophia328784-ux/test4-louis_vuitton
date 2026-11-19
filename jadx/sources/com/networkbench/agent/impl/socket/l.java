package com.networkbench.agent.impl.socket;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.KeyManagementException;
import java.security.SecureRandom;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContextSpi;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends SSLContextSpi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method[] f38196a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f38197b = false;
    private static final int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f38198e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f38199f = 2;
    private static final int g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f38200h = 4;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f38201i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f38202j = 6;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f38203k = 7;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SSLContextSpi f38204c;

    static {
        Method[] methodArr = new Method[7];
        f38196a = methodArr;
        try {
            methodArr[0] = SSLContextSpi.class.getDeclaredMethod("engineCreateSSLEngine", null);
            f38196a[1] = SSLContextSpi.class.getDeclaredMethod("engineCreateSSLEngine", String.class, Integer.TYPE);
            f38196a[2] = SSLContextSpi.class.getDeclaredMethod("engineGetClientSessionContext", null);
            f38196a[3] = SSLContextSpi.class.getDeclaredMethod("engineGetServerSessionContext", null);
            f38196a[4] = SSLContextSpi.class.getDeclaredMethod("engineGetServerSocketFactory", null);
            f38196a[5] = SSLContextSpi.class.getDeclaredMethod("engineGetSocketFactory", null);
            f38196a[6] = SSLContextSpi.class.getDeclaredMethod("engineInit", KeyManager[].class, TrustManager[].class, SecureRandom.class);
            for (Method method : f38196a) {
                if (method != null) {
                    method.setAccessible(true);
                }
            }
            l lVar = new l();
            lVar.engineCreateSSLEngine();
            lVar.engineCreateSSLEngine(null, 0);
            lVar.engineGetClientSessionContext();
            lVar.engineGetServerSessionContext();
            lVar.engineGetServerSocketFactory();
            lVar.engineGetSocketFactory();
            lVar.engineInit(null, null, null);
            f38197b = true;
        } catch (Throwable unused) {
            f38197b = false;
        }
    }

    private l(SSLContextSpi sSLContextSpi) {
        this.f38204c = sSLContextSpi;
    }

    private Object a(int i2, Object... objArr) throws Exception {
        SSLContextSpi sSLContextSpi = this.f38204c;
        if (sSLContextSpi == null) {
            return null;
        }
        try {
            return f38196a[i2].invoke(sSLContextSpi, objArr);
        } catch (ClassCastException e2) {
            throw new com.networkbench.agent.impl.socket.a.a(e2);
        } catch (IllegalAccessException e3) {
            throw new com.networkbench.agent.impl.socket.a.a(e3);
        } catch (IllegalArgumentException e4) {
            throw new com.networkbench.agent.impl.socket.a.a(e4);
        } catch (InvocationTargetException e5) {
            Throwable targetException = e5.getTargetException();
            if (targetException == null) {
                throw new com.networkbench.agent.impl.socket.a.a(e5);
            }
            if (targetException instanceof Exception) {
                throw ((Exception) targetException);
            }
            if (targetException instanceof Error) {
                throw ((Error) targetException);
            }
            throw new com.networkbench.agent.impl.socket.a.a(e5);
        }
    }

    private Object b(int i2, Object... objArr) {
        try {
            return a(i2, objArr);
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Throwable th) {
            throw new com.networkbench.agent.impl.socket.a.a(th);
        }
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final SSLEngine engineCreateSSLEngine(String str, int i2) {
        return (SSLEngine) b(1, str, Integer.valueOf(i2));
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final SSLSessionContext engineGetClientSessionContext() {
        return (SSLSessionContext) b(2, new Object[0]);
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final SSLSessionContext engineGetServerSessionContext() {
        return (SSLSessionContext) b(3, new Object[0]);
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final SSLServerSocketFactory engineGetServerSocketFactory() {
        return (SSLServerSocketFactory) b(4, new Object[0]);
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final SSLSocketFactory engineGetSocketFactory() {
        SSLSocketFactory sSLSocketFactory = (SSLSocketFactory) b(5, new Object[0]);
        if (sSLSocketFactory == null) {
            return sSLSocketFactory;
        }
        try {
            return new CustomSSLSocketFactory(sSLSocketFactory);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return sSLSocketFactory;
        }
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final void engineInit(KeyManager[] keyManagerArr, TrustManager[] trustManagerArr, SecureRandom secureRandom) throws KeyManagementException {
        a(keyManagerArr, trustManagerArr, secureRandom);
    }

    public final boolean equals(Object obj) {
        return this.f38204c.equals(obj);
    }

    public final int hashCode() {
        return this.f38204c.hashCode();
    }

    public final String toString() {
        return this.f38204c.toString();
    }

    private l() {
    }

    @Override // javax.net.ssl.SSLContextSpi
    public final SSLEngine engineCreateSSLEngine() {
        return (SSLEngine) b(0, new Object[0]);
    }

    public static boolean a() {
        return f38197b;
    }

    public static l a(SSLContextSpi sSLContextSpi) {
        if (f38197b) {
            return new l(sSLContextSpi);
        }
        return null;
    }

    private Object a(Object... objArr) throws KeyManagementException {
        try {
            return a(6, objArr);
        } catch (RuntimeException e2) {
            throw e2;
        } catch (KeyManagementException e3) {
            throw e3;
        } catch (Throwable th) {
            throw new com.networkbench.agent.impl.socket.a.a(th);
        }
    }
}
