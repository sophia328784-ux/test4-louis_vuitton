package com.google.common.hash;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractHasher implements Hasher {
    @Override // com.google.common.hash.Hasher
    public final Hasher a(byte[] bArr) {
        AbstractStreamingHasher abstractStreamingHasher = (AbstractStreamingHasher) this;
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr, 0, bArr.length).order(ByteOrder.LITTLE_ENDIAN);
        int iRemaining = byteBufferOrder.remaining();
        ByteBuffer byteBuffer = abstractStreamingHasher.f33737a;
        if (iRemaining <= byteBuffer.remaining()) {
            byteBuffer.put(byteBufferOrder);
            if (byteBuffer.remaining() < 8) {
                abstractStreamingHasher.d();
            }
            return abstractStreamingHasher;
        }
        int iPosition = abstractStreamingHasher.f33738b - byteBuffer.position();
        for (int i2 = 0; i2 < iPosition; i2++) {
            byteBuffer.put(byteBufferOrder.get());
        }
        abstractStreamingHasher.d();
        while (byteBufferOrder.remaining() >= abstractStreamingHasher.f33739c) {
            abstractStreamingHasher.e(byteBufferOrder);
        }
        byteBuffer.put(byteBufferOrder);
        return abstractStreamingHasher;
    }
}
