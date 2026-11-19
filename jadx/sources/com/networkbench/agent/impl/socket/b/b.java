package com.networkbench.agent.impl.socket.b;

import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.e;
import com.networkbench.agent.impl.util.r;
import defpackage.o60;
import java.lang.reflect.Constructor;
import java.net.Socket;
import java.net.SocketImpl;
import java.net.SocketImplFactory;

/* JADX INFO: loaded from: classes2.dex */
public class b implements SocketImplFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<? extends SocketImpl> f38167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SocketImplFactory f38168b;

    public b(Class<? extends SocketImpl> cls) {
        this.f38167a = cls;
    }

    private static boolean a() {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (stackTraceElement != null && stackTraceElement.toString().contains("java.net.ServerSocket")) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception unused) {
            e.d("isServerSocket error", new Object[0]);
            return false;
        }
    }

    private static Socket b() {
        try {
            Constructor declaredConstructor = Socket.class.getDeclaredConstructor(SocketImpl.class);
            declaredConstructor.setAccessible(true);
            return (Socket) declaredConstructor.newInstance(c());
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("createAvalidSocket error:"), r.A);
            return null;
        }
    }

    private static SocketImpl c() {
        try {
            Constructor<?> declaredConstructor = Class.forName("java.net.SocksSocketImpl").getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            return (SocketImpl) declaredConstructor.newInstance(null);
        } catch (Throwable th) {
            r.A.f("createSocksSocketImpl e" + th);
            return null;
        }
    }

    @Override // java.net.SocketImplFactory
    public SocketImpl createSocketImpl() {
        SocketImplFactory socketImplFactory = this.f38168b;
        SocketImpl socketImplCreateSocketImpl = socketImplFactory != null ? socketImplFactory.createSocketImpl() : null;
        if (socketImplCreateSocketImpl == null) {
            try {
                socketImplCreateSocketImpl = (SocketImpl) ad.a(ad.a((Class<?>) Socket.class, (Class<?>) SocketImpl.class), b());
            } catch (Throwable unused) {
            }
        }
        com.networkbench.agent.impl.util.b.a(socketImplCreateSocketImpl);
        return (socketImplCreateSocketImpl == null || a()) ? socketImplCreateSocketImpl : new a(socketImplCreateSocketImpl);
    }

    public b(SocketImplFactory socketImplFactory) {
        this.f38168b = socketImplFactory;
    }
}
