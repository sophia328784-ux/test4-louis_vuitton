package org.spongycastle.math.ec.endo;

import defpackage.fc;
import defpackage.md;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class GLVTypeBParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BigInteger f78045a;

    public GLVTypeBParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2, BigInteger bigInteger3, BigInteger bigInteger4, int i2) {
        a(bigIntegerArr, "v1");
        a(bigIntegerArr2, "v2");
        this.f78045a = bigInteger;
        BigInteger bigInteger5 = bigIntegerArr[0];
        BigInteger bigInteger6 = bigIntegerArr[1];
        BigInteger bigInteger7 = bigIntegerArr2[0];
        BigInteger bigInteger8 = bigIntegerArr2[1];
    }

    public static void a(BigInteger[] bigIntegerArr, String str) {
        if (bigIntegerArr == null || bigIntegerArr.length != 2 || bigIntegerArr[0] == null || bigIntegerArr[1] == null) {
            md.n(fc.h("'", str, "' must consist of exactly 2 (non-null) values"));
        }
    }
}
