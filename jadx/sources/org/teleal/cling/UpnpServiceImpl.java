package org.teleal.cling;

import com.linkplay.log.LinkplayLog;
import java.util.HashMap;
import java.util.logging.Logger;
import k.a;
import org.teleal.cling.controlpoint.ControlPointImpl;
import org.teleal.cling.protocol.ProtocolFactoryImpl;
import org.teleal.cling.registry.RegistryImpl;
import org.teleal.cling.registry.RegistryListener;
import org.teleal.cling.transport.Router;
import org.teleal.cling.transport.RouterImpl;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpServiceImpl implements UpnpService {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f78290f = Logger.getLogger(UpnpServiceImpl.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpnpServiceConfiguration f78291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ControlPointImpl f78292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProtocolFactoryImpl f78293c;
    public final RegistryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Router f78294e;

    public UpnpServiceImpl(UpnpServiceConfiguration upnpServiceConfiguration, RegistryListener... registryListenerArr) {
        this.f78291a = upnpServiceConfiguration;
        Logger logger = f78290f;
        logger.info(">>> Starting UPnP service...");
        logger.info("Using configuration: ".concat(upnpServiceConfiguration.getClass().getName()));
        this.f78293c = new ProtocolFactoryImpl(this);
        this.d = new RegistryImpl(this);
        for (RegistryListener registryListener : registryListenerArr) {
            this.d.j(registryListener);
        }
        System.out.println("createRouter in UpnpServiceImpl ");
        this.f78294e = d(this.f78293c);
        this.f78292b = new ControlPointImpl(this.f78291a, this.f78293c, this.d);
        logger.info("<<< UPnP service started successfully");
    }

    @Override // org.teleal.cling.UpnpService
    public final ProtocolFactoryImpl a() {
        return this.f78293c;
    }

    @Override // org.teleal.cling.UpnpService
    public final RegistryImpl b() {
        return this.d;
    }

    @Override // org.teleal.cling.UpnpService
    public final Router c() {
        return this.f78294e;
    }

    public Router d(ProtocolFactoryImpl protocolFactoryImpl) {
        UpnpServiceConfiguration upnpServiceConfiguration = this.f78291a;
        try {
            LinkplayLog.i("UPNP-SEARCH", " createRouter for send msg");
            return new RouterImpl(upnpServiceConfiguration, protocolFactoryImpl);
        } catch (Exception e2) {
            System.err.println("创建Router:error:" + e2.getMessage());
            e2.printStackTrace();
            return new RouterImpl(upnpServiceConfiguration, protocolFactoryImpl);
        }
    }

    public final synchronized void e() {
        HashMap map = a.f71507a;
        new Thread() { // from class: org.teleal.cling.UpnpServiceImpl.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                UpnpServiceImpl.this.d.z();
            }
        }.start();
        this.f78294e.shutdown();
        this.f78291a.shutdown();
    }

    @Override // org.teleal.cling.UpnpService
    public final UpnpServiceConfiguration getConfiguration() {
        return this.f78291a;
    }

    public UpnpServiceImpl(RegistryListener... registryListenerArr) {
        this(new DefaultUpnpServiceConfiguration(), registryListenerArr);
    }

    public UpnpServiceImpl() {
        this(new DefaultUpnpServiceConfiguration(), new RegistryListener[0]);
    }
}
