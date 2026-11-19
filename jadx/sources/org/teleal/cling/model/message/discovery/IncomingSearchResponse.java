package org.teleal.cling.model.message.discovery;

import com.linkplay.log.LinkplayLog;
import com.networkbench.agent.impl.performance.coulometry.a;
import java.net.MalformedURLException;
import java.net.URL;
import org.teleal.cling.UpnpDescriptionTools;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.UpnpHeaders;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.DeviceUSNHeader;
import org.teleal.cling.model.message.header.ServiceUSNHeader;
import org.teleal.cling.model.message.header.UDNHeader;
import org.teleal.cling.model.message.header.USNRootDeviceHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.types.NamedDeviceType;
import org.teleal.cling.model.types.NamedServiceType;
import org.teleal.cling.model.types.UDN;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingSearchResponse extends IncomingDatagramMessage<UpnpResponse> {
    public IncomingSearchResponse(IncomingDatagramMessage<UpnpResponse> incomingDatagramMessage) {
        super(incomingDatagramMessage);
    }

    public final URL g() {
        UpnpHeaders upnpHeaders = this.f78412c;
        if (upnpHeaders == null) {
            return null;
        }
        UpnpHeaders upnpHeaders2 = this.f78412c;
        if (upnpHeaders2 != null && upnpHeaders2.containsKey(a.f37790a)) {
            try {
                String strReplace = (String) upnpHeaders2.get(a.f37790a).get(0);
                if (UpnpDescriptionTools.f78289a) {
                    LinkplayLog.i("UPNP-SEARCH", "IncomingSearch Description Port set normal port.");
                    strReplace = strReplace.replace("59152", "49152");
                }
                return new URL(strReplace);
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public final UDN h() {
        UpnpHeaders upnpHeaders = this.f78412c;
        UpnpHeader.Type type = UpnpHeader.Type.USN;
        UpnpHeader upnpHeaderK = upnpHeaders.k(type, USNRootDeviceHeader.class);
        if (upnpHeaderK != null) {
            return (UDN) upnpHeaderK.f78433a;
        }
        UpnpHeader upnpHeaderK2 = this.f78412c.k(type, UDNHeader.class);
        if (upnpHeaderK2 != null) {
            return (UDN) upnpHeaderK2.f78433a;
        }
        UpnpHeader upnpHeaderK3 = this.f78412c.k(type, DeviceUSNHeader.class);
        if (upnpHeaderK3 != null) {
            return ((NamedDeviceType) upnpHeaderK3.f78433a).f78514a;
        }
        UpnpHeader upnpHeaderK4 = this.f78412c.k(type, ServiceUSNHeader.class);
        if (upnpHeaderK4 != null) {
            return ((NamedServiceType) upnpHeaderK4.f78433a).f78516a;
        }
        return null;
    }
}
