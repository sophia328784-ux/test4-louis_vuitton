package org.teleal.cling.transport;

import java.net.InetAddress;
import java.util.List;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.transport.impl.apache.HttpServerConnectionUpnpStream;
import org.teleal.cling.transport.spi.NetworkAddressFactory;

/* JADX INFO: loaded from: classes5.dex */
public interface Router {
    ProtocolFactory a();

    void b(IncomingDatagramMessage incomingDatagramMessage);

    StreamResponseMessage c(StreamRequestMessage streamRequestMessage);

    List d(InetAddress inetAddress);

    NetworkAddressFactory e();

    void f(HttpServerConnectionUpnpStream httpServerConnectionUpnpStream);

    void send(OutgoingDatagramMessage outgoingDatagramMessage);

    void shutdown();
}
