package org.teleal.cling.model.message.header;

import defpackage.v40;

/* JADX INFO: loaded from: classes5.dex */
public class MXHeader extends UpnpHeader<Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f78428c = 0;

    public MXHeader() {
        this.f78433a = 3;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((Integer) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        try {
            int i2 = Integer.parseInt(str);
            Integer numValueOf = Integer.valueOf(i2);
            if (i2 < 0 || i2 > 120) {
                this.f78433a = 3;
            } else {
                this.f78433a = numValueOf;
            }
        } catch (Exception unused) {
            v40.m("Can't parse MX seconds integer from: ".concat(str));
        }
    }

    public MXHeader(Integer num) {
        this.f78433a = num;
    }
}
