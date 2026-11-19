package com.perfectcorp.thirdparty.com.google.common.hash;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes3.dex */
abstract class a extends c {
    public a() {
        ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.hash.j
    /* JADX INFO: renamed from: a */
    public final j b(int i2, int i3, byte[] bArr) {
        Preconditions.c(i2, i2 + i3, bArr.length);
        f(bArr, i2, i3);
        return this;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.hash.j
    /* JADX INFO: renamed from: c */
    public final j d(byte b2) {
        d(b2);
        return this;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.hash.j
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public abstract void d(byte b2);

    public abstract void f(byte[] bArr, int i2, int i3);

    @Override // com.perfectcorp.thirdparty.com.google.common.hash.j
    /* JADX INFO: renamed from: a */
    public final j b(byte[] bArr) {
        bArr.getClass();
        f(bArr, 0, bArr.length);
        return this;
    }
}
