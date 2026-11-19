package org.teleal.cling.support.model;

import defpackage.fc;
import org.teleal.cling.model.types.InvalidValueException;
import org.teleal.cling.support.contentdirectory.callback.Browse;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public class ProtocolInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Protocol f78594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78596c;
    public final String d;

    public ProtocolInfo(String str) throws InvalidValueException {
        this.f78594a = Protocol.ALL;
        this.f78595b = Browse.CAPS_WILDCARD;
        this.f78596c = Browse.CAPS_WILDCARD;
        this.d = Browse.CAPS_WILDCARD;
        str.getClass();
        String strTrim = str.trim();
        String[] strArrSplit = strTrim.split(":");
        if (strArrSplit.length != 4) {
            throw new InvalidValueException("Can't parse ProtocolInfo string: ".concat(strTrim));
        }
        this.f78594a = Protocol.a(strArrSplit[0]);
        this.f78595b = strArrSplit[1];
        this.f78596c = strArrSplit[2];
        this.d = strArrSplit[3];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProtocolInfo protocolInfo = (ProtocolInfo) obj;
        return this.d.equals(protocolInfo.d) && this.f78596c.equals(protocolInfo.f78596c) && this.f78595b.equals(protocolInfo.f78595b) && this.f78594a == protocolInfo.f78594a;
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f78594a.hashCode() * 31, 31, this.f78595b), 31, this.f78596c);
    }

    public final String toString() {
        return this.f78594a.toString() + ":" + this.f78595b + ":" + this.f78596c + ":" + this.d;
    }

    public ProtocolInfo(MimeType mimeType) {
        this.f78595b = Browse.CAPS_WILDCARD;
        this.f78596c = Browse.CAPS_WILDCARD;
        this.d = Browse.CAPS_WILDCARD;
        this.f78594a = Protocol.HTTP_GET;
        this.f78596c = mimeType.toString();
    }

    public ProtocolInfo(Protocol protocol, String str, String str2, String str3) {
        this.f78594a = protocol;
        this.f78595b = str;
        this.f78596c = str2;
        this.d = str3;
    }
}
