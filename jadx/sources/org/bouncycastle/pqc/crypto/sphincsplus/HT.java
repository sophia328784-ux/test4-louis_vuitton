package org.bouncycastle.pqc.crypto.sphincsplus;

import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class HT {
    SPHINCSPlusEngine engine;
    final byte[] htPubKey;
    private final byte[] pkSeed;
    private final byte[] skSeed;
    WotsPlus wots;

    public HT(SPHINCSPlusEngine sPHINCSPlusEngine, byte[] bArr, byte[] bArr2) {
        this.skSeed = bArr;
        this.pkSeed = bArr2;
        this.engine = sPHINCSPlusEngine;
        this.wots = new WotsPlus(sPHINCSPlusEngine);
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(sPHINCSPlusEngine.D - 1);
        adrs.setTreeAddress(0L);
        if (bArr != null) {
            this.htPubKey = xmss_PKgen(bArr, bArr2, adrs);
        } else {
            this.htPubKey = null;
        }
    }

    public byte[] sign(byte[] bArr, long j2, int i2) {
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j2);
        SIG_XMSS sig_xmssXmss_sign = xmss_sign(bArr, this.skSeed, i2, this.pkSeed, adrs);
        int i3 = this.engine.D;
        SIG_XMSS[] sig_xmssArr = new SIG_XMSS[i3];
        sig_xmssArr[0] = sig_xmssXmss_sign;
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j2);
        byte[] bArrXmss_pkFromSig = xmss_pkFromSig(i2, sig_xmssXmss_sign, bArr, this.pkSeed, adrs);
        int i4 = 1;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (i4 >= sPHINCSPlusEngine.D) {
                break;
            }
            int i5 = sPHINCSPlusEngine.H_PRIME;
            int i6 = (int) (((long) ((1 << i5) - 1)) & j2);
            j2 >>>= i5;
            adrs.setLayerAddress(i4);
            adrs.setTreeAddress(j2);
            SIG_XMSS sig_xmssXmss_sign2 = xmss_sign(bArrXmss_pkFromSig, this.skSeed, i6, this.pkSeed, adrs);
            sig_xmssArr[i4] = sig_xmssXmss_sign2;
            if (i4 < this.engine.D - 1) {
                bArrXmss_pkFromSig = xmss_pkFromSig(i6, sig_xmssXmss_sign2, bArrXmss_pkFromSig, this.pkSeed, adrs);
            }
            i4++;
        }
        byte[][] bArr2 = new byte[i3][];
        for (int i7 = 0; i7 != i3; i7++) {
            SIG_XMSS sig_xmss = sig_xmssArr[i7];
            bArr2[i7] = Arrays.concatenate(sig_xmss.sig, Arrays.concatenate(sig_xmss.auth));
        }
        return Arrays.concatenate(bArr2);
    }

    public byte[] treehash(byte[] bArr, int i2, int i3, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        LinkedList linkedList = new LinkedList();
        int i4 = 1 << i3;
        if (i2 % i4 != 0) {
            return null;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            adrs2.setType(0);
            int i6 = i2 + i5;
            adrs2.setKeyPairAddress(i6);
            byte[] bArrPkGen = this.wots.pkGen(bArr, bArr2, adrs2);
            adrs2.setType(2);
            adrs2.setTreeHeight(1);
            adrs2.setTreeIndex(i6);
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == adrs2.getTreeHeight()) {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                bArrPkGen = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, bArrPkGen);
                adrs2.setTreeHeight(adrs2.getTreeHeight() + 1);
            }
            linkedList.add(0, new NodeEntry(bArrPkGen, adrs2.getTreeHeight()));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }

    public boolean verify(byte[] bArr, SIG_XMSS[] sig_xmssArr, byte[] bArr2, long j2, int i2, byte[] bArr3) {
        ADRS adrs = new ADRS();
        SIG_XMSS sig_xmss = sig_xmssArr[0];
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j2);
        byte[] bArrXmss_pkFromSig = xmss_pkFromSig(i2, sig_xmss, bArr, bArr2, adrs);
        int i3 = 1;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (i3 >= sPHINCSPlusEngine.D) {
                return Arrays.areEqual(bArr3, bArrXmss_pkFromSig);
            }
            int i4 = sPHINCSPlusEngine.H_PRIME;
            int i5 = (int) (((long) ((1 << i4) - 1)) & j2);
            j2 >>>= i4;
            SIG_XMSS sig_xmss2 = sig_xmssArr[i3];
            adrs.setLayerAddress(i3);
            adrs.setTreeAddress(j2);
            bArrXmss_pkFromSig = xmss_pkFromSig(i5, sig_xmss2, bArrXmss_pkFromSig, bArr2, adrs);
            i3++;
        }
    }

    public byte[] xmss_PKgen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        return treehash(bArr, 0, this.engine.H_PRIME, bArr2, adrs);
    }

    public byte[] xmss_pkFromSig(int i2, SIG_XMSS sig_xmss, byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        int i3 = 0;
        adrs2.setType(0);
        adrs2.setKeyPairAddress(i2);
        byte[] wOTSSig = sig_xmss.getWOTSSig();
        byte[][] xmssauth = sig_xmss.getXMSSAUTH();
        byte[] bArrPkFromSig = this.wots.pkFromSig(wOTSSig, bArr, bArr2, adrs2);
        adrs2.setType(2);
        adrs2.setTreeIndex(i2);
        while (i3 < this.engine.H_PRIME) {
            int i4 = i3 + 1;
            adrs2.setTreeHeight(i4);
            if ((i2 / (1 << i3)) % 2 == 0) {
                adrs2.setTreeIndex(adrs2.getTreeIndex() / 2);
                bArrPkFromSig = this.engine.H(bArr2, adrs2, bArrPkFromSig, xmssauth[i3]);
            } else {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                bArrPkFromSig = this.engine.H(bArr2, adrs2, xmssauth[i3], bArrPkFromSig);
            }
            i3 = i4;
        }
        return bArrPkFromSig;
    }

    public SIG_XMSS xmss_sign(byte[] bArr, byte[] bArr2, int i2, byte[] bArr3, ADRS adrs) {
        byte[][] bArr4 = new byte[this.engine.H_PRIME][];
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setType(2);
        adrs2.setLayerAddress(adrs.getLayerAddress());
        adrs2.setTreeAddress(adrs.getTreeAddress());
        int i3 = 0;
        while (i3 < this.engine.H_PRIME) {
            int i4 = 1 << i3;
            int i5 = (1 ^ (i2 / i4)) * i4;
            HT ht = this;
            bArr4[i3] = ht.treehash(bArr2, i5, i3, bArr3, adrs2);
            i3++;
            this = ht;
        }
        HT ht2 = this;
        ADRS adrs3 = new ADRS(adrs);
        adrs3.setType(1);
        adrs3.setKeyPairAddress(i2);
        return new SIG_XMSS(ht2.wots.sign(bArr, bArr2, bArr3, adrs3), bArr4);
    }
}
