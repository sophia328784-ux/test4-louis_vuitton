package org.spongycastle.jce;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.anssi.ANSSINamedCurves;
import org.spongycastle.asn1.gm.GMNamedCurves;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.sec.SECNamedCurves;
import org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.spongycastle.asn1.x9.X962NamedCurves;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class ECNamedCurveTable {
    public static ECNamedCurveParameterSpec a(String str) {
        X9ECParametersHolder x9ECParametersHolder;
        X9ECParametersHolder x9ECParametersHolder2;
        X9ECParametersHolder x9ECParametersHolder3;
        X9ECParametersHolder x9ECParametersHolder4;
        X9ECParametersHolder x9ECParametersHolder5;
        X9ECParametersHolder x9ECParametersHolder6;
        ECPoint eCPoint;
        X9ECParametersHolder x9ECParametersHolder7 = (X9ECParametersHolder) CustomNamedCurves.f77879a.get(Strings.c(str));
        X9ECParameters x9ECParametersB = x9ECParametersHolder7 == null ? null : x9ECParametersHolder7.b();
        if (x9ECParametersB == null) {
            try {
                X9ECParametersHolder x9ECParametersHolder8 = (X9ECParametersHolder) CustomNamedCurves.f77881c.get(new ASN1ObjectIdentifier(str));
                x9ECParametersB = x9ECParametersHolder8 == null ? null : x9ECParametersHolder8.b();
            } catch (IllegalArgumentException unused) {
            }
            if (x9ECParametersB == null) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) X962NamedCurves.f77826a.get(Strings.c(str));
                x9ECParametersB = (aSN1ObjectIdentifier == null || (x9ECParametersHolder6 = (X9ECParametersHolder) X962NamedCurves.f77827b.get(aSN1ObjectIdentifier)) == null) ? null : x9ECParametersHolder6.b();
                if (x9ECParametersB == null) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) SECNamedCurves.f77798a.get(Strings.c(str));
                    x9ECParametersB = (aSN1ObjectIdentifier2 == null || (x9ECParametersHolder5 = (X9ECParametersHolder) SECNamedCurves.f77799b.get(aSN1ObjectIdentifier2)) == null) ? null : x9ECParametersHolder5.b();
                }
                if (x9ECParametersB == null) {
                    Hashtable hashtable = NISTNamedCurves.f77788a;
                    char[] charArray = str.toCharArray();
                    boolean z = false;
                    for (int i2 = 0; i2 != charArray.length; i2++) {
                        char c2 = charArray[i2];
                        if ('a' <= c2 && 'z' >= c2) {
                            charArray[i2] = (char) (c2 - ' ');
                            z = true;
                        }
                    }
                    ASN1ObjectIdentifier aSN1ObjectIdentifier3 = (ASN1ObjectIdentifier) hashtable.get(z ? new String(charArray) : str);
                    x9ECParametersB = (aSN1ObjectIdentifier3 == null || (x9ECParametersHolder4 = (X9ECParametersHolder) SECNamedCurves.f77799b.get(aSN1ObjectIdentifier3)) == null) ? null : x9ECParametersHolder4.b();
                }
                if (x9ECParametersB == null) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier4 = (ASN1ObjectIdentifier) TeleTrusTNamedCurves.f77810a.get(Strings.c(str));
                    x9ECParametersB = (aSN1ObjectIdentifier4 == null || (x9ECParametersHolder3 = (X9ECParametersHolder) TeleTrusTNamedCurves.f77811b.get(aSN1ObjectIdentifier4)) == null) ? null : x9ECParametersHolder3.b();
                }
                if (x9ECParametersB == null) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier5 = (ASN1ObjectIdentifier) ANSSINamedCurves.f77778a.get(Strings.c(str));
                    x9ECParametersB = (aSN1ObjectIdentifier5 == null || (x9ECParametersHolder2 = (X9ECParametersHolder) ANSSINamedCurves.f77779b.get(aSN1ObjectIdentifier5)) == null) ? null : x9ECParametersHolder2.b();
                }
                if (x9ECParametersB == null) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier6 = (ASN1ObjectIdentifier) GMNamedCurves.f77784a.get(Strings.c(str));
                    x9ECParametersB = (aSN1ObjectIdentifier6 == null || (x9ECParametersHolder = (X9ECParametersHolder) GMNamedCurves.f77785b.get(aSN1ObjectIdentifier6)) == null) ? null : x9ECParametersHolder.b();
                }
                if (x9ECParametersB == null) {
                    try {
                        ASN1ObjectIdentifier aSN1ObjectIdentifier7 = new ASN1ObjectIdentifier(str);
                        X9ECParametersHolder x9ECParametersHolder9 = (X9ECParametersHolder) X962NamedCurves.f77827b.get(aSN1ObjectIdentifier7);
                        X9ECParameters x9ECParametersB2 = x9ECParametersHolder9 != null ? x9ECParametersHolder9.b() : null;
                        if (x9ECParametersB2 == null) {
                            X9ECParametersHolder x9ECParametersHolder10 = (X9ECParametersHolder) SECNamedCurves.f77799b.get(aSN1ObjectIdentifier7);
                            x9ECParametersB2 = x9ECParametersHolder10 == null ? null : x9ECParametersHolder10.b();
                        }
                        if (x9ECParametersB2 == null) {
                            X9ECParametersHolder x9ECParametersHolder11 = (X9ECParametersHolder) TeleTrusTNamedCurves.f77811b.get(aSN1ObjectIdentifier7);
                            x9ECParametersB2 = x9ECParametersHolder11 != null ? x9ECParametersHolder11.b() : null;
                        }
                        if (x9ECParametersB2 == null) {
                            X9ECParametersHolder x9ECParametersHolder12 = (X9ECParametersHolder) ANSSINamedCurves.f77779b.get(aSN1ObjectIdentifier7);
                            x9ECParametersB2 = x9ECParametersHolder12 == null ? null : x9ECParametersHolder12.b();
                        }
                        if (x9ECParametersB2 == null) {
                            X9ECParametersHolder x9ECParametersHolder13 = (X9ECParametersHolder) GMNamedCurves.f77785b.get(aSN1ObjectIdentifier7);
                            x9ECParametersB = x9ECParametersHolder13 == null ? null : x9ECParametersHolder13.b();
                        } else {
                            x9ECParametersB = x9ECParametersB2;
                        }
                    } catch (IllegalArgumentException unused2) {
                    }
                }
            }
        }
        if (x9ECParametersB == null) {
            return null;
        }
        ECCurve eCCurve = x9ECParametersB.f77833c;
        X9ECPoint x9ECPoint = x9ECParametersB.d;
        synchronized (x9ECPoint) {
            try {
                if (x9ECPoint.d == null) {
                    x9ECPoint.d = x9ECPoint.f77838c.d(x9ECPoint.f77837b.f77714b).j();
                }
                eCPoint = x9ECPoint.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new ECNamedCurveParameterSpec(str, eCCurve, eCPoint, x9ECParametersB.f77834e, x9ECParametersB.f77835f, x9ECParametersB.g);
    }
}
