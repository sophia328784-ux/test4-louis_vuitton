package org.bouncycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Encodable;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSMTPrivateKeyParameters extends XMSSMTKeyParameters implements XMSSStoreableObjectInterface, Encodable {
    private volatile BDSStateMap bdsState;
    private volatile long index;
    private final XMSSMTParameters params;
    private final byte[] publicSeed;
    private final byte[] root;
    private final byte[] secretKeyPRF;
    private final byte[] secretKeySeed;
    private volatile boolean used;

    public static class Builder {
        private final XMSSMTParameters params;
        private long index = 0;
        private long maxIndex = -1;
        private byte[] secretKeySeed = null;
        private byte[] secretKeyPRF = null;
        private byte[] publicSeed = null;
        private byte[] root = null;
        private BDSStateMap bdsState = null;
        private byte[] privateKey = null;
        private XMSSParameters xmss = null;

        public Builder(XMSSMTParameters xMSSMTParameters) {
            this.params = xMSSMTParameters;
        }

        public XMSSMTPrivateKeyParameters build() {
            return new XMSSMTPrivateKeyParameters(this);
        }

        public Builder withBDSState(BDSStateMap bDSStateMap) {
            if (bDSStateMap.getMaxIndex() == 0) {
                this.bdsState = new BDSStateMap(bDSStateMap, (1 << this.params.getHeight()) - 1);
                return this;
            }
            this.bdsState = bDSStateMap;
            return this;
        }

        public Builder withIndex(long j2) {
            this.index = j2;
            return this;
        }

        public Builder withMaxIndex(long j2) {
            this.maxIndex = j2;
            return this;
        }

        public Builder withPrivateKey(byte[] bArr) {
            this.privateKey = XMSSUtil.cloneArray(bArr);
            this.xmss = this.params.getXMSSParameters();
            return this;
        }

        public Builder withPublicSeed(byte[] bArr) {
            this.publicSeed = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withRoot(byte[] bArr) {
            this.root = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withSecretKeyPRF(byte[] bArr) {
            this.secretKeyPRF = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withSecretKeySeed(byte[] bArr) {
            this.secretKeySeed = XMSSUtil.cloneArray(bArr);
            return this;
        }
    }

    private XMSSMTPrivateKeyParameters(Builder builder) {
        super(true, builder.params.getTreeDigest());
        XMSSMTParameters xMSSMTParameters = builder.params;
        this.params = xMSSMTParameters;
        if (xMSSMTParameters == null) {
            r81.d("params == null");
            throw null;
        }
        int treeDigestSize = xMSSMTParameters.getTreeDigestSize();
        byte[] bArr = builder.privateKey;
        if (bArr != null) {
            if (builder.xmss == null) {
                r81.d("xmss == null");
                throw null;
            }
            int height = xMSSMTParameters.getHeight();
            int i2 = (height + 7) / 8;
            this.index = XMSSUtil.bytesToXBigEndian(bArr, 0, i2);
            if (!XMSSUtil.isIndexValid(height, this.index)) {
                md.n("index out of bounds");
                throw null;
            }
            this.secretKeySeed = XMSSUtil.extractBytesAtOffset(bArr, i2, treeDigestSize);
            int i3 = i2 + treeDigestSize;
            this.secretKeyPRF = XMSSUtil.extractBytesAtOffset(bArr, i3, treeDigestSize);
            int i4 = i3 + treeDigestSize;
            this.publicSeed = XMSSUtil.extractBytesAtOffset(bArr, i4, treeDigestSize);
            int i5 = i4 + treeDigestSize;
            this.root = XMSSUtil.extractBytesAtOffset(bArr, i5, treeDigestSize);
            int i6 = i5 + treeDigestSize;
            try {
                this.bdsState = ((BDSStateMap) XMSSUtil.deserialize(XMSSUtil.extractBytesAtOffset(bArr, i6, bArr.length - i6), BDSStateMap.class)).withWOTSDigest(builder.xmss.getTreeDigestOID());
                return;
            } catch (IOException e2) {
                r81.j(e2.getMessage(), e2);
                throw null;
            } catch (ClassNotFoundException e3) {
                r81.j(e3.getMessage(), e3);
                throw null;
            }
        }
        this.index = builder.index;
        byte[] bArr2 = builder.secretKeySeed;
        if (bArr2 == null) {
            this.secretKeySeed = new byte[treeDigestSize];
        } else {
            if (bArr2.length != treeDigestSize) {
                md.n("size of secretKeySeed needs to be equal size of digest");
                throw null;
            }
            this.secretKeySeed = bArr2;
        }
        byte[] bArr3 = builder.secretKeyPRF;
        if (bArr3 == null) {
            this.secretKeyPRF = new byte[treeDigestSize];
        } else {
            if (bArr3.length != treeDigestSize) {
                md.n("size of secretKeyPRF needs to be equal size of digest");
                throw null;
            }
            this.secretKeyPRF = bArr3;
        }
        byte[] bArr4 = builder.publicSeed;
        if (bArr4 == null) {
            this.publicSeed = new byte[treeDigestSize];
        } else {
            if (bArr4.length != treeDigestSize) {
                md.n("size of publicSeed needs to be equal size of digest");
                throw null;
            }
            this.publicSeed = bArr4;
        }
        byte[] bArr5 = builder.root;
        if (bArr5 == null) {
            this.root = new byte[treeDigestSize];
        } else {
            if (bArr5.length != treeDigestSize) {
                md.n("size of root needs to be equal size of digest");
                throw null;
            }
            this.root = bArr5;
        }
        BDSStateMap bDSStateMap = builder.bdsState;
        if (bDSStateMap != null) {
            this.bdsState = bDSStateMap;
        } else {
            if (!XMSSUtil.isIndexValid(xMSSMTParameters.getHeight(), builder.index) || bArr4 == null || bArr2 == null) {
                bDSStateMap = new BDSStateMap(builder.maxIndex + 1);
                this.bdsState = bDSStateMap;
            } else {
                this.bdsState = new BDSStateMap(xMSSMTParameters, builder.index, bArr4, bArr2);
            }
        }
        if (builder.maxIndex < 0 || builder.maxIndex == this.bdsState.getMaxIndex()) {
            return;
        }
        md.n("maxIndex set but not reflected in state");
        throw null;
    }

    public XMSSMTPrivateKeyParameters extractKeyShard(int i2) {
        XMSSMTPrivateKeyParameters xMSSMTPrivateKeyParametersBuild;
        if (i2 < 1) {
            md.n("cannot ask for a shard with 0 keys");
            return null;
        }
        synchronized (this) {
            long j2 = i2;
            try {
                if (j2 > getUsagesRemaining()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                xMSSMTPrivateKeyParametersBuild = new Builder(this.params).withSecretKeySeed(this.secretKeySeed).withSecretKeyPRF(this.secretKeyPRF).withPublicSeed(this.publicSeed).withRoot(this.root).withIndex(getIndex()).withBDSState(new BDSStateMap(this.bdsState, (getIndex() + j2) - 1)).build();
                for (int i3 = 0; i3 != i2; i3++) {
                    rollKey();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return xMSSMTPrivateKeyParametersBuild;
    }

    public BDSStateMap getBDSState() {
        return this.bdsState;
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        byte[] byteArray;
        synchronized (this) {
            byteArray = toByteArray();
        }
        return byteArray;
    }

    public long getIndex() {
        return this.index;
    }

    public XMSSMTPrivateKeyParameters getNextKey() {
        XMSSMTPrivateKeyParameters xMSSMTPrivateKeyParametersExtractKeyShard;
        synchronized (this) {
            xMSSMTPrivateKeyParametersExtractKeyShard = extractKeyShard(1);
        }
        return xMSSMTPrivateKeyParametersExtractKeyShard;
    }

    public XMSSMTParameters getParameters() {
        return this.params;
    }

    public byte[] getPublicSeed() {
        return XMSSUtil.cloneArray(this.publicSeed);
    }

    public byte[] getRoot() {
        return XMSSUtil.cloneArray(this.root);
    }

    public byte[] getSecretKeyPRF() {
        return XMSSUtil.cloneArray(this.secretKeyPRF);
    }

    public byte[] getSecretKeySeed() {
        return XMSSUtil.cloneArray(this.secretKeySeed);
    }

    public long getUsagesRemaining() {
        long maxIndex;
        synchronized (this) {
            maxIndex = (this.bdsState.getMaxIndex() - getIndex()) + 1;
        }
        return maxIndex;
    }

    public XMSSMTPrivateKeyParameters rollKey() {
        synchronized (this) {
            try {
                long index = getIndex();
                long maxIndex = this.bdsState.getMaxIndex();
                BDSStateMap bDSStateMap = this.bdsState;
                if (index < maxIndex) {
                    bDSStateMap.updateState(this.params, this.index, this.publicSeed, this.secretKeySeed);
                    this.index++;
                } else {
                    this.index = bDSStateMap.getMaxIndex() + 1;
                    this.bdsState = new BDSStateMap(this.bdsState.getMaxIndex());
                }
                this.used = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        byte[] bArrConcatenate;
        synchronized (this) {
            try {
                int treeDigestSize = this.params.getTreeDigestSize();
                int height = (this.params.getHeight() + 7) / 8;
                byte[] bArr = new byte[height + treeDigestSize + treeDigestSize + treeDigestSize + treeDigestSize];
                XMSSUtil.copyBytesAtOffset(bArr, XMSSUtil.toBytesBigEndian(this.index, height), 0);
                XMSSUtil.copyBytesAtOffset(bArr, this.secretKeySeed, height);
                int i2 = height + treeDigestSize;
                XMSSUtil.copyBytesAtOffset(bArr, this.secretKeyPRF, i2);
                int i3 = i2 + treeDigestSize;
                XMSSUtil.copyBytesAtOffset(bArr, this.publicSeed, i3);
                XMSSUtil.copyBytesAtOffset(bArr, this.root, i3 + treeDigestSize);
                try {
                    bArrConcatenate = Arrays.concatenate(bArr, XMSSUtil.serialize(this.bdsState));
                } catch (IOException e2) {
                    throw new IllegalStateException("error serializing bds state: " + e2.getMessage(), e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrConcatenate;
    }
}
