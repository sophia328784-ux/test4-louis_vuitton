package org.bouncycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlus {
    private final KeyedHashFunctions khf;
    private final WOTSPlusParameters params;
    private byte[] publicSeed;
    private byte[] secretKeySeed;

    public WOTSPlus(WOTSPlusParameters wOTSPlusParameters) {
        if (wOTSPlusParameters == null) {
            r81.d("params == null");
            throw null;
        }
        this.params = wOTSPlusParameters;
        int treeDigestSize = wOTSPlusParameters.getTreeDigestSize();
        this.khf = new KeyedHashFunctions(wOTSPlusParameters.getTreeDigest(), treeDigestSize);
        this.secretKeySeed = new byte[treeDigestSize];
        this.publicSeed = new byte[treeDigestSize];
    }

    private byte[] chain(byte[] bArr, int i2, int i3, OTSHashAddress oTSHashAddress) {
        int treeDigestSize = this.params.getTreeDigestSize();
        if (bArr == null) {
            r81.d("startHash == null");
            return null;
        }
        if (bArr.length != treeDigestSize) {
            md.n(n00.m(treeDigestSize, "startHash needs to be ", "bytes"));
            return null;
        }
        if (oTSHashAddress == null) {
            r81.d("otsHashAddress == null");
            return null;
        }
        if (oTSHashAddress.toByteArray() == null) {
            r81.d("otsHashAddress byte array == null");
            return null;
        }
        int i4 = i2 + i3;
        if (i4 > this.params.getWinternitzParameter() - 1) {
            md.n("max chain length must not be greater than w");
            return null;
        }
        if (i3 == 0) {
            return bArr;
        }
        byte[] bArrChain = chain(bArr, i2, i3 - 1, oTSHashAddress);
        OTSHashAddress oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(i4 - 1).withKeyAndMask(0).build();
        byte[] bArrPRF = this.khf.PRF(this.publicSeed, oTSHashAddress2.toByteArray());
        byte[] bArrPRF2 = this.khf.PRF(this.publicSeed, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress2.getLayerAddress()).withTreeAddress(oTSHashAddress2.getTreeAddress()).withOTSAddress(oTSHashAddress2.getOTSAddress()).withChainAddress(oTSHashAddress2.getChainAddress()).withHashAddress(oTSHashAddress2.getHashAddress()).withKeyAndMask(1).build()).toByteArray());
        byte[] bArr2 = new byte[treeDigestSize];
        for (int i5 = 0; i5 < treeDigestSize; i5++) {
            bArr2[i5] = (byte) (bArrChain[i5] ^ bArrPRF2[i5]);
        }
        return this.khf.F(bArrPRF, bArr2);
    }

    private List<Integer> convertToBaseW(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            r81.d("msg == null");
            return null;
        }
        if (i2 != 4 && i2 != 16) {
            md.n("w needs to be 4 or 16");
            return null;
        }
        int iLog2 = XMSSUtil.log2(i2);
        if (i3 > (bArr.length * 8) / iLog2) {
            md.n("outLength too big");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        loop0: for (int i4 : bArr) {
            for (int i5 = 8 - iLog2; i5 >= 0; i5 -= iLog2) {
                arrayList.add(Integer.valueOf((i4 >> i5) & (i2 - 1)));
                if (arrayList.size() == i3) {
                    break loop0;
                }
            }
        }
        return arrayList;
    }

    private byte[] expandSecretKeySeed(int i2) {
        if (i2 >= 0 && i2 < this.params.getLen()) {
            return this.khf.PRF(this.secretKeySeed, XMSSUtil.toBytesBigEndian(i2, 32));
        }
        md.n("index out of bounds");
        return null;
    }

    public KeyedHashFunctions getKhf() {
        return this.khf;
    }

    public WOTSPlusParameters getParams() {
        return this.params;
    }

    public WOTSPlusPrivateKeyParameters getPrivateKey() {
        int len = this.params.getLen();
        byte[][] bArr = new byte[len][];
        for (int i2 = 0; i2 < len; i2++) {
            bArr[i2] = expandSecretKeySeed(i2);
        }
        return new WOTSPlusPrivateKeyParameters(this.params, bArr);
    }

    public WOTSPlusPublicKeyParameters getPublicKey(OTSHashAddress oTSHashAddress) {
        if (oTSHashAddress == null) {
            r81.d("otsHashAddress == null");
            return null;
        }
        byte[][] bArr = new byte[this.params.getLen()][];
        for (int i2 = 0; i2 < this.params.getLen(); i2++) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i2).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            bArr[i2] = chain(expandSecretKeySeed(i2), 0, this.params.getWinternitzParameter() - 1, oTSHashAddress);
        }
        return new WOTSPlusPublicKeyParameters(this.params, bArr);
    }

    public WOTSPlusPublicKeyParameters getPublicKeyFromSignature(byte[] bArr, WOTSPlusSignature wOTSPlusSignature, OTSHashAddress oTSHashAddress) {
        WOTSPlusParameters wOTSPlusParameters;
        if (bArr == null) {
            r81.d("messageDigest == null");
            return null;
        }
        if (bArr.length != this.params.getTreeDigestSize()) {
            md.n("size of messageDigest needs to be equal to size of digest");
            return null;
        }
        if (wOTSPlusSignature == null) {
            r81.d("signature == null");
            return null;
        }
        if (oTSHashAddress == null) {
            r81.d("otsHashAddress == null");
            return null;
        }
        List<Integer> listConvertToBaseW = convertToBaseW(bArr, this.params.getWinternitzParameter(), this.params.getLen1());
        int i2 = 0;
        int winternitzParameter = 0;
        while (true) {
            int len1 = this.params.getLen1();
            wOTSPlusParameters = this.params;
            if (i2 >= len1) {
                break;
            }
            winternitzParameter += (wOTSPlusParameters.getWinternitzParameter() - 1) - listConvertToBaseW.get(i2).intValue();
            i2++;
        }
        listConvertToBaseW.addAll(convertToBaseW(XMSSUtil.toBytesBigEndian(winternitzParameter << (8 - ((XMSSUtil.log2(this.params.getWinternitzParameter()) * wOTSPlusParameters.getLen2()) % 8)), (int) Math.ceil(((double) (XMSSUtil.log2(this.params.getWinternitzParameter()) * this.params.getLen2())) / 8.0d)), this.params.getWinternitzParameter(), this.params.getLen2()));
        byte[][] bArr2 = new byte[this.params.getLen()][];
        for (int i3 = 0; i3 < this.params.getLen(); i3++) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i3).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            bArr2[i3] = chain(wOTSPlusSignature.toByteArray()[i3], listConvertToBaseW.get(i3).intValue(), (this.params.getWinternitzParameter() - 1) - listConvertToBaseW.get(i3).intValue(), oTSHashAddress);
        }
        return new WOTSPlusPublicKeyParameters(this.params, bArr2);
    }

    public byte[] getPublicSeed() {
        return Arrays.clone(this.publicSeed);
    }

    public byte[] getSecretKeySeed() {
        return Arrays.clone(this.secretKeySeed);
    }

    public byte[] getWOTSPlusSecretKey(byte[] bArr, OTSHashAddress oTSHashAddress) {
        return this.khf.PRF(bArr, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).build()).toByteArray());
    }

    public void importKeys(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            r81.d("secretKeySeed == null");
            return;
        }
        if (bArr.length != this.params.getTreeDigestSize()) {
            md.n("size of secretKeySeed needs to be equal to size of digest");
            return;
        }
        if (bArr2 == null) {
            r81.d("publicSeed == null");
        } else if (bArr2.length != this.params.getTreeDigestSize()) {
            md.n("size of publicSeed needs to be equal to size of digest");
        } else {
            this.secretKeySeed = bArr;
            this.publicSeed = bArr2;
        }
    }

    public WOTSPlusSignature sign(byte[] bArr, OTSHashAddress oTSHashAddress) {
        WOTSPlusParameters wOTSPlusParameters;
        if (bArr == null) {
            r81.d("messageDigest == null");
            return null;
        }
        if (bArr.length != this.params.getTreeDigestSize()) {
            md.n("size of messageDigest needs to be equal to size of digest");
            return null;
        }
        if (oTSHashAddress == null) {
            r81.d("otsHashAddress == null");
            return null;
        }
        List<Integer> listConvertToBaseW = convertToBaseW(bArr, this.params.getWinternitzParameter(), this.params.getLen1());
        int i2 = 0;
        int winternitzParameter = 0;
        while (true) {
            int len1 = this.params.getLen1();
            wOTSPlusParameters = this.params;
            if (i2 >= len1) {
                break;
            }
            winternitzParameter += (wOTSPlusParameters.getWinternitzParameter() - 1) - listConvertToBaseW.get(i2).intValue();
            i2++;
        }
        listConvertToBaseW.addAll(convertToBaseW(XMSSUtil.toBytesBigEndian(winternitzParameter << (8 - ((XMSSUtil.log2(this.params.getWinternitzParameter()) * wOTSPlusParameters.getLen2()) % 8)), (int) Math.ceil(((double) (XMSSUtil.log2(this.params.getWinternitzParameter()) * this.params.getLen2())) / 8.0d)), this.params.getWinternitzParameter(), this.params.getLen2()));
        byte[][] bArr2 = new byte[this.params.getLen()][];
        for (int i3 = 0; i3 < this.params.getLen(); i3++) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(i3).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            bArr2[i3] = chain(expandSecretKeySeed(i3), 0, listConvertToBaseW.get(i3).intValue(), oTSHashAddress);
        }
        return new WOTSPlusSignature(this.params, bArr2);
    }
}
