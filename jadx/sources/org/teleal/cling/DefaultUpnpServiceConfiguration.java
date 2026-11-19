package org.teleal.cling;

import java.util.concurrent.Executor;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;
import org.teleal.cling.binding.xml.DeviceDescriptorBinder;
import org.teleal.cling.binding.xml.ServiceDescriptorBinder;
import org.teleal.cling.binding.xml.UDA10DeviceDescriptorBinderImpl;
import org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderImpl;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.transport.impl.DatagramIOConfigurationImpl;
import org.teleal.cling.transport.impl.DatagramIOImpl;
import org.teleal.cling.transport.impl.DatagramProcessorImpl;
import org.teleal.cling.transport.impl.GENAEventProcessorImpl;
import org.teleal.cling.transport.impl.MulticastReceiverConfigurationImpl;
import org.teleal.cling.transport.impl.MulticastReceiverImpl;
import org.teleal.cling.transport.impl.NetworkAddressFactoryImpl;
import org.teleal.cling.transport.impl.SOAPActionProcessorImpl;
import org.teleal.cling.transport.spi.NetworkAddressFactory;
import org.teleal.cling.transport.spi.StreamClient;
import org.teleal.cling.transport.spi.StreamServer;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultUpnpServiceConfiguration implements UpnpServiceConfiguration {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Logger f78280i = Logger.getLogger(DefaultUpnpServiceConfiguration.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f78282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DatagramProcessorImpl f78283c;
    public final SOAPActionProcessorImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GENAEventProcessorImpl f78284e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DeviceDescriptorBinder f78285f;
    public final ServiceDescriptorBinder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Namespace f78286h;

    /* JADX INFO: loaded from: classes2.dex */
    public static class ClingThreadFactory implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ThreadGroup f78287b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicInteger f78288c = new AtomicInteger(1);

        public ClingThreadFactory() {
            SecurityManager securityManager = System.getSecurityManager();
            this.f78287b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f78287b, runnable, "cling-" + this.f78288c.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public DefaultUpnpServiceConfiguration(int i2, boolean z) {
        if (z && ModelUtil.f78377a) {
            throw new Error("Unsupported runtime environment, use org.teleal.cling.android.AndroidUpnpServiceConfiguration");
        }
        this.f78281a = i2;
        this.f78282b = u();
        this.f78283c = new DatagramProcessorImpl();
        this.d = new SOAPActionProcessorImpl();
        this.f78284e = new GENAEventProcessorImpl();
        this.f78285f = v();
        this.g = x();
        this.f78286h = new Namespace();
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final Executor a() {
        return this.f78282b;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final DatagramProcessorImpl b() {
        return this.f78283c;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final MulticastReceiverImpl c(NetworkAddressFactory networkAddressFactory) {
        return new MulticastReceiverImpl(new MulticastReceiverConfigurationImpl(networkAddressFactory.j(), networkAddressFactory.f()));
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final Executor d() {
        return this.f78282b;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public StreamClient e() {
        return null;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final ServiceType[] f() {
        return new ServiceType[0];
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final ServiceDescriptorBinder g() {
        return this.g;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final Namespace getNamespace() {
        return this.f78286h;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final NetworkAddressFactory h() {
        return w(this.f78281a);
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final GENAEventProcessorImpl i() {
        return this.f78284e;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final DatagramIOImpl j() {
        return new DatagramIOImpl(new DatagramIOConfigurationImpl());
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public int k() {
        return 60;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final MulticastReceiverImpl l(NetworkAddressFactory networkAddressFactory) {
        return new MulticastReceiverImpl(new MulticastReceiverConfigurationImpl(networkAddressFactory.a(), networkAddressFactory.g()));
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public Executor m() {
        return this.f78282b;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public Executor n() {
        return this.f78282b;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public Executor o() {
        return this.f78282b;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public Executor p() {
        return this.f78282b;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final SOAPActionProcessorImpl q() {
        return this.d;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final MulticastReceiverImpl r(NetworkAddressFactory networkAddressFactory) {
        return new MulticastReceiverImpl(new MulticastReceiverConfigurationImpl(networkAddressFactory.h(), networkAddressFactory.g()));
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public StreamServer s(NetworkAddressFactory networkAddressFactory) {
        return null;
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public void shutdown() {
        Executor executor = this.f78282b;
        if (executor instanceof ThreadPoolExecutor) {
            f78280i.fine("Shutting down thread pool");
            ((ThreadPoolExecutor) executor).shutdown();
        }
    }

    @Override // org.teleal.cling.UpnpServiceConfiguration
    public final DeviceDescriptorBinder t() {
        return this.f78285f;
    }

    public Executor u() {
        return new ClingExecutor();
    }

    public DeviceDescriptorBinder v() {
        return new UDA10DeviceDescriptorBinderImpl();
    }

    public NetworkAddressFactory w(int i2) {
        return new NetworkAddressFactoryImpl(i2);
    }

    public ServiceDescriptorBinder x() {
        return new UDA10ServiceDescriptorBinderImpl();
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class ClingExecutor extends ThreadPoolExecutor implements AutoCloseable {

        /* JADX INFO: renamed from: org.teleal.cling.DefaultUpnpServiceConfiguration$ClingExecutor$1, reason: invalid class name */
        public class AnonymousClass1 extends ThreadPoolExecutor.DiscardPolicy {
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                DefaultUpnpServiceConfiguration.f78280i.info("Thread pool rejected execution of " + runnable.getClass());
                super.rejectedExecution(runnable, threadPoolExecutor);
            }
        }

        public ClingExecutor(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
            super(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory, rejectedExecutionHandler);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public final void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            if (th != null) {
                Logger logger = DefaultUpnpServiceConfiguration.f78280i;
                logger.warning("Thread terminated " + runnable + " abruptly with exception: " + th);
                StringBuilder sb = new StringBuilder("Root cause: ");
                sb.append(Exceptions.a(th));
                logger.warning(sb.toString());
            }
        }

        @Override // java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            boolean zIsTerminated;
            if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
                return;
            }
            shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }

        public ClingExecutor() {
            this(new ClingThreadFactory(), new AnonymousClass1());
        }
    }

    public DefaultUpnpServiceConfiguration(int i2) {
        this(i2, true);
    }

    public DefaultUpnpServiceConfiguration() {
        this(0);
    }
}
