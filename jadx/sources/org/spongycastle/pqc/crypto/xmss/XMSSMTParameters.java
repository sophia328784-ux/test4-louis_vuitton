package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import org.spongycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSMTParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XMSSParameters f78178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78180c;

    public XMSSMTParameters(int i2, int i3, Digest digest) {
        this.f78179b = i2;
        this.f78180c = i3;
        if (i2 < 2) {
            md.n("totalHeight must be > 1");
            throw null;
        }
        if (i2 % i3 != 0) {
            md.n("layers must divide totalHeight without remainder");
            throw null;
        }
        int i4 = i2 / i3;
        if (i4 == 1) {
            md.n("height / layers must be greater than 1");
            throw null;
        }
        XMSSParameters xMSSParameters = new XMSSParameters(i4, digest);
        this.f78178a = xMSSParameters;
        WOTSPlus wOTSPlus = xMSSParameters.f78198a;
        String algorithmName = wOTSPlus.f78162a.f78168b.getAlgorithmName();
        int iA = xMSSParameters.a();
        WOTSPlusParameters wOTSPlusParameters = wOTSPlus.f78162a;
    }
}
