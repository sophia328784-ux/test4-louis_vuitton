package org.spongycastle.pqc.crypto.xmss;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
class BDSTreeHash implements Serializable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public XMSSNode f78140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78141c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f78142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f78143f = false;
    public boolean g = false;

    public BDSTreeHash(int i2) {
        this.f78141c = i2;
    }

    public final int a() {
        if (!this.f78143f || this.g) {
            return Integer.MAX_VALUE;
        }
        return this.d;
    }
}
