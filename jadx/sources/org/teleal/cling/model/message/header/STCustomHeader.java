package org.teleal.cling.model.message.header;

import defpackage.fc;
import defpackage.v40;

/* JADX INFO: loaded from: classes5.dex */
public class STCustomHeader extends UpnpHeader<String> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78430c;

    public STCustomHeader(String str) {
        this.f78430c = str;
        this.f78433a = str;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return this.f78430c;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        String str2 = this.f78430c;
        if (str.equals(str2)) {
            return;
        }
        v40.m(fc.i("Invalid ST header value (not ", str2, "): ", str));
    }
}
