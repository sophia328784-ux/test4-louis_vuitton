package org.bouncycastle.crypto.util;

import defpackage.md;
import org.bouncycastle.internal.asn1.misc.MiscObjectIdentifiers;

/* JADX INFO: loaded from: classes5.dex */
public class ScryptConfig extends PBKDFConfig {
    private final int blockSize;
    private final int costParameter;
    private final int parallelizationParameter;
    private final int saltLength;

    public static class Builder {
        private final int blockSize;
        private final int costParameter;
        private final int parallelizationParameter;
        private int saltLength = 16;

        public Builder(int i2, int i3, int i4) {
            if (i2 <= 1 || !isPowerOf2(i2)) {
                md.n("Cost parameter N must be > 1 and a power of 2");
                throw null;
            }
            this.costParameter = i2;
            this.blockSize = i3;
            this.parallelizationParameter = i4;
        }

        private static boolean isPowerOf2(int i2) {
            return (i2 & (i2 + (-1))) == 0;
        }

        public ScryptConfig build() {
            return new ScryptConfig(this);
        }

        public Builder withSaltLength(int i2) {
            this.saltLength = i2;
            return this;
        }
    }

    private ScryptConfig(Builder builder) {
        super(MiscObjectIdentifiers.id_scrypt);
        this.costParameter = builder.costParameter;
        this.blockSize = builder.blockSize;
        this.parallelizationParameter = builder.parallelizationParameter;
        this.saltLength = builder.saltLength;
    }

    public int getBlockSize() {
        return this.blockSize;
    }

    public int getCostParameter() {
        return this.costParameter;
    }

    public int getParallelizationParameter() {
        return this.parallelizationParameter;
    }

    public int getSaltLength() {
        return this.saltLength;
    }
}
