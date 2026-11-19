package org.teleal.cling.model.message.header;

import defpackage.v40;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public class NTSHeader extends UpnpHeader<NotificationSubtype> {
    public NTSHeader(NotificationSubtype notificationSubtype) {
        this.f78433a = notificationSubtype;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((NotificationSubtype) this.f78433a).a();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        for (NotificationSubtype notificationSubtype : NotificationSubtype.values()) {
            if (str.equals(notificationSubtype.a())) {
                this.f78433a = notificationSubtype;
                break;
            }
        }
        if (this.f78433a != null) {
            return;
        }
        v40.m("Invalid NTS header value: ".concat(str));
    }

    public NTSHeader() {
    }
}
