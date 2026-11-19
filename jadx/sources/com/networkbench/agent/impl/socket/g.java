package com.networkbench.agent.impl.socket;

import java.net.Socket;
import java.net.SocketImpl;
import java.net.SocketImplFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements SocketImplFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f38181a = false;

    public static boolean a() {
        boolean z = f38181a;
        if (z) {
            return z;
        }
        g gVar = new g();
        try {
            gVar.createSocketImpl();
            Socket.setSocketImplFactory(gVar);
            f38181a = true;
            return true;
        } catch (Throwable unused) {
            return f38181a;
        }
    }

    @Override // java.net.SocketImplFactory
    public final SocketImpl createSocketImpl() {
        return new f();
    }
}
