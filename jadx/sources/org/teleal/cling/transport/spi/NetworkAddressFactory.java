package org.teleal.cling.transport.spi;

import java.net.InetAddress;
import java.net.NetworkInterface;

/* JADX INFO: loaded from: classes5.dex */
public interface NetworkAddressFactory {
    InetAddress a();

    InetAddress[] b();

    int c();

    InetAddress d(NetworkInterface networkInterface, boolean z, InetAddress inetAddress);

    NetworkInterface[] e();

    int f();

    int g();

    InetAddress h();

    byte[] i(InetAddress inetAddress);

    InetAddress j();
}
