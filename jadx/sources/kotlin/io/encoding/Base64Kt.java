package kotlin.io.encoding;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class Base64Kt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f71896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f71897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f71898c;
    public static final int[] d;

    static {
        byte[] bArr = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        f71896a = bArr;
        int[] iArr = new int[256];
        int i2 = 0;
        ArraysKt.s(-1, 0, 6, iArr);
        iArr[61] = -2;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 64) {
            iArr[bArr[i3]] = i4;
            i3++;
            i4++;
        }
        f71897b = iArr;
        byte[] bArr2 = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        f71898c = bArr2;
        int[] iArr2 = new int[256];
        ArraysKt.s(-1, 0, 6, iArr2);
        iArr2[61] = -2;
        int i5 = 0;
        while (i2 < 64) {
            iArr2[bArr2[i2]] = i5;
            i2++;
            i5++;
        }
        d = iArr2;
    }
}
