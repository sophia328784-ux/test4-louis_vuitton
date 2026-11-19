package org.teleal.cling.controlpoint;

import org.teleal.cling.UpnpServiceConfiguration;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.registry.Registry;

/* JADX INFO: loaded from: classes5.dex */
public interface ControlPoint {
    ProtocolFactory a();

    Registry b();

    UpnpServiceConfiguration getConfiguration();
}
