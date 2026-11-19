package org.teleal.cling.android;

import android.net.wifi.WifiManager;
import defpackage.cj;
import defpackage.ct0;
import defpackage.pq0;
import defpackage.x1;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.logging.Logger;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.NetworkAddressFactory;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidNetworkAddressFactory implements NetworkAddressFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f78297c = Logger.getLogger(NetworkAddressFactory.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NetworkInterface f78298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f78299b = new ArrayList();

    public AndroidNetworkAddressFactory(WifiManager wifiManager) throws InitializationException {
        boolean z = ModelUtil.f78378b;
        Logger logger = f78297c;
        NetworkInterface networkInterface = null;
        if (z) {
            try {
                loop0: for (NetworkInterface networkInterface2 : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                    Iterator it = Collections.list(networkInterface2.getInetAddresses()).iterator();
                    while (it.hasNext()) {
                        if (!((InetAddress) it.next()).isLoopbackAddress()) {
                            networkInterface = networkInterface2;
                            break loop0;
                        }
                    }
                }
            } catch (Exception e2) {
                throw new InitializationException(cj.j("Could not find emulator's network interface: ", e2), e2);
            }
        } else {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
                int iReverseBytes = Integer.reverseBytes(ipAddress);
                loop3: while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        byte[] address = inetAddresses.nextElement().getAddress();
                        int iD = (address == null || address.length < 4) ? -1 : pq0.D((address[0] & 255) << 24, (address[1] & 255) << 16, (address[2] & 255) << 8, address[3] & 255);
                        if (iD == ipAddress || iD == iReverseBytes) {
                            networkInterface = networkInterfaceNextElement;
                            break loop3;
                        }
                    }
                }
            } catch (SocketException unused) {
                logger.info("No network interfaces available");
            }
        }
        this.f78298a = networkInterface;
        if (networkInterface == null) {
            throw new InitializationException("Could not discover WiFi network interface");
        }
        logger.info("Discovered WiFi network interface: " + networkInterface.getDisplayName());
        try {
            logger.finer("Discovering addresses of interface: " + networkInterface.getDisplayName());
            for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                if (inetAddress == null) {
                    logger.warning("Network has a null address: " + networkInterface.getDisplayName());
                } else if (inetAddress instanceof Inet4Address) {
                    logger.fine("Discovered usable network interface address: " + inetAddress.getHostAddress());
                    this.f78299b.add(inetAddress);
                } else {
                    logger.finer("Skipping unsupported non-IPv4 address: " + inetAddress);
                    logger.finer("Ignoring non-usable network interface address: " + inetAddress.getHostAddress());
                }
            }
        } catch (Exception e3) {
            throw new InitializationException(cj.j("Could not not analyze local network interfaces: ", e3), e3);
        }
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final InetAddress a() {
        try {
            return InetAddress.getByName("229.255.255.250");
        } catch (UnknownHostException e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final InetAddress[] b() {
        ArrayList arrayList = this.f78299b;
        return (InetAddress[]) arrayList.toArray(new InetAddress[arrayList.size()]);
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final int c() {
        return 0;
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final InetAddress d(NetworkInterface networkInterface, boolean z, InetAddress inetAddress) {
        for (InetAddress inetAddress2 : Collections.list(networkInterface.getInetAddresses())) {
            if (z && (inetAddress2 instanceof Inet6Address)) {
                return inetAddress2;
            }
            if (!z && (inetAddress2 instanceof Inet4Address)) {
                return inetAddress2;
            }
        }
        ct0.o(networkInterface.getDisplayName(), "Can't find any IPv4 or IPv6 address on interface: ");
        return null;
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final NetworkInterface[] e() {
        return new NetworkInterface[]{this.f78298a};
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final int f() {
        return 5353;
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final int g() {
        return 1900;
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final InetAddress h() {
        try {
            return InetAddress.getByName("239.255.255.250");
        } catch (UnknownHostException e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final byte[] i(InetAddress inetAddress) {
        return null;
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final InetAddress j() {
        try {
            return InetAddress.getByName("224.0.0.251");
        } catch (UnknownHostException e2) {
            x1.m(e2);
            return null;
        }
    }
}
