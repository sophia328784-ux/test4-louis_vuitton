package org.teleal.cling.android;

import android.net.wifi.WifiManager;
import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.DefaultUpnpServiceConfiguration;
import org.teleal.cling.binding.xml.DeviceDescriptorBinder;
import org.teleal.cling.binding.xml.ServiceDescriptorBinder;
import org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl;
import org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl;
import org.teleal.cling.transport.impl.apache.StreamClientConfigurationImpl;
import org.teleal.cling.transport.impl.apache.StreamClientImpl;
import org.teleal.cling.transport.impl.apache.StreamServerConfigurationImpl;
import org.teleal.cling.transport.impl.apache.StreamServerImpl;
import org.teleal.cling.transport.spi.NetworkAddressFactory;
import org.teleal.cling.transport.spi.StreamClient;
import org.teleal.cling.transport.spi.StreamServer;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidUpnpServiceConfiguration extends DefaultUpnpServiceConfiguration {
    public static final Logger q = Logger.getLogger(AndroidUpnpServiceConfiguration.class.getName());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WifiManager f78300j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f78301k;
    public final ThreadPoolExecutor l;
    public final ThreadPoolExecutor m;
    public final ThreadPoolExecutor n;
    public final ThreadPoolExecutor o;
    public final ThreadPoolExecutor p;

    /* JADX INFO: renamed from: org.teleal.cling.android.AndroidUpnpServiceConfiguration$1, reason: invalid class name */
    class AnonymousClass1 extends StreamClientConfigurationImpl {
        @Override // org.teleal.cling.transport.impl.apache.StreamClientConfigurationImpl
        public final int a() {
            return 10;
        }

        @Override // org.teleal.cling.transport.impl.apache.StreamClientConfigurationImpl
        public final int b() {
            return 20;
        }

        @Override // org.teleal.cling.transport.impl.apache.StreamClientConfigurationImpl
        public final int c() {
            return 2;
        }

        @Override // org.teleal.cling.transport.impl.apache.StreamClientConfigurationImpl
        public final boolean d() {
            return false;
        }
    }

    /* JADX INFO: renamed from: org.teleal.cling.android.AndroidUpnpServiceConfiguration$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass2 extends ThreadPoolExecutor.DiscardPolicy {
        @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            Runnable runnablePeek = threadPoolExecutor.getQueue().peek();
            BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
            if (queue != null) {
                queue.clear();
                if (runnablePeek != null) {
                    queue.add(runnablePeek);
                }
            }
            runnable.getClass().toString();
            HashMap map = a.f71507a;
            super.rejectedExecution(runnable, threadPoolExecutor);
        }
    }

    public AndroidUpnpServiceConfiguration(WifiManager wifiManager, int i2, int i3) {
        super(i2, false);
        this.f78300j = wifiManager;
        this.f78301k = i3;
        System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
        this.l = (ThreadPoolExecutor) u();
        this.m = (ThreadPoolExecutor) u();
        this.o = (ThreadPoolExecutor) u();
        this.n = (ThreadPoolExecutor) u();
        this.p = (ThreadPoolExecutor) u();
    }

    public static void y(ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor != null) {
            q.fine("Shutting down thread pool");
            threadPoolExecutor.shutdown();
        }
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final StreamClient e() {
        return new StreamClientImpl(new AnonymousClass1());
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final int k() {
        int i2 = this.f78301k;
        if (i2 < 0) {
            return 60;
        }
        return i2;
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final Executor m() {
        return this.n;
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final Executor n() {
        return this.m;
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final Executor o() {
        return this.o;
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final Executor p() {
        return this.l;
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final StreamServer s(NetworkAddressFactory networkAddressFactory) {
        return new StreamServerImpl(new StreamServerConfigurationImpl(networkAddressFactory.c()));
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration, org.teleal.cling.UpnpServiceConfiguration
    public final void shutdown() {
        super.shutdown();
        y(this.l);
        y(this.o);
        y(this.n);
        y(this.m);
        y(this.p);
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration
    public final Executor u() {
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) Executors.newCachedThreadPool();
        threadPoolExecutor.setRejectedExecutionHandler(new AnonymousClass2());
        return threadPoolExecutor;
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration
    public final DeviceDescriptorBinder v() {
        return new UDA10DeviceDescriptorBinderSAXImpl();
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration
    public final NetworkAddressFactory w(int i2) {
        return new AndroidNetworkAddressFactory(this.f78300j);
    }

    @Override // org.teleal.cling.DefaultUpnpServiceConfiguration
    public final ServiceDescriptorBinder x() {
        return new UDA10ServiceDescriptorBinderSAXImpl();
    }

    public AndroidUpnpServiceConfiguration(WifiManager wifiManager, int i2) {
        this(wifiManager, 0, i2);
    }
}
