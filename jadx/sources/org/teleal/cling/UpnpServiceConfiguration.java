package org.teleal.cling;

import java.util.concurrent.Executor;
import org.teleal.cling.binding.xml.DeviceDescriptorBinder;
import org.teleal.cling.binding.xml.ServiceDescriptorBinder;
import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.transport.impl.DatagramIOImpl;
import org.teleal.cling.transport.impl.DatagramProcessorImpl;
import org.teleal.cling.transport.impl.GENAEventProcessorImpl;
import org.teleal.cling.transport.impl.MulticastReceiverImpl;
import org.teleal.cling.transport.impl.SOAPActionProcessorImpl;
import org.teleal.cling.transport.spi.NetworkAddressFactory;
import org.teleal.cling.transport.spi.StreamClient;
import org.teleal.cling.transport.spi.StreamServer;

/* JADX INFO: loaded from: classes5.dex */
public interface UpnpServiceConfiguration {
    Executor a();

    DatagramProcessorImpl b();

    MulticastReceiverImpl c(NetworkAddressFactory networkAddressFactory);

    Executor d();

    StreamClient e();

    ServiceType[] f();

    ServiceDescriptorBinder g();

    Namespace getNamespace();

    NetworkAddressFactory h();

    GENAEventProcessorImpl i();

    DatagramIOImpl j();

    int k();

    MulticastReceiverImpl l(NetworkAddressFactory networkAddressFactory);

    Executor m();

    Executor n();

    Executor o();

    Executor p();

    SOAPActionProcessorImpl q();

    MulticastReceiverImpl r(NetworkAddressFactory networkAddressFactory);

    StreamServer s(NetworkAddressFactory networkAddressFactory);

    void shutdown();

    DeviceDescriptorBinder t();
}
