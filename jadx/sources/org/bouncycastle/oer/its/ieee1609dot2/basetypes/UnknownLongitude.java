package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import defpackage.az;
import org.bouncycastle.asn1.ASN1Integer;

/* JADX INFO: loaded from: classes5.dex */
public class UnknownLongitude extends Longitude {
    public static final UnknownLongitude INSTANCE = new UnknownLongitude();

    public UnknownLongitude() {
        super(1800000001L);
    }

    public static UnknownLongitude getInstance(Object obj) {
        if (obj instanceof UnknownLongitude) {
            return (UnknownLongitude) obj;
        }
        if (obj != null) {
            ASN1Integer aSN1Integer = ASN1Integer.getInstance(obj);
            if (aSN1Integer.getValue().intValue() == 1800000001) {
                return INSTANCE;
            }
            az.r("value ", aSN1Integer.getValue(), " is not 1800000001");
        }
        return null;
    }
}
