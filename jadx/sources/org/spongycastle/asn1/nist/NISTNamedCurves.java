package org.spongycastle.asn1.nist;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.sec.SECObjectIdentifiers;

/* JADX INFO: loaded from: classes5.dex */
public class NISTNamedCurves {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Hashtable f77788a = new Hashtable();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Hashtable f77789b = new Hashtable();

    static {
        a("B-571", SECObjectIdentifiers.E);
        a("B-409", SECObjectIdentifiers.C);
        a("B-283", SECObjectIdentifiers.m);
        a("B-233", SECObjectIdentifiers.s);
        a("B-163", SECObjectIdentifiers.f77809k);
        a("K-571", SECObjectIdentifiers.D);
        a("K-409", SECObjectIdentifiers.B);
        a("K-283", SECObjectIdentifiers.l);
        a("K-233", SECObjectIdentifiers.r);
        a("K-163", SECObjectIdentifiers.f77801a);
        a("P-521", SECObjectIdentifiers.A);
        a("P-384", SECObjectIdentifiers.z);
        a("P-256", SECObjectIdentifiers.G);
        a("P-224", SECObjectIdentifiers.y);
        a("P-192", SECObjectIdentifiers.F);
    }

    public static void a(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        f77788a.put(str, aSN1ObjectIdentifier);
        f77789b.put(aSN1ObjectIdentifier, str);
    }
}
