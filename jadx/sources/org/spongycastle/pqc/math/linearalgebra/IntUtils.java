package org.spongycastle.pqc.math.linearalgebra;

/* JADX INFO: loaded from: classes5.dex */
public abstract class IntUtils {
    public static boolean a(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = iArr.length - 1; length >= 0; length--) {
            z &= iArr[length] == iArr2[length];
        }
        return z;
    }
}
