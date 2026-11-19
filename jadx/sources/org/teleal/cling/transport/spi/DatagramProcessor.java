package org.teleal.cling.transport.spi;

import java.net.DatagramPacket;
import java.net.InetAddress;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.OutgoingDatagramMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface DatagramProcessor {
    DatagramPacket a(OutgoingDatagramMessage outgoingDatagramMessage);

    IncomingDatagramMessage b(InetAddress inetAddress, DatagramPacket datagramPacket);
}
