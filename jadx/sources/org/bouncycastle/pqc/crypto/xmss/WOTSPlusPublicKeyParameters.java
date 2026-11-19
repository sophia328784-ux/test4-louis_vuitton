package org.bouncycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlusPublicKeyParameters {
    private final byte[][] publicKey;

    public WOTSPlusPublicKeyParameters(WOTSPlusParameters wOTSPlusParameters, byte[][] bArr) {
        if (wOTSPlusParameters == null) {
            r81.d("params == null");
            throw null;
        }
        if (bArr == null) {
            r81.d("publicKey == null");
            throw null;
        }
        if (XMSSUtil.hasNullPointer(bArr)) {
            r81.d("publicKey byte array == null");
            throw null;
        }
        if (bArr.length != wOTSPlusParameters.getLen()) {
            md.n("wrong publicKey size");
            throw null;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != wOTSPlusParameters.getTreeDigestSize()) {
                md.n("wrong publicKey format");
                throw null;
            }
        }
        this.publicKey = XMSSUtil.cloneArray(bArr);
    }

    public byte[][] toByteArray() {
        return XMSSUtil.cloneArray(this.publicKey);
    }
}
