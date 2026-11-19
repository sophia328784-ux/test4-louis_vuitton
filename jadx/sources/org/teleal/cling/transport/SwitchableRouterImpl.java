package org.teleal.cling.transport;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Logger;
import org.teleal.cling.UpnpServiceConfiguration;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.transport.impl.apache.HttpServerConnectionUpnpStream;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.NetworkAddressFactory;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class SwitchableRouterImpl implements SwitchableRouter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Logger f78613e = Logger.getLogger(Router.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpnpServiceConfiguration f78614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProtocolFactory f78615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RouterImpl f78616c;
    public final ReentrantReadWriteLock.ReadLock d;

    public class DisabledNetworkAddressFactory implements NetworkAddressFactory {
        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final InetAddress a() {
            return null;
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final InetAddress[] b() {
            return new InetAddress[0];
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final int c() {
            return 0;
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final InetAddress d(NetworkInterface networkInterface, boolean z, InetAddress inetAddress) {
            return null;
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final NetworkInterface[] e() {
            return new NetworkInterface[0];
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final int f() {
            return 0;
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final int g() {
            return 0;
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final InetAddress h() {
            return null;
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final byte[] i(InetAddress inetAddress) {
            return new byte[0];
        }

        @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
        public final InetAddress j() {
            return null;
        }
    }

    public SwitchableRouterImpl(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(true);
        this.d = reentrantReadWriteLock.readLock();
        reentrantReadWriteLock.writeLock();
        this.f78614a = upnpServiceConfiguration;
        this.f78615b = protocolFactory;
    }

    public static void i(Lock lock) {
        f78613e.finest("Releasing router lock: ".concat(lock.getClass().getSimpleName()));
        lock.unlock();
    }

    @Override // org.teleal.cling.transport.Router
    public final ProtocolFactory a() {
        return this.f78615b;
    }

    @Override // org.teleal.cling.transport.Router
    public final void b(IncomingDatagramMessage incomingDatagramMessage) {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            RouterImpl routerImpl = this.f78616c;
            if (routerImpl != null) {
                routerImpl.b(incomingDatagramMessage);
            }
        } finally {
            i(readLock);
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final StreamResponseMessage c(StreamRequestMessage streamRequestMessage) {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            RouterImpl routerImpl = this.f78616c;
            return routerImpl != null ? routerImpl.c(streamRequestMessage) : null;
        } finally {
            i(readLock);
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final List d(InetAddress inetAddress) {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            RouterImpl routerImpl = this.f78616c;
            return routerImpl != null ? routerImpl.d(inetAddress) : Collections.EMPTY_LIST;
        } finally {
            i(readLock);
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final NetworkAddressFactory e() {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            RouterImpl routerImpl = this.f78616c;
            return routerImpl != null ? routerImpl.d : new DisabledNetworkAddressFactory();
        } finally {
            i(readLock);
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final void f(HttpServerConnectionUpnpStream httpServerConnectionUpnpStream) {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            RouterImpl routerImpl = this.f78616c;
            if (routerImpl != null) {
                routerImpl.f(httpServerConnectionUpnpStream);
            }
        } finally {
            i(readLock);
        }
    }

    public boolean g() {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            if (this.f78616c == null) {
                return false;
            }
            f78613e.fine("Disabling network transport router");
            this.f78616c.shutdown();
            this.f78616c = null;
            return true;
        } finally {
            i(readLock);
        }
    }

    public boolean h() {
        Logger logger = f78613e;
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            if (this.f78616c == null) {
                try {
                    logger.fine("Enabling network transport router");
                    this.f78616c = new RouterImpl(this.f78614a, this.f78615b);
                    i(readLock);
                    return true;
                } catch (InitializationException e2) {
                    logger.severe("Unable to initialize network router: " + e2);
                    logger.severe("Cause: " + Exceptions.a(e2));
                }
            }
            i(readLock);
            return false;
        } catch (Throwable th) {
            i(readLock);
            throw th;
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final void send(OutgoingDatagramMessage outgoingDatagramMessage) {
        ReentrantReadWriteLock.ReadLock readLock = this.d;
        readLock.lock();
        try {
            RouterImpl routerImpl = this.f78616c;
            if (routerImpl != null) {
                routerImpl.send(outgoingDatagramMessage);
            }
        } finally {
            i(readLock);
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final void shutdown() {
        g();
    }

    public static class RouterLockAcquisitionException extends RuntimeException {
        public RouterLockAcquisitionException() {
        }

        public RouterLockAcquisitionException(String str) {
            super(str);
        }

        public RouterLockAcquisitionException(String str, Throwable th) {
            super(str, th);
        }

        public RouterLockAcquisitionException(Throwable th) {
            super(th);
        }
    }
}
