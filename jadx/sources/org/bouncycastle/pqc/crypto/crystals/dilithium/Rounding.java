package org.bouncycastle.pqc.crypto.crystals.dilithium;

import defpackage.v7;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes5.dex */
class Rounding {
    public static int[] decompose(int i2, int i3) {
        int i4;
        int i5 = (i2 + CertificateBody.profileType) >> 7;
        if (i3 == 261888) {
            i4 = (((i5 * 1025) + PKIFailureInfo.badSenderNonce) >> 22) & 15;
        } else {
            if (i3 != 95232) {
                v7.h("Wrong Gamma2!");
                return null;
            }
            int i6 = ((i5 * 11275) + 8388608) >> 24;
            i4 = i6 ^ (((43 - i6) >> 31) & i6);
        }
        int i7 = i2 - ((i4 * 2) * i3);
        return new int[]{i7 - (((4190208 - i7) >> 31) & DilithiumEngine.DilithiumQ), i4};
    }

    public static int makeHint(int i2, int i3, DilithiumEngine dilithiumEngine) {
        int i4;
        int dilithiumGamma2 = dilithiumEngine.getDilithiumGamma2();
        if (i2 <= dilithiumGamma2 || i2 > (i4 = DilithiumEngine.DilithiumQ - dilithiumGamma2)) {
            return 0;
        }
        return (i2 == i4 && i3 == 0) ? 0 : 1;
    }

    public static int[] power2Round(int i2) {
        int i3 = (i2 + 4095) >> 13;
        return new int[]{i3, i2 - (i3 << 13)};
    }

    public static int useHint(int i2, int i3, int i4) {
        int[] iArrDecompose = decompose(i2, i4);
        int i5 = iArrDecompose[0];
        int i6 = iArrDecompose[1];
        if (i3 == 0) {
            return i6;
        }
        if (i4 == 261888) {
            return (i5 > 0 ? i6 + 1 : i6 - 1) & 15;
        }
        if (i4 != 95232) {
            v7.h("Wrong Gamma2!");
            return 0;
        }
        if (i5 > 0) {
            if (i6 == 43) {
                return 0;
            }
            return i6 + 1;
        }
        if (i6 == 0) {
            return 43;
        }
        return i6 - 1;
    }
}
