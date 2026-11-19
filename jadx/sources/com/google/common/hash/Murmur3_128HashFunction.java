package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
final class Murmur3_128HashFunction extends AbstractHashFunction implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashFunction f33743b = new Murmur3_128HashFunction();
    private static final long serialVersionUID = 0;

    public static final class Murmur3_128Hasher extends AbstractStreamingHasher {
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f33744e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f33745f;

        @Override // com.google.common.hash.AbstractStreamingHasher
        public final void e(ByteBuffer byteBuffer) {
            long j2 = byteBuffer.getLong();
            long j3 = byteBuffer.getLong();
            long jRotateLeft = (Long.rotateLeft(j2 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
            this.d = jRotateLeft;
            long jRotateLeft2 = Long.rotateLeft(jRotateLeft, 27);
            long j4 = this.f33744e;
            this.d = ((jRotateLeft2 + j4) * 5) + 1390208809;
            long jRotateLeft3 = (Long.rotateLeft(j3 * 5545529020109919103L, 33) * (-8663945395140668459L)) ^ j4;
            this.f33744e = jRotateLeft3;
            this.f33744e = ((Long.rotateLeft(jRotateLeft3, 31) + this.d) * 5) + 944331445;
            this.f33745f += 16;
        }
    }

    static {
        int i2 = Hashing.f33742a;
    }

    @Override // com.google.common.hash.HashFunction
    public final Hasher a() {
        Murmur3_128Hasher murmur3_128Hasher = new Murmur3_128Hasher();
        murmur3_128Hasher.d = 0L;
        murmur3_128Hasher.f33744e = 0L;
        murmur3_128Hasher.f33745f = 0;
        return murmur3_128Hasher;
    }

    public final boolean equals(Object obj) {
        return obj instanceof Murmur3_128HashFunction;
    }

    public final int hashCode() {
        return Murmur3_128HashFunction.class.hashCode();
    }

    public final String toString() {
        return "Hashing.murmur3_128(0)";
    }
}
