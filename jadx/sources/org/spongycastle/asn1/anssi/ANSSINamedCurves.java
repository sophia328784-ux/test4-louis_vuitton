package org.spongycastle.asn1.anssi;

import java.math.BigInteger;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class ANSSINamedCurves {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Hashtable f77778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Hashtable f77779b;

    /* JADX INFO: renamed from: org.spongycastle.asn1.anssi.ANSSINamedCurves$1, reason: invalid class name */
    public static class AnonymousClass1 extends X9ECParametersHolder {
        @Override // org.spongycastle.asn1.x9.X9ECParametersHolder
        public final X9ECParameters a() {
            Hashtable hashtable = ANSSINamedCurves.f77778a;
            BigInteger bigInteger = new BigInteger(1, Hex.a("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C03"));
            BigInteger bigInteger2 = new BigInteger(1, Hex.a("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C00"));
            BigInteger bigInteger3 = new BigInteger(1, Hex.a("EE353FCA5428A9300D4ABA754A44C00FDFEC0C9AE4B1A1803075ED967B7BB73F"));
            BigInteger bigInteger4 = new BigInteger(1, Hex.a("F1FD178C0B3AD58F10126DE8CE42435B53DC67E140D2BF941FFDD459C6D655E1"));
            BigInteger bigIntegerValueOf = BigInteger.valueOf(1L);
            ECCurve.Fp fp = new ECCurve.Fp(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigIntegerValueOf);
            return new X9ECParameters(fp, new X9ECPoint(fp, Hex.a("04B6B3D4C356C139EB31183D4749D423958C27D2DCAF98B70164C97A2DD98F5CFF6142E0F7C8B204911F9271F0F3ECEF8C2701C307E8E4C9E183115A1554062CFB")), bigInteger4, bigIntegerValueOf, (byte[]) null);
        }
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        Hashtable hashtable = new Hashtable();
        f77778a = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f77779b = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        ASN1ObjectIdentifier aSN1ObjectIdentifier = ANSSIObjectIdentifiers.f77780a;
        hashtable.put(Strings.c("FRP256v1"), aSN1ObjectIdentifier);
        hashtable3.put(aSN1ObjectIdentifier, "FRP256v1");
        hashtable2.put(aSN1ObjectIdentifier, anonymousClass1);
    }
}
