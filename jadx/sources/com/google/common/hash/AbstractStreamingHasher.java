package com.google.common.hash;

import defpackage.md;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractStreamingHasher extends AbstractHasher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f33737a = ByteBuffer.allocate(23).order(ByteOrder.LITTLE_ENDIAN);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33738b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33739c = 16;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.common.hash.Hasher
    public final HashCode b() {
        long unsignedInt;
        long unsignedInt2;
        long unsignedInt3;
        long unsignedInt4;
        long unsignedInt5;
        long unsignedInt6;
        long unsignedInt7;
        d();
        ByteBuffer byteBuffer = this.f33737a;
        byteBuffer.flip();
        if (byteBuffer.remaining() > 0) {
            Murmur3_128HashFunction.Murmur3_128Hasher murmur3_128Hasher = (Murmur3_128HashFunction.Murmur3_128Hasher) this;
            murmur3_128Hasher.f33745f = byteBuffer.remaining() + murmur3_128Hasher.f33745f;
            char c2 = 24;
            long unsignedInt8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    unsignedInt = 0;
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 2:
                    unsignedInt2 = 0;
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 3:
                    unsignedInt3 = 0;
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 4:
                    c2 = 24;
                    unsignedInt4 = 0;
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c2);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 5:
                    unsignedInt5 = 0;
                    unsignedInt4 = unsignedInt5 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(4))) << 32);
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c2);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 6:
                    unsignedInt6 = 0;
                    unsignedInt5 = (((long) Byte.toUnsignedInt(byteBuffer.get(5))) << 40) ^ unsignedInt6;
                    unsignedInt4 = unsignedInt5 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(4))) << 32);
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c2);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 7:
                    unsignedInt6 = ((long) Byte.toUnsignedInt(byteBuffer.get(6))) << 48;
                    unsignedInt5 = (((long) Byte.toUnsignedInt(byteBuffer.get(5))) << 40) ^ unsignedInt6;
                    unsignedInt4 = unsignedInt5 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(4))) << 32);
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c2);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 8:
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 9:
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 10:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 11:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 12:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 13:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(12))) << 32;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 14:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(13))) << 40;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(12))) << 32;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 15:
                    unsignedInt8 = ((long) Byte.toUnsignedInt(byteBuffer.get(14))) << 48;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(13))) << 40;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(12))) << 32;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    murmur3_128Hasher.d = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ murmur3_128Hasher.d;
                    murmur3_128Hasher.f33744e ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                default:
                    md.h("Should never get here.");
                    return null;
            }
        }
        Murmur3_128HashFunction.Murmur3_128Hasher murmur3_128Hasher2 = (Murmur3_128HashFunction.Murmur3_128Hasher) this;
        long j2 = murmur3_128Hasher2.d;
        long j3 = murmur3_128Hasher2.f33745f;
        long j4 = j2 ^ j3;
        long j5 = j3 ^ murmur3_128Hasher2.f33744e;
        long j6 = j4 + j5;
        long j7 = j5 + j6;
        long j8 = (j6 ^ (j6 >>> 33)) * (-49064778989728563L);
        long j9 = (j8 ^ (j8 >>> 33)) * (-4265267296055464877L);
        long j10 = (j7 ^ (j7 >>> 33)) * (-49064778989728563L);
        long j11 = (j10 ^ (j10 >>> 33)) * (-4265267296055464877L);
        long j12 = j11 ^ (j11 >>> 33);
        long j13 = (j9 ^ (j9 >>> 33)) + j12;
        murmur3_128Hasher2.d = j13;
        murmur3_128Hasher2.f33744e = j12 + j13;
        return new HashCode.BytesHashCode(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(murmur3_128Hasher2.d).putLong(murmur3_128Hasher2.f33744e).array());
    }

    @Override // com.google.common.hash.Hasher
    public final Hasher c() {
        ByteBuffer byteBuffer = this.f33737a;
        byteBuffer.put((byte) 0);
        if (byteBuffer.remaining() < 8) {
            d();
        }
        return this;
    }

    public final void d() {
        ByteBuffer byteBuffer = this.f33737a;
        byteBuffer.flip();
        while (byteBuffer.remaining() >= this.f33739c) {
            e(byteBuffer);
        }
        byteBuffer.compact();
    }

    public abstract void e(ByteBuffer byteBuffer);
}
