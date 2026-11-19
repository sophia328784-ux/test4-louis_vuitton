package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import org.spongycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlusParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XMSSOid f78167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Digest f78168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78169c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78170e;

    public WOTSPlusParameters(Digest digest) {
        this.f78168b = digest;
        String algorithmName = digest.getAlgorithmName();
        int digestSize = algorithmName.equals("SHAKE128") ? 32 : algorithmName.equals("SHAKE256") ? 64 : digest.getDigestSize();
        this.f78169c = digestSize;
        int i2 = 16;
        this.d = 16;
        double d = digestSize * 8;
        int i3 = 0;
        int i4 = 16;
        int i5 = 0;
        while (true) {
            i4 >>= 1;
            if (i4 == 0) {
                break;
            } else {
                i5++;
            }
        }
        int iCeil = (int) Math.ceil(d / ((double) i5));
        int i6 = 15 * iCeil;
        int i7 = 0;
        while (true) {
            i6 >>= 1;
            if (i6 == 0) {
                break;
            } else {
                i7++;
            }
        }
        while (true) {
            i2 >>= 1;
            if (i2 == 0) {
                break;
            } else {
                i3++;
            }
        }
        int iFloor = ((int) Math.floor(i7 / i3)) + 1 + iCeil;
        this.f78170e = iFloor;
        WOTSPlusOid wOTSPlusOid = (WOTSPlusOid) WOTSPlusOid.f78165b.get(WOTSPlusOid.a(digestSize, iFloor, digest.getAlgorithmName()));
        this.f78167a = wOTSPlusOid;
        if (wOTSPlusOid != null) {
            return;
        }
        md.n("cannot find OID for digest algorithm: ".concat(digest.getAlgorithmName()));
        throw null;
    }
}
