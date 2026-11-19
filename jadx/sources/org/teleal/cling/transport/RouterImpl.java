package org.teleal.cling.transport;

import android.text.TextUtils;
import com.linkplay.log.LinkplayLog;
import com.networkbench.agent.impl.performance.coulometry.a;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.teleal.cling.UpnpServiceConfiguration;
import org.teleal.cling.model.NetworkAddress;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.OutgoingDatagramMessage;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.types.NotificationSubtype;
import org.teleal.cling.protocol.ProtocolCreationException;
import org.teleal.cling.protocol.ProtocolFactory;
import org.teleal.cling.protocol.async.ReceivingSearchResponse;
import org.teleal.cling.transport.impl.apache.HttpServerConnectionUpnpStream;
import org.teleal.cling.transport.spi.DatagramIO;
import org.teleal.cling.transport.spi.InitializationException;
import org.teleal.cling.transport.spi.MulticastReceiver;
import org.teleal.cling.transport.spi.NetworkAddressFactory;
import org.teleal.cling.transport.spi.StreamClient;
import org.teleal.cling.transport.spi.StreamServer;
import org.teleal.common.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
public class RouterImpl implements Router {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f78607h = Logger.getLogger(Router.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UpnpServiceConfiguration f78608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProtocolFactory f78609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StreamClient f78610c;
    public final NetworkAddressFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f78611e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f78612f = new HashMap();
    public final HashMap g = new HashMap();

    public RouterImpl(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory) throws InitializationException {
        LinkplayLog.i("UPNP-SEARCH", getClass().getSimpleName().concat("-> MulticastReceivers put normal , 229 mDNS reveivers. "));
        this.f78608a = upnpServiceConfiguration;
        this.f78609b = protocolFactory;
        Logger logger = f78607h;
        logger.info("Starting networking services going...");
        NetworkAddressFactory networkAddressFactoryH = upnpServiceConfiguration.h();
        this.d = networkAddressFactoryH;
        logger.info("Starting networking services successfully...");
        this.f78610c = upnpServiceConfiguration.e();
        NetworkInterface[] networkInterfaceArrE = networkAddressFactoryH.e();
        if (networkInterfaceArrE != null) {
            for (NetworkInterface networkInterface : networkInterfaceArrE) {
                this.f78611e.put(networkInterface, this.f78608a.r(this.d));
            }
            for (NetworkInterface networkInterface2 : networkInterfaceArrE) {
                this.f78611e.put(networkInterface2, this.f78608a.l(this.d));
            }
            for (NetworkInterface networkInterface3 : networkInterfaceArrE) {
                this.f78611e.put(networkInterface3, this.f78608a.c(this.d));
            }
        }
        InetAddress[] inetAddressArrB = this.d.b();
        if (inetAddressArrB != null) {
            for (InetAddress inetAddress : inetAddressArrB) {
                this.f78612f.put(inetAddress, this.f78608a.j());
                StreamServer streamServerS = this.f78608a.s(this.d);
                if (streamServerS != null) {
                    this.g.put(inetAddress, streamServerS);
                }
            }
        }
        for (Map.Entry entry : this.g.entrySet()) {
            logger.fine("Starting stream server on address: " + entry.getKey());
            ((StreamServer) entry.getValue()).init((InetAddress) entry.getKey(), this);
            this.f78608a.n().execute((Runnable) entry.getValue());
        }
        for (Map.Entry entry2 : this.f78611e.entrySet()) {
            logger.fine("Starting multicast receiver on interface: " + ((NetworkInterface) entry2.getKey()).getDisplayName());
            ((MulticastReceiver) entry2.getValue()).init((NetworkInterface) entry2.getKey(), this, this.f78608a.b());
            this.f78608a.a().execute((Runnable) entry2.getValue());
        }
        for (Map.Entry entry3 : this.f78612f.entrySet()) {
            logger.fine("Starting datagram I/O on address: " + entry3.getKey());
            ((DatagramIO) entry3.getValue()).init((InetAddress) entry3.getKey(), this, this.f78608a.b());
            this.f78608a.p().execute((Runnable) entry3.getValue());
        }
    }

    public static String g(UpnpHeaders upnpHeaders) {
        List list;
        String str;
        if (upnpHeaders == null || !upnpHeaders.containsKey("St") || (list = upnpHeaders.get("St")) == null || list.size() == 0 || (str = (String) list.get(0)) == null || str.length() == 0) {
            return "";
        }
        if (str.equals(NotificationSubtype.DMSALL.a())) {
            return "MediaServer";
        }
        if (str.equals(NotificationSubtype.DMALL.a())) {
            return "MediaRenderer";
        }
        if (str.equals(NotificationSubtype.GETWAYDEVICE.a())) {
            return "InternetGatewayDevice";
        }
        return str.equals(NotificationSubtype.WFADEVICE.a()) ? "WFADevice" : "";
    }

    @Override // org.teleal.cling.transport.Router
    public final ProtocolFactory a() {
        return this.f78609b;
    }

    @Override // org.teleal.cling.transport.Router
    public final void b(IncomingDatagramMessage incomingDatagramMessage) {
        String host;
        URL url;
        Logger logger = f78607h;
        try {
            ReceivingSearchResponse receivingSearchResponseC = this.f78609b.c(incomingDatagramMessage);
            UpnpHeaders upnpHeaders = incomingDatagramMessage.f78412c;
            if (upnpHeaders.containsKey(a.f37790a)) {
                URL url2 = null;
                try {
                    try {
                        url = new URL((String) upnpHeaders.get(a.f37790a).get(0));
                        try {
                            url.getHost();
                            host = url.getHost();
                        } catch (MalformedURLException e2) {
                            e = e2;
                            url2 = url;
                            e.printStackTrace();
                            host = url2.getHost();
                        } catch (Throwable unused) {
                            host = url.getHost();
                        }
                    } catch (MalformedURLException e3) {
                        e = e3;
                    }
                } catch (Throwable unused2) {
                    url = url2;
                }
            } else {
                host = "";
            }
            String strG = g(incomingDatagramMessage.f78412c);
            boolean zA = k.a.a(host);
            if (TextUtils.isEmpty(strG)) {
                if (zA) {
                    LinkplayLog.i("UPNP-SEARCH", "Router received info: " + host + " mediaType is empty, return.");
                    return;
                }
                return;
            }
            if (zA) {
                LinkplayLog.i("UPNP-SEARCH", "Router received info: " + host + ", " + strG);
            }
            if (receivingSearchResponseC == null) {
                if (logger.isLoggable(Level.FINEST)) {
                    logger.finest("No protocol, ignoring received message: " + incomingDatagramMessage);
                    return;
                }
                return;
            }
            if (logger.isLoggable(Level.FINE)) {
                logger.fine("Received asynchronous message: " + incomingDatagramMessage);
            }
            this.f78608a.m().execute(receivingSearchResponseC);
        } catch (ProtocolCreationException e4) {
            logger.warning("Handling received datagram failed - " + Exceptions.a(e4).toString());
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final StreamResponseMessage c(StreamRequestMessage streamRequestMessage) {
        Logger logger = f78607h;
        StreamClient streamClient = this.f78610c;
        if (streamClient == null) {
            LinkplayLog.i("UPNP-SEARCH", "No StreamClient available");
            logger.fine("No StreamClient available, ignoring: " + streamRequestMessage);
            return null;
        }
        logger.fine("Sending via TCP unicast stream: " + streamRequestMessage);
        try {
            return streamClient.a(streamRequestMessage);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final synchronized List d(InetAddress inetAddress) {
        StreamServer streamServer;
        if (this.g.size() == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        if (inetAddress != null && (streamServer = (StreamServer) this.g.get(inetAddress)) != null) {
            arrayList.add(new NetworkAddress(inetAddress, streamServer.getPort(), this.d.i(inetAddress)));
            return arrayList;
        }
        for (Map.Entry entry : this.g.entrySet()) {
            arrayList.add(new NetworkAddress((InetAddress) entry.getKey(), ((StreamServer) entry.getValue()).getPort(), this.d.i((InetAddress) entry.getKey())));
        }
        return arrayList;
    }

    @Override // org.teleal.cling.transport.Router
    public final NetworkAddressFactory e() {
        return this.d;
    }

    @Override // org.teleal.cling.transport.Router
    public final void f(HttpServerConnectionUpnpStream httpServerConnectionUpnpStream) {
        f78607h.fine("Received synchronous stream: " + httpServerConnectionUpnpStream);
        this.f78608a.o().execute(httpServerConnectionUpnpStream);
    }

    @Override // org.teleal.cling.transport.Router
    public final void send(OutgoingDatagramMessage outgoingDatagramMessage) {
        Collection collectionValues = this.f78612f.values();
        if (collectionValues != null) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                ((DatagramIO) it.next()).send(outgoingDatagramMessage);
            }
        }
    }

    @Override // org.teleal.cling.transport.Router
    public final synchronized void shutdown() {
        try {
            Logger logger = f78607h;
            logger.fine("Shutting down network services");
            if (this.f78610c != null) {
                logger.fine("Stopping stream client connection management/pool");
                this.f78610c.stop();
            }
            HashMap map = this.g;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    f78607h.fine("Stopping stream server on address: " + entry.getKey());
                    ((StreamServer) entry.getValue()).stop();
                }
                this.g.clear();
            }
            for (Map.Entry entry2 : this.f78611e.entrySet()) {
                f78607h.fine("Stopping multicast receiver on interface: " + ((NetworkInterface) entry2.getKey()).getDisplayName());
                ((MulticastReceiver) entry2.getValue()).stop();
            }
            this.f78611e.clear();
            HashMap map2 = this.f78612f;
            if (map2 != null) {
                for (Map.Entry entry3 : map2.entrySet()) {
                    f78607h.fine("Stopping datagram I/O on address: " + entry3.getKey());
                    ((DatagramIO) entry3.getValue()).stop();
                }
                this.f78612f.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
