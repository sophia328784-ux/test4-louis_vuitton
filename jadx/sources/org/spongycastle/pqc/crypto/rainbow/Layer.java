package org.spongycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class Layer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78119c;
    public final short[][][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final short[][][] f78120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final short[][] f78121f;
    public final short[] g;

    public Layer(int i2, int i3, SecureRandom secureRandom) {
        this.f78117a = i2;
        this.f78118b = i3;
        int i4 = i3 - i2;
        this.f78119c = i4;
        Class cls = Short.TYPE;
        this.d = (short[][][]) Array.newInstance((Class<?>) cls, i4, i4, i2);
        this.f78120e = (short[][][]) Array.newInstance((Class<?>) cls, i4, i2, i2);
        this.f78121f = (short[][]) Array.newInstance((Class<?>) cls, i4, i3);
        this.g = new short[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < this.f78119c; i6++) {
                for (int i7 = 0; i7 < this.f78117a; i7++) {
                    this.d[i5][i6][i7] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i8 = 0; i8 < i4; i8++) {
            for (int i9 = 0; i9 < this.f78117a; i9++) {
                for (int i10 = 0; i10 < this.f78117a; i10++) {
                    this.f78120e[i8][i9][i10] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i11 = 0; i11 < i4; i11++) {
            for (int i12 = 0; i12 < this.f78118b; i12++) {
                this.f78121f[i11][i12] = (short) (secureRandom.nextInt() & 255);
            }
        }
        for (int i13 = 0; i13 < i4; i13++) {
            this.g[i13] = (short) (secureRandom.nextInt() & 255);
        }
    }

    public final boolean equals(Object obj) {
        boolean zH;
        boolean zH2;
        if (obj != null && (obj instanceof Layer)) {
            Layer layer = (Layer) obj;
            if (this.f78117a == layer.f78117a && this.f78118b == layer.f78118b && this.f78119c == layer.f78119c) {
                short[][][] sArr = layer.d;
                short[][][] sArr2 = this.d;
                if (sArr2.length != sArr.length) {
                    zH = false;
                } else {
                    zH = true;
                    for (int length = sArr2.length - 1; length >= 0; length--) {
                        zH &= RainbowUtil.h(sArr2[length], sArr[length]);
                    }
                }
                if (zH) {
                    short[][][] sArr3 = layer.f78120e;
                    short[][][] sArr4 = this.f78120e;
                    if (sArr4.length != sArr3.length) {
                        zH2 = false;
                    } else {
                        zH2 = true;
                        for (int length2 = sArr4.length - 1; length2 >= 0; length2--) {
                            zH2 &= RainbowUtil.h(sArr4[length2], sArr3[length2]);
                        }
                    }
                    if (zH2 && RainbowUtil.h(this.f78121f, layer.f78121f) && RainbowUtil.g(this.g, layer.g)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = ((((this.f78117a * 37) + this.f78118b) * 37) + this.f78119c) * 37;
        int i3 = 0;
        int i4 = 0;
        int iK = 0;
        while (true) {
            short[][][] sArr = this.d;
            if (i4 == sArr.length) {
                break;
            }
            iK = (iK * 257) + Arrays.k(sArr[i4]);
            i4++;
        }
        int i5 = (iK + i2) * 37;
        int iK2 = 0;
        while (true) {
            short[][][] sArr2 = this.f78120e;
            if (i3 == sArr2.length) {
                return Arrays.j(this.g) + ((Arrays.k(this.f78121f) + ((iK2 + i5) * 37)) * 37);
            }
            iK2 = (iK2 * 257) + Arrays.k(sArr2[i3]);
            i3++;
        }
    }

    public Layer(byte b2, byte b3, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int i2 = b2 & 255;
        this.f78117a = i2;
        int i3 = b3 & 255;
        this.f78118b = i3;
        this.f78119c = i3 - i2;
        this.d = sArr;
        this.f78120e = sArr2;
        this.f78121f = sArr3;
        this.g = sArr4;
    }
}
