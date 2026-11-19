package org.spongycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import org.spongycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WOTSPlus f78198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78200c;

    public XMSSParameters(int i2, Digest digest) {
        if (i2 < 2) {
            md.n("height must be >= 2");
            throw null;
        }
        if (digest == null) {
            r81.d("digest == null");
            throw null;
        }
        this.f78198a = new WOTSPlus(new WOTSPlusParameters(digest));
        this.f78199b = i2;
        int i3 = 2;
        while (true) {
            int i4 = this.f78199b;
            if (i3 > i4) {
                md.k("should never happen...");
                throw null;
            }
            if ((i4 - i3) % 2 == 0) {
                this.f78200c = i3;
                String algorithmName = this.f78198a.f78162a.f78168b.getAlgorithmName();
                int iA = a();
                WOTSPlusParameters wOTSPlusParameters = this.f78198a.f78162a;
                return;
            }
            i3++;
        }
    }

    public final int a() {
        return this.f78198a.f78162a.f78169c;
    }
}
