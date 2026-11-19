package org.bouncycastle.pqc.legacy.crypto.gmss;

import defpackage.a;
import defpackage.n00;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class GMSSLeaf {
    private byte[] concHashs;
    private GMSSRandom gmssRandom;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f77682i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f77683j;
    private int keysize;
    private byte[] leaf;
    private int mdsize;
    private Digest messDigestOTS;
    byte[] privateKeyOTS;
    private byte[] seed;
    private int steps;
    private int two_power_w;
    private int w;

    public GMSSLeaf(Digest digest, byte[][] bArr, int[] iArr) {
        this.f77682i = iArr[0];
        this.f77683j = iArr[1];
        this.steps = iArr[2];
        this.w = iArr[3];
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        int iCeil = (int) Math.ceil(((double) (digestSize << 3)) / ((double) this.w));
        this.keysize = iCeil + ((int) Math.ceil(((double) getLog((iCeil << this.w) + 1)) / ((double) this.w)));
        this.two_power_w = 1 << this.w;
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.concHashs = bArr[2];
        this.leaf = bArr[3];
    }

    private int getLog(int i2) {
        int i3 = 1;
        int i4 = 2;
        while (i4 < i2) {
            i4 <<= 1;
            i3++;
        }
        return i3;
    }

    private void updateLeafCalc() {
        byte[] bArr = new byte[this.messDigestOTS.getDigestSize()];
        for (int i2 = 0; i2 < this.steps + 10000; i2++) {
            int i3 = this.f77682i;
            if (i3 == this.keysize && this.f77683j == this.two_power_w - 1) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.concHashs;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.leaf = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                return;
            }
            if (i3 == 0 || this.f77683j == this.two_power_w - 1) {
                this.f77682i = i3 + 1;
                this.f77683j = 0;
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr4 = this.privateKeyOTS;
                digest2.update(bArr4, 0, bArr4.length);
                this.privateKeyOTS = bArr;
                this.messDigestOTS.doFinal(bArr, 0);
                int i4 = this.f77683j + 1;
                this.f77683j = i4;
                if (i4 == this.two_power_w - 1) {
                    byte[] bArr5 = this.privateKeyOTS;
                    byte[] bArr6 = this.concHashs;
                    int i5 = this.mdsize;
                    System.arraycopy(bArr5, 0, bArr6, (this.f77682i - 1) * i5, i5);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.steps + " " + this.f77682i + " " + this.f77683j);
    }

    public byte[] getLeaf() {
        return Arrays.clone(this.leaf);
    }

    public byte[][] getStatByte() {
        return new byte[][]{this.privateKeyOTS, this.seed, this.concHashs, this.leaf};
    }

    public int[] getStatInt() {
        return new int[]{this.f77682i, this.f77683j, this.steps, this.w};
    }

    public void initLeafCalc(byte[] bArr) {
        this.f77682i = 0;
        this.f77683j = 0;
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, this.seed.length);
        this.seed = this.gmssRandom.nextSeed(bArr2);
    }

    public GMSSLeaf nextLeaf() {
        GMSSLeaf gMSSLeaf = new GMSSLeaf(this);
        gMSSLeaf.updateLeafCalc();
        return gMSSLeaf;
    }

    public String toString() {
        String strI = "";
        for (int i2 = 0; i2 < 4; i2++) {
            strI = a.i(getStatInt()[i2], " ", n00.t(strI));
        }
        StringBuilder sbU = n00.u(strI, " ");
        sbU.append(this.mdsize);
        sbU.append(" ");
        sbU.append(this.keysize);
        sbU.append(" ");
        String strI2 = a.i(this.two_power_w, " ", sbU);
        byte[][] statByte = getStatByte();
        for (int i3 = 0; i3 < 4; i3++) {
            strI2 = statByte[i3] != null ? n00.r(new String(Hex.encode(statByte[i3])), " ", n00.t(strI2)) : strI2.concat("null ");
        }
        return strI2;
    }

    public GMSSLeaf(Digest digest, int i2, int i3, byte[] bArr) {
        this.w = i2;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        double d = i2;
        int iCeil = (int) Math.ceil(((double) (digestSize << 3)) / d);
        int iCeil2 = iCeil + ((int) Math.ceil(((double) getLog((iCeil << i2) + 1)) / d));
        this.keysize = iCeil2;
        int i4 = 1 << i2;
        this.two_power_w = i4;
        this.steps = (int) Math.ceil(((double) ((((i4 - 1) * iCeil2) + 1) + iCeil2)) / ((double) i3));
        int i5 = this.mdsize;
        this.seed = new byte[i5];
        this.leaf = new byte[i5];
        this.privateKeyOTS = new byte[i5];
        this.concHashs = new byte[i5 * this.keysize];
        initLeafCalc(bArr);
    }

    public GMSSLeaf(Digest digest, int i2, int i3) {
        this.w = i2;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        double d = i2;
        int iCeil = (int) Math.ceil(((double) (digestSize << 3)) / d);
        int iCeil2 = iCeil + ((int) Math.ceil(((double) getLog((iCeil << i2) + 1)) / d));
        this.keysize = iCeil2;
        int i4 = 1 << i2;
        this.two_power_w = i4;
        this.steps = (int) Math.ceil(((double) ((((i4 - 1) * iCeil2) + 1) + iCeil2)) / ((double) i3));
        int i5 = this.mdsize;
        this.seed = new byte[i5];
        this.leaf = new byte[i5];
        this.privateKeyOTS = new byte[i5];
        this.concHashs = new byte[i5 * this.keysize];
    }

    private GMSSLeaf(GMSSLeaf gMSSLeaf) {
        this.messDigestOTS = gMSSLeaf.messDigestOTS;
        this.mdsize = gMSSLeaf.mdsize;
        this.keysize = gMSSLeaf.keysize;
        this.gmssRandom = gMSSLeaf.gmssRandom;
        this.leaf = Arrays.clone(gMSSLeaf.leaf);
        this.concHashs = Arrays.clone(gMSSLeaf.concHashs);
        this.f77682i = gMSSLeaf.f77682i;
        this.f77683j = gMSSLeaf.f77683j;
        this.two_power_w = gMSSLeaf.two_power_w;
        this.w = gMSSLeaf.w;
        this.steps = gMSSLeaf.steps;
        this.seed = Arrays.clone(gMSSLeaf.seed);
        this.privateKeyOTS = Arrays.clone(gMSSLeaf.privateKeyOTS);
    }
}
