package org.teleal.cling.transport.impl;

import defpackage.cj;
import defpackage.ct0;
import defpackage.x1;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.logging.Logger;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.NetworkAddressFactory;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkAddressFactoryImpl implements NetworkAddressFactory {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f78624f = Logger.getLogger(NetworkAddressFactoryImpl.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f78625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f78626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f78627c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78628e;

    public NetworkAddressFactoryImpl(int i2) throws InitializationException {
        Iterator it;
        Logger logger;
        HashSet hashSet = new HashSet();
        this.f78625a = hashSet;
        HashSet hashSet2 = new HashSet();
        this.f78626b = hashSet2;
        this.f78627c = new ArrayList();
        this.d = new ArrayList();
        String property = System.getProperty("org.teleal.cling.network.useInterfaces");
        if (property != null) {
            hashSet.addAll(Arrays.asList(property.split(",")));
        }
        String property2 = System.getProperty("org.teleal.cling.network.useAddresses");
        if (property2 != null) {
            hashSet2.addAll(Arrays.asList(property2.split(",")));
        }
        try {
            try {
                String property3 = System.getProperty("os.name");
                if (property3 != null && property3.trim().toLowerCase().startsWith("linux")) {
                    Properties properties = System.getProperties();
                    properties.setProperty("java.net.preferIPv6Stack", "true");
                    System.setProperties(properties);
                }
                while (true) {
                    boolean zHasNext = it.hasNext();
                    logger = f78624f;
                    if (!zHasNext) {
                        try {
                            break;
                        } catch (Exception e2) {
                            throw new InitializationException(cj.j("Could not not analyze local network interfaces: ", e2), e2);
                        }
                    }
                    NetworkInterface networkInterface = (NetworkInterface) it.next();
                    logger.finer("Analyzing network interface: " + networkInterface.getDisplayName());
                    if (l(networkInterface)) {
                        logger.fine("Discovered usable network interface: " + networkInterface.getDisplayName());
                        this.f78627c.add(networkInterface);
                    } else {
                        logger.finer("Ignoring non-usable network interface: " + networkInterface.getDisplayName());
                    }
                }
            } catch (Throwable unused) {
            }
            it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            Iterator it2 = this.f78627c.iterator();
            while (it2.hasNext()) {
                NetworkInterface networkInterface2 = (NetworkInterface) it2.next();
                logger.finer("Discovering addresses of interface: " + networkInterface2.getDisplayName());
                int i3 = 0;
                for (InetAddress inetAddress : Collections.list(networkInterface2.getInetAddresses())) {
                    if (inetAddress == null) {
                        logger.warning("Network has a null address: " + networkInterface2.getDisplayName());
                    } else if (k(inetAddress)) {
                        logger.fine("Discovered usable network interface address: " + inetAddress.getHostAddress());
                        i3++;
                        this.d.add(inetAddress);
                    } else {
                        logger.finer("Ignoring non-usable network interface address: " + inetAddress.getHostAddress());
                    }
                }
                if (i3 == 0) {
                    logger.finer("Network interface has no usable addresses, removing: " + networkInterface2.getDisplayName());
                    it2.remove();
                }
            }
            if (this.f78627c.size() == 0 || this.d.size() == 0) {
                throw new InitializationException("Could not discover any bindable network interfaces and/or addresses");
            }
            this.f78628e = i2;
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
        ArrayList arrayList = this.d;
        return (InetAddress[]) arrayList.toArray(new InetAddress[arrayList.size()]);
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final int c() {
        return this.f78628e;
    }

    @Override // org.teleal.cling.transport.spi.NetworkAddressFactory
    public final InetAddress d(NetworkInterface networkInterface, boolean z, InetAddress inetAddress) {
        InetAddress address;
        Iterator it = this.f78627c.iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                address = null;
                break;
            }
            for (InterfaceAddress interfaceAddress : ((NetworkInterface) it.next()).getInterfaceAddresses()) {
                if (this.d.contains(interfaceAddress.getAddress())) {
                    byte[] address2 = inetAddress.getAddress();
                    byte[] address3 = interfaceAddress.getAddress().getAddress();
                    short networkPrefixLength = interfaceAddress.getNetworkPrefixLength();
                    if (address2.length == address3.length && networkPrefixLength / 8 <= address2.length) {
                        int i2 = 0;
                        while (true) {
                            if (networkPrefixLength < 8 || i2 >= address2.length) {
                                byte b2 = (byte) (~((1 << (8 - networkPrefixLength)) - 1));
                                if ((address2[i2] & b2) != (address3[i2] & b2)) {
                                    break;
                                }
                                address = interfaceAddress.getAddress();
                                break loop0;
                            }
                            if (address2[i2] != address3[i2]) {
                                break;
                            }
                            i2++;
                            networkPrefixLength = (short) (networkPrefixLength - 8);
                        }
                    }
                }
            }
        }
        if (address != null) {
            return address;
        }
        f78624f.finer("Could not find local bind address in same subnet as: " + inetAddress.getHostAddress());
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
        ArrayList arrayList = this.f78627c;
        return (NetworkInterface[]) arrayList.toArray(new NetworkInterface[arrayList.size()]);
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
        try {
            NetworkInterface byInetAddress = NetworkInterface.getByInetAddress(inetAddress);
            if (byInetAddress != null) {
                return byInetAddress.getHardwareAddress();
            }
            return null;
        } catch (SocketException e2) {
            x1.m(e2);
            return null;
        }
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

    public final boolean k(InetAddress inetAddress) {
        boolean z = inetAddress instanceof Inet4Address;
        Logger logger = f78624f;
        if (!z) {
            logger.finer("Skipping unsupported non-IPv4 address: " + inetAddress);
            return false;
        }
        if (inetAddress.isLoopbackAddress()) {
            logger.finer("Skipping loopback address: " + inetAddress);
            return false;
        }
        HashSet hashSet = this.f78626b;
        if (hashSet.size() <= 0 || hashSet.contains(inetAddress.getHostAddress())) {
            return true;
        }
        logger.finer("Skipping unwanted address: " + inetAddress);
        return false;
    }

    public final boolean l(NetworkInterface networkInterface) throws SocketException {
        boolean zIsUp = networkInterface.isUp();
        Logger logger = f78624f;
        if (!zIsUp) {
            logger.finer("Skipping network interface (down): " + networkInterface.getDisplayName());
            return false;
        }
        if (Collections.list(networkInterface.getInetAddresses()).size() == 0) {
            logger.finer("Skipping network interface without bound IP addresses: " + networkInterface.getDisplayName());
            return false;
        }
        if (networkInterface.getName().toLowerCase().startsWith("vmnet") || networkInterface.getDisplayName().toLowerCase().contains("vmnet")) {
            logger.finer("Skipping network interface (VMWare): " + networkInterface.getDisplayName());
            return false;
        }
        if (networkInterface.getName().toLowerCase().startsWith("vnic")) {
            logger.finer("Skipping network interface (Parallels): " + networkInterface.getDisplayName());
            return false;
        }
        if (networkInterface.getName().toLowerCase().startsWith("ppp")) {
            logger.finer("Skipping network interface (PPP): " + networkInterface.getDisplayName());
            return false;
        }
        if (!networkInterface.supportsMulticast()) {
            logger.finer("Skipping network interface (no multicast support): " + networkInterface.getDisplayName());
            return false;
        }
        if (networkInterface.isLoopback()) {
            logger.finer("Skipping network interface (ignoring loopback): " + networkInterface.getDisplayName());
            return false;
        }
        HashSet hashSet = this.f78625a;
        if (hashSet.size() <= 0 || hashSet.contains(networkInterface.getName())) {
            return true;
        }
        logger.finer("Skipping unwanted network interface (-Dorg.teleal.cling.network.useInterfaces): " + networkInterface.getName());
        return false;
    }

    public NetworkAddressFactoryImpl() throws InitializationException {
        this(0);
    }
}
