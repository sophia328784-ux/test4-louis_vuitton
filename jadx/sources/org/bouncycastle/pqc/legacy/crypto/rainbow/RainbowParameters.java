package org.bouncycastle.pqc.legacy.crypto.rainbow;

import defpackage.md;
import org.bouncycastle.crypto.CipherParameters;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowParameters implements CipherParameters {
    private final int[] DEFAULT_VI;
    private int[] vi;

    public RainbowParameters(int[] iArr) {
        this.DEFAULT_VI = new int[]{6, 12, 17, 22, 33};
        this.vi = iArr;
        checkParams();
    }

    private void checkParams() {
        String str;
        int[] iArr;
        int i2;
        int[] iArr2 = this.vi;
        if (iArr2 == null) {
            str = "no layers defined.";
        } else if (iArr2.length > 1) {
            int i3 = 0;
            do {
                iArr = this.vi;
                if (i3 >= iArr.length - 1) {
                    return;
                }
                i2 = iArr[i3];
                i3++;
            } while (i2 < iArr[i3]);
            str = "v[i] has to be smaller than v[i+1]";
        } else {
            str = "Rainbow needs at least 1 layer, such that v1 < v2.";
        }
        md.n(str);
    }

    public int getDocLength() {
        int[] iArr = this.vi;
        return iArr[iArr.length - 1] - iArr[0];
    }

    public int getNumOfLayers() {
        return this.vi.length - 1;
    }

    public int[] getVi() {
        return this.vi;
    }

    public RainbowParameters() {
        int[] iArr = {6, 12, 17, 22, 33};
        this.DEFAULT_VI = iArr;
        this.vi = iArr;
    }
}
