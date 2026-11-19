package com.networkbench.agent.impl.util.a.a;

import defpackage.d20;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f38258a = 65;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f38259b = 159;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int[] f38260c = {255, 1, 3, 7, 15, 31, 63, CertificateBody.profileType};
    private static int[] d = {128, 1, 2, 4, 8, 16, 32, 64};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SecureRandom f38261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f38262f;

    public d(int i2) {
        if (i2 < 65 || i2 > f38259b) {
            d20.j("%s may not be out of the range [%d, %d]: %d", new Object[]{"bitLen", 65, Integer.valueOf(f38259b), Integer.valueOf(i2)});
            throw null;
        }
        this.f38261e = new SecureRandom();
        this.f38262f = i2;
    }

    @Override // com.networkbench.agent.impl.util.a.a.a
    public BigInteger a() {
        int i2 = this.f38262f;
        byte[] bArr = new byte[(i2 + 7) / 8];
        int i3 = i2 % 8;
        this.f38261e.nextBytes(bArr);
        if (i3 != 0) {
            bArr[0] = (byte) (bArr[0] & f38260c[i3]);
        }
        bArr[0] = (byte) (d[i3] | bArr[0]);
        return new BigInteger(1, bArr);
    }

    public d() {
        this(65);
    }
}
