package org.bouncycastle.pqc.crypto.crystals.dilithium;

/* JADX INFO: loaded from: classes5.dex */
class Reduce {
    public static int conditionalAddQ(int i2) {
        return i2 + ((i2 >> 31) & DilithiumEngine.DilithiumQ);
    }

    public static int montgomeryReduce(long j2) {
        return (int) ((j2 - (((long) ((int) (58728449 * j2))) * 8380417)) >>> 32);
    }

    public static int reduce32(int i2) {
        return i2 - (((4194304 + i2) >> 23) * DilithiumEngine.DilithiumQ);
    }
}
