package org.teleal.cling.model.meta;

import com.linkplay.log.LinkplayLog;
import com.networkbench.agent.impl.performance.coulometry.a;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import org.teleal.cling.UpnpDescriptionTools;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.discovery.IncomingNotificationRequest;
import org.teleal.cling.model.message.discovery.IncomingSearchResponse;
import org.teleal.cling.model.message.header.DeviceUSNHeader;
import org.teleal.cling.model.message.header.InterfaceMacHeader;
import org.teleal.cling.model.message.header.MaxAgeHeader;
import org.teleal.cling.model.message.header.ServiceUSNHeader;
import org.teleal.cling.model.message.header.UDNHeader;
import org.teleal.cling.model.message.header.USNRootDeviceHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.types.NamedDeviceType;
import org.teleal.cling.model.types.NamedServiceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class RemoteDeviceIdentity extends DeviceIdentity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URL f78474c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InetAddress f78475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UpnpHeaders f78476f;

    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    /* JADX WARN: Code duplicated, block: B:19:0x0059  */
    /* JADX WARN: Code duplicated, block: B:24:0x007f A[Catch: MalformedURLException -> 0x008f, TryCatch #0 {MalformedURLException -> 0x008f, blocks: (B:22:0x0070, B:24:0x007f, B:27:0x0091), top: B:36:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x009b  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Illegal instructions before constructor call */
    public RemoteDeviceIdentity(IncomingNotificationRequest incomingNotificationRequest) {
        UDN udn;
        UDN udn2;
        MaxAgeHeader maxAgeHeader;
        Integer num;
        UpnpHeaders upnpHeaders;
        String strReplace;
        URL url;
        UpnpHeaders upnpHeaders2 = incomingNotificationRequest.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.USN;
        UpnpHeader upnpHeaderK = upnpHeaders2.k(type, USNRootDeviceHeader.class);
        if (upnpHeaderK != null) {
            udn2 = (UDN) upnpHeaderK.f78433a;
        } else {
            UpnpHeader upnpHeaderK2 = incomingNotificationRequest.f78412c.k(type, UDNHeader.class);
            if (upnpHeaderK2 != null) {
                udn2 = (UDN) upnpHeaderK2.f78433a;
            } else {
                UpnpHeader upnpHeaderK3 = incomingNotificationRequest.f78412c.k(type, DeviceUSNHeader.class);
                if (upnpHeaderK3 == null) {
                    UpnpHeader upnpHeaderK4 = incomingNotificationRequest.f78412c.k(type, ServiceUSNHeader.class);
                    if (upnpHeaderK4 != null) {
                        udn2 = ((NamedServiceType) upnpHeaderK4.f78433a).f78516a;
                    } else {
                        udn = null;
                    }
                    maxAgeHeader = (MaxAgeHeader) incomingNotificationRequest.f78412c.k(UpnpHeader.Type.MAX_AGE, MaxAgeHeader.class);
                    if (maxAgeHeader != null) {
                        num = (Integer) maxAgeHeader.f78433a;
                    } else {
                        num = null;
                    }
                    upnpHeaders = incomingNotificationRequest.f78412c;
                    if (upnpHeaders.containsKey(a.f37790a)) {
                        try {
                            strReplace = (String) upnpHeaders.get(a.f37790a).get(0);
                            if (UpnpDescriptionTools.f78289a) {
                                LinkplayLog.i("UPNP-SEARCH", "IncomingNotification Description Port set normal port.");
                                strReplace = strReplace.replace("59152", "49152");
                            }
                            url = new URL(strReplace);
                        } catch (MalformedURLException e2) {
                            e2.printStackTrace();
                            url = null;
                        }
                    } else {
                        url = null;
                    }
                    InterfaceMacHeader interfaceMacHeader = (InterfaceMacHeader) incomingNotificationRequest.f78412c.k(UpnpHeader.Type.EXT_IFACE_MAC, InterfaceMacHeader.class);
                    this(udn, num, url, interfaceMacHeader != null ? (byte[]) interfaceMacHeader.f78433a : null, incomingNotificationRequest.f78407f, incomingNotificationRequest.f78412c);
                }
                udn2 = ((NamedDeviceType) upnpHeaderK3.f78433a).f78514a;
            }
        }
        udn = udn2;
        maxAgeHeader = (MaxAgeHeader) incomingNotificationRequest.f78412c.k(UpnpHeader.Type.MAX_AGE, MaxAgeHeader.class);
        if (maxAgeHeader != null) {
            num = (Integer) maxAgeHeader.f78433a;
        } else {
            num = null;
        }
        upnpHeaders = incomingNotificationRequest.f78412c;
        if (upnpHeaders.containsKey(a.f37790a)) {
            strReplace = (String) upnpHeaders.get(a.f37790a).get(0);
            if (UpnpDescriptionTools.f78289a) {
                LinkplayLog.i("UPNP-SEARCH", "IncomingNotification Description Port set normal port.");
                strReplace = strReplace.replace("59152", "49152");
            }
            url = new URL(strReplace);
        } else {
            url = null;
        }
        InterfaceMacHeader interfaceMacHeader2 = (InterfaceMacHeader) incomingNotificationRequest.f78412c.k(UpnpHeader.Type.EXT_IFACE_MAC, InterfaceMacHeader.class);
        this(udn, num, url, interfaceMacHeader2 != null ? (byte[]) interfaceMacHeader2.f78433a : null, incomingNotificationRequest.f78407f, incomingNotificationRequest.f78412c);
    }

    @Override // org.teleal.cling.model.meta.DeviceIdentity
    public final String toString() {
        boolean z = ModelUtil.f78377a;
        URL url = this.f78474c;
        if (z) {
            return "(RemoteDeviceIdentity) UDN: " + this.f78458a + ", Descriptor: " + url;
        }
        return "(" + getClass().getSimpleName() + ") UDN: " + this.f78458a + ", Descriptor: " + url;
    }

    public RemoteDeviceIdentity(UDN udn, RemoteDeviceIdentity remoteDeviceIdentity) {
        this(udn, remoteDeviceIdentity.f78459b, remoteDeviceIdentity.f78474c, remoteDeviceIdentity.d, remoteDeviceIdentity.f78475e, remoteDeviceIdentity.f78476f);
    }

    public RemoteDeviceIdentity(UDN udn, Integer num, URL url, byte[] bArr, InetAddress inetAddress, UpnpHeaders upnpHeaders) {
        super(udn, num);
        this.f78474c = url;
        this.d = bArr;
        this.f78475e = inetAddress;
        this.f78476f = upnpHeaders;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public RemoteDeviceIdentity(IncomingSearchResponse incomingSearchResponse) {
        UDN udnH = incomingSearchResponse.h();
        MaxAgeHeader maxAgeHeader = (MaxAgeHeader) incomingSearchResponse.f78412c.k(UpnpHeader.Type.MAX_AGE, MaxAgeHeader.class);
        Integer num = maxAgeHeader != null ? (Integer) maxAgeHeader.f78433a : null;
        URL urlG = incomingSearchResponse.g();
        InterfaceMacHeader interfaceMacHeader = (InterfaceMacHeader) incomingSearchResponse.f78412c.k(UpnpHeader.Type.EXT_IFACE_MAC, InterfaceMacHeader.class);
        this(udnH, num, urlG, interfaceMacHeader != null ? (byte[]) interfaceMacHeader.f78433a : null, incomingSearchResponse.f78407f, incomingSearchResponse.f78412c);
    }
}
