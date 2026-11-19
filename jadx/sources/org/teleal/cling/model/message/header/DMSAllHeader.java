package org.teleal.cling.model.message.header;

import defpackage.ct0;
import org.teleal.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes5.dex */
public class DMSAllHeader extends UpnpHeader<NotificationSubtype> {
    public DMSAllHeader() {
        this.f78433a = NotificationSubtype.DMSALL;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((NotificationSubtype) this.f78433a).a();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        NotificationSubtype notificationSubtype = NotificationSubtype.DMSALL;
        if (str.equals(notificationSubtype.a())) {
            return;
        }
        ct0.m("Invalid ST header value (not ", notificationSubtype, "): ", str);
    }
}
