package org.spongycastle.pqc.crypto.xmss;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSNode implements Serializable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78197c;

    public XMSSNode(int i2, byte[] bArr) {
        this.f78196b = i2;
        this.f78197c = bArr;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final XMSSNode clone() {
        return new XMSSNode(this.f78196b, XMSSUtil.b(this.f78197c));
    }
}
