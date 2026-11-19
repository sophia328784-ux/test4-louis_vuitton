package org.teleal.cling.protocol.async;

import com.linkplay.log.LinkplayLog;
import defpackage.az;
import java.util.logging.Logger;
import org.teleal.cling.UpnpService;
import org.teleal.cling.model.message.discovery.OutgoingSearchRequest;
import org.teleal.cling.model.message.discovery.OutgoingSearchRequest299;
import org.teleal.cling.model.message.discovery.OutgoingSearchRequestMDNS;
import org.teleal.cling.model.message.header.MXHeader;
import org.teleal.cling.model.message.header.STAllHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.protocol.SendingAsync;

/* JADX INFO: loaded from: classes5.dex */
public class SendingSearch extends SendingAsync {
    private static final Logger log = Logger.getLogger(SendingSearch.class.getName());
    private final int mxSeconds;
    private final UpnpHeader searchTarget;

    public SendingSearch(UpnpService upnpService, UpnpHeader upnpHeader, int i2) {
        super(upnpService);
        if (!UpnpHeader.Type.ST.d(upnpHeader.getClass())) {
            az.w(upnpHeader.getClass(), "Given search target instance is not a valid header class for type ST: ");
            throw null;
        }
        this.searchTarget = upnpHeader;
        this.mxSeconds = i2;
    }

    @Override // org.teleal.cling.protocol.SendingAsync
    public void execute() {
        log.fine("Executing search for target: " + this.searchTarget.a() + " with MX seconds: " + getMxSeconds());
        OutgoingSearchRequest outgoingSearchRequest = new OutgoingSearchRequest(this.searchTarget, getMxSeconds());
        OutgoingSearchRequest299 outgoingSearchRequest299 = new OutgoingSearchRequest299(this.searchTarget, getMxSeconds());
        OutgoingSearchRequestMDNS outgoingSearchRequestMDNS = new OutgoingSearchRequestMDNS(this.searchTarget, getMxSeconds());
        for (int i2 = 0; i2 < getBulkRepeat(); i2++) {
            try {
                getUpnpService().c().send(outgoingSearchRequest);
                log.finer("Sleeping " + getBulkIntervalMilliseconds() + " milliseconds");
                getUpnpService().c().send(outgoingSearchRequest299);
                getUpnpService().c().send(outgoingSearchRequestMDNS);
            } catch (Exception e2) {
                log.warning("Search sending thread was interrupted: " + e2);
                LinkplayLog.w("UPNP-SEARCH", "Search sending thread was interrupted: " + e2.getMessage());
            }
        }
    }

    public int getBulkIntervalMilliseconds() {
        return 100;
    }

    public int getBulkRepeat() {
        return 1;
    }

    public int getMxSeconds() {
        return this.mxSeconds;
    }

    public UpnpHeader getSearchTarget() {
        return this.searchTarget;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SendingSearch(UpnpService upnpService, UpnpHeader upnpHeader) {
        this(upnpService, upnpHeader, 3);
        int i2 = MXHeader.f78428c;
    }

    public SendingSearch(UpnpService upnpService) {
        this(upnpService, new STAllHeader());
    }
}
