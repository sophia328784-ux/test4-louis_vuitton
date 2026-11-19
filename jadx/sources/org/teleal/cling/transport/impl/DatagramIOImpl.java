package org.teleal.cling.transport.impl;

import com.linkplay.log.LinkplayLog;
import defpackage.x1;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.logging.Logger;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.transport.Router;
import org.teleal.cling.transport.spi.DatagramIO;
import org.teleal.cling.transport.spi.DatagramProcessor;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.UnsupportedDataException;

/* JADX INFO: loaded from: classes5.dex */
public class DatagramIOImpl implements DatagramIO<DatagramIOConfigurationImpl> {
    private static Logger log = Logger.getLogger(DatagramIO.class.getName());
    protected final int PORT = 18983;
    protected final DatagramIOConfigurationImpl configuration;
    protected DatagramProcessor datagramProcessor;
    protected InetSocketAddress localAddress;
    protected Router router;
    protected MulticastSocket socket;

    public DatagramIOImpl(DatagramIOConfigurationImpl datagramIOConfigurationImpl) {
        this.configuration = datagramIOConfigurationImpl;
    }

    private boolean hasUDN(byte[] bArr) {
        String str = new String(bArr);
        return str.contains("USN:") && str.contains("uuid:");
    }

    private byte[] insertSpace(byte[] bArr) {
        String str = new String(bArr);
        if (!str.startsWith("HTTP/1")) {
            return bArr;
        }
        String[] strArrSplit = str.split("\r\n");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(strArrSplit[0] + "\r\n");
        for (int i2 = 1; i2 < strArrSplit.length; i2++) {
            String str2 = strArrSplit[i2];
            int iIndexOf = str2.indexOf(":");
            if (iIndexOf == -1) {
                stringBuffer.append(str2.concat("\r\n"));
            } else if (iIndexOf >= str2.length() - 1) {
                stringBuffer.append(str2.concat(" \r\n"));
            } else {
                int i3 = iIndexOf + 1;
                if (Character.isWhitespace(str2.charAt(i3))) {
                    stringBuffer.append(str2);
                } else {
                    stringBuffer.append(str2.substring(0, i3));
                    stringBuffer.append(" ");
                    stringBuffer.append(str2.substring(i3));
                }
                stringBuffer.append("\r\n");
            }
        }
        return stringBuffer.toString().getBytes();
    }

    @Override // org.teleal.cling.transport.spi.DatagramIO
    public synchronized void init(InetAddress inetAddress, Router router, DatagramProcessor datagramProcessor) throws InitializationException {
        this.router = router;
        this.datagramProcessor = datagramProcessor;
        try {
            LinkplayLog.i("UPNP-SEARCH", "datagram socket init");
            log.info("Creating bound socket (for datagram input/output) on: " + inetAddress);
            this.localAddress = new InetSocketAddress(inetAddress, 0);
            MulticastSocket multicastSocket = new MulticastSocket((SocketAddress) null);
            this.socket = multicastSocket;
            multicastSocket.setTimeToLive(this.configuration.f78617a);
            this.socket.setReceiveBufferSize(32768);
            this.socket.bind(this.localAddress);
        } catch (Exception e2) {
            e2.printStackTrace();
            LinkplayLog.i("UPNP-SEARCH", "datagram socket init Exception: " + e2.getLocalizedMessage());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        log.fine("Entering blocking receiving loop, listening for UDP datagrams on: " + this.socket.getLocalAddress());
        while (true) {
            try {
                int i2 = getConfiguration().f78618b;
                DatagramPacket datagramPacket = new DatagramPacket(new byte[i2], i2);
                this.socket.receive(datagramPacket);
                byte[] bArrInsertSpace = insertSpace(datagramPacket.getData());
                datagramPacket.getAddress().getHostAddress();
                if (hasUDN(bArrInsertSpace)) {
                    datagramPacket.setData(bArrInsertSpace);
                    log.fine("UDP datagram received from: " + datagramPacket.getAddress().getHostAddress() + ":" + datagramPacket.getPort() + " on: " + this.localAddress);
                    IncomingDatagramMessage incomingDatagramMessageB = this.datagramProcessor.b(this.localAddress.getAddress(), datagramPacket);
                    if (incomingDatagramMessageB != null) {
                        this.router.b(incomingDatagramMessageB);
                    }
                }
            } catch (SocketException e2) {
                log.fine("Socket closed");
                LinkplayLog.i("UPNP-SEARCH", "DatagramIOlmpl SocketException: " + e2.getMessage());
                try {
                    if (this.socket.isClosed()) {
                        return;
                    }
                    log.fine("Closing unicast socket");
                    this.socket.close();
                    return;
                } catch (Exception e3) {
                    x1.m(e3);
                    return;
                }
            } catch (UnsupportedDataException e4) {
                log.info("DatagramIOImpl Could not read datagram: " + e4.getMessage());
                LinkplayLog.i("UPNP-SEARCH", "DatagramIOlmpl UnsupportedDataException: " + e4.getMessage());
            } catch (Exception e5) {
                e5.printStackTrace();
                LinkplayLog.i("UPNP-SEARCH", "DatagramIOlmpl Exception: " + e5.getMessage());
            }
        }
    }

    @Override // org.teleal.cling.transport.spi.DatagramIO
    public synchronized void send(DatagramPacket datagramPacket) {
        try {
            log.fine("Sending message from address: " + this.localAddress);
            try {
                try {
                    this.socket.send(datagramPacket);
                } catch (SocketException e2) {
                    e2.printStackTrace();
                    log.fine("Socket closed, aborting datagram send to: " + datagramPacket.getAddress());
                }
            } catch (RuntimeException e3) {
                e3.printStackTrace();
                throw e3;
            } catch (Exception e4) {
                e4.printStackTrace();
                throw new RuntimeException(e4);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.teleal.cling.transport.spi.DatagramIO
    public synchronized void stop() {
        MulticastSocket multicastSocket = this.socket;
        if (multicastSocket != null && !multicastSocket.isClosed()) {
            this.socket.close();
        }
    }

    @Override // org.teleal.cling.transport.spi.DatagramIO
    public DatagramIOConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    @Override // org.teleal.cling.transport.spi.DatagramIO
    public synchronized void send(OutgoingDatagramMessage outgoingDatagramMessage) {
        log.fine("Sending message from address: " + this.localAddress);
        DatagramPacket datagramPacketA = this.datagramProcessor.a(outgoingDatagramMessage);
        log.fine("Sending UDP datagram packet to: " + outgoingDatagramMessage.f78408f + ":" + outgoingDatagramMessage.g);
        send(datagramPacketA);
    }
}
