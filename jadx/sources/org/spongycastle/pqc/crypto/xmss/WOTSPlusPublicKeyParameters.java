package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlusPublicKeyParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[][] f78171a;

    public WOTSPlusPublicKeyParameters(WOTSPlusParameters wOTSPlusParameters, byte[][] bArr) {
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                r81.d("publicKey byte array == null");
                throw null;
            }
        }
        if (bArr.length != wOTSPlusParameters.f78170e) {
            md.n("wrong publicKey size");
            throw null;
        }
        for (byte[] bArr3 : bArr) {
            if (bArr3.length != wOTSPlusParameters.f78169c) {
                md.n("wrong publicKey format");
                throw null;
            }
        }
        this.f78171a = XMSSUtil.c(bArr);
    }
}
