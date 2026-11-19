package org.teleal.cling.model.message.header;

import defpackage.pq0;
import org.teleal.cling.model.types.HostPort;

/* JADX INFO: loaded from: classes5.dex */
public class HostHeader extends UpnpHeader<HostPort> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f78425c = 1900;

    public HostHeader() {
        this.f78433a = new HostPort("239.255.255.250", 1900);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((HostPort) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (!str.contains(":")) {
            this.f78433a = new HostPort(str, this.f78425c);
            return;
        }
        try {
            this.f78425c = Integer.valueOf(str.substring(str.indexOf(":") + 1)).intValue();
            this.f78433a = new HostPort(str.substring(0, str.indexOf(":")), this.f78425c);
        } catch (NumberFormatException e2) {
            StringBuilder sbR = pq0.r("Invalid HOST header value, can't parse port: ", str, " - ");
            sbR.append(e2.getMessage());
            throw new InvalidHeaderException(sbR.toString());
        }
    }

    public HostHeader(int i2) {
        this.f78433a = new HostPort("239.255.255.250", i2);
    }

    public HostHeader(String str, int i2) {
        this.f78433a = new HostPort(str, i2);
    }
}
