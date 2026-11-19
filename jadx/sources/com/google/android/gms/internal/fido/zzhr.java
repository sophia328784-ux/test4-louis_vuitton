package com.google.android.gms.internal.fido;

import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f29916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f29917b;

    public zzhr(int i2) {
        this.f29916a = (byte) (i2 & BERTags.FLAGS);
        this.f29917b = (byte) (i2 & 31);
    }
}
