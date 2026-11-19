package org.teleal.cling;

import org.teleal.cling.protocol.ProtocolFactoryImpl;
import org.teleal.cling.registry.RegistryImpl;
import org.teleal.cling.transport.Router;

/* JADX INFO: loaded from: classes5.dex */
public interface UpnpService {
    ProtocolFactoryImpl a();

    RegistryImpl b();

    Router c();

    UpnpServiceConfiguration getConfiguration();
}
