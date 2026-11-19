package org.teleal.cling.transport.impl;

import com.linkplay.log.LinkplayLog;
import defpackage.x1;
import java.net.DatagramPacket;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.logging.Logger;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.transport.Router;
import org.teleal.cling.transport.spi.DatagramProcessor;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.MulticastReceiver;
import org.teleal.cling.transport.spi.UnsupportedDataException;

/* JADX INFO: loaded from: classes5.dex */
public class MulticastReceiverImpl implements MulticastReceiver<MulticastReceiverConfigurationImpl> {
    private static Logger log = Logger.getLogger(MulticastReceiver.class.getName());
    protected final MulticastReceiverConfigurationImpl configuration;
    protected DatagramProcessor datagramProcessor;
    protected InetSocketAddress multicastAddress;
    protected NetworkInterface multicastInterface;
    protected Router router;
    private MulticastSocket socket;

    public MulticastReceiverImpl(MulticastReceiverConfigurationImpl multicastReceiverConfigurationImpl) {
        this.configuration = multicastReceiverConfigurationImpl;
    }

    @Override // org.teleal.cling.transport.spi.MulticastReceiver
    public synchronized void init(NetworkInterface networkInterface, Router router, DatagramProcessor datagramProcessor) throws InitializationException {
        this.router = router;
        this.datagramProcessor = datagramProcessor;
        this.multicastInterface = networkInterface;
        try {
            log.info("Creating wildcard socket (for receiving multicast datagrams) on port: " + this.configuration.f78622b);
            MulticastReceiverConfigurationImpl multicastReceiverConfigurationImpl = this.configuration;
            this.multicastAddress = new InetSocketAddress(multicastReceiverConfigurationImpl.f78621a, multicastReceiverConfigurationImpl.f78622b);
            MulticastSocket multicastSocket = new MulticastSocket((SocketAddress) null);
            this.socket = multicastSocket;
            multicastSocket.setLoopbackMode(false);
            this.socket.setReuseAddress(true);
            this.socket.setReceiveBufferSize(32768);
            this.socket.bind(new InetSocketAddress(this.configuration.f78622b));
            log.info("Joining multicast group: " + this.multicastAddress + " on network interface: " + this.multicastInterface.getDisplayName());
            this.socket.joinGroup(this.multicastAddress, this.multicastInterface);
        } catch (Exception e2) {
            throw new InitializationException("Could not initialize " + getClass().getSimpleName() + ": " + e2);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        log.fine("Entering blocking receiving loop, listening for UDP datagrams on: " + this.socket.getLocalAddress());
        while (true) {
            try {
                int i2 = getConfiguration().f78623c;
                DatagramPacket datagramPacket = new DatagramPacket(new byte[i2], i2);
                this.socket.receive(datagramPacket);
                InetAddress inetAddressD = this.router.e().d(this.multicastInterface, this.multicastAddress.getAddress() instanceof Inet6Address, datagramPacket.getAddress());
                log.fine("UDP datagram received from: " + datagramPacket.getAddress().getHostAddress() + ":" + datagramPacket.getPort() + " on local interface: " + this.multicastInterface.getDisplayName() + " and address: " + inetAddressD.getHostAddress());
                IncomingDatagramMessage incomingDatagramMessageB = this.datagramProcessor.b(inetAddressD, datagramPacket);
                if (incomingDatagramMessageB != null) {
                    this.router.b(incomingDatagramMessageB);
                }
            } catch (SocketException unused) {
                log.fine("Socket closed");
                try {
                    if (this.socket.isClosed()) {
                        return;
                    }
                    log.fine("Closing multicast socket");
                    this.socket.close();
                    return;
                } catch (Exception e2) {
                    x1.m(e2);
                    return;
                }
            } catch (UnsupportedDataException e3) {
                log.info("MulticastReceiverImpl Could not read datagram: " + e3.getMessage());
            } catch (Exception e4) {
                x1.m(e4);
                return;
            }
        }
    }

    @Override // org.teleal.cling.transport.spi.MulticastReceiver
    public synchronized void stop() {
        try {
            MulticastSocket multicastSocket = this.socket;
            if (multicastSocket != null) {
                try {
                    if (!multicastSocket.isClosed()) {
                        try {
                            log.fine("Leaving multicast group");
                            LinkplayLog.i("UPNP-SEARCH", "Multicast leaveGroup.");
                            this.socket.leaveGroup(this.multicastAddress, this.multicastInterface);
                        } catch (Exception e2) {
                            log.fine("Could not leave multicast group: " + e2);
                        }
                        this.socket.close();
                    }
                } catch (Throwable th) {
                    this.socket.close();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // org.teleal.cling.transport.spi.MulticastReceiver
    public MulticastReceiverConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
