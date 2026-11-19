package androidx.compose.ui.spatial;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/spatial/RectList;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RectList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f10378a = new long[192];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f10379b = new long[192];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10380c;

    public final void a(int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2, boolean z3, int i8) {
        long[] jArr = this.f10378a;
        int i9 = this.f10380c;
        int i10 = i9 + 3;
        this.f10380c = i10;
        int length = jArr.length;
        if (length <= i10) {
            int iMax = Math.max(length * 2, i10);
            this.f10378a = Arrays.copyOf(jArr, iMax);
            this.f10379b = Arrays.copyOf(this.f10379b, iMax);
        }
        long[] jArr2 = this.f10378a;
        jArr2[i9] = (((long) i3) << 32) | (((long) i4) & BodyPartID.bodyIdMax);
        jArr2[i9 + 1] = (((long) i5) << 32) | (((long) i6) & BodyPartID.bodyIdMax);
        int i11 = i7 & 33554431;
        jArr2[i9 + 2] = ((z3 ? 1L : 0L) << 63) | ((z2 ? 1L : 0L) << 62) | ((z ? 1L : 0L) << 61) | 1152921504606846976L | (((long) Math.min(0, 1023)) << 50) | (((long) i11) << 25) | ((long) (i2 & 33554431));
        if (i7 < 0) {
            return;
        }
        for (int i12 = i8 != -1 ? i8 : i9 - 3; i12 >= 0; i12 -= 3) {
            int i13 = i12 + 2;
            long j2 = jArr2[i13];
            if ((((int) j2) & 33554431) == i11) {
                jArr2[i13] = (((long) Math.min((i9 - i12) / 3, 1023)) << 50) | (j2 & RectListKt.f10381a);
                return;
            }
        }
    }

    public final void c(int i2, boolean z) {
        int i3 = i2 & 33554431;
        long[] jArr = this.f10378a;
        int i4 = this.f10380c;
        for (int i5 = 0; i5 < jArr.length - 2 && i5 < i4; i5 += 3) {
            int i6 = i5 + 2;
            long j2 = jArr[i6];
            if ((((int) j2) & 33554431) == i3) {
                long j3 = 8070450532247928831L & j2;
                long j4 = z ? 1L : 0L;
                jArr[i6] = j3 | (1152921504606846976L * j4) | (j4 * Long.MIN_VALUE);
                return;
            }
        }
    }

    public final void d(int i2, int i3, long j2) {
        int i4;
        char c2;
        char c3;
        long[] jArr = this.f10378a;
        long[] jArr2 = this.f10379b;
        jArr2[0] = j2;
        int i5 = 1;
        while (i5 > 0) {
            i5--;
            long j3 = jArr2[i5];
            int i6 = 33554431;
            int i7 = ((int) j3) & 33554431;
            char c4 = 25;
            int i8 = ((int) (j3 >> 25)) & 33554431;
            char c5 = '2';
            int i9 = ((int) (j3 >> 50)) & 1023;
            int i10 = i9 == 1023 ? this.f10380c : (i9 * 3) + i8;
            if (i8 < 0) {
                return;
            }
            while (i8 < jArr.length - 2 && i8 < i10) {
                int i11 = i8 + 2;
                long j4 = jArr[i11];
                if ((((int) (j4 >> c4)) & i6) == i7) {
                    long j5 = jArr[i8];
                    int i12 = i8 + 1;
                    i4 = i6;
                    c2 = c4;
                    long j6 = jArr[i12];
                    c3 = c5;
                    jArr[i8] = (((long) (((int) j5) + i3)) & BodyPartID.bodyIdMax) | (((long) (((int) (j5 >> 32)) + i2)) << 32);
                    jArr[i12] = (((long) (((int) j6) + i3)) & BodyPartID.bodyIdMax) | (((long) (((int) (j6 >> 32)) + i2)) << 32);
                    jArr[i11] = (((j4 >> 63) & 1) << 60) | j4;
                    if ((((int) (j4 >> c3)) & 1023) > 0) {
                        jArr2[i5] = (RectListKt.f10382b & j4) | (((long) ((i8 + 3) & i4)) << c2);
                        i5++;
                    }
                } else {
                    i4 = i6;
                    c2 = c4;
                    c3 = c5;
                }
                i8 += 3;
                i6 = i4;
                c4 = c2;
                c5 = c3;
            }
        }
    }

    public final void e(int i2, Function4 function4) {
        int i3 = i2 & 33554431;
        long[] jArr = this.f10378a;
        int i4 = this.f10380c;
        for (int i5 = 0; i5 < jArr.length - 2 && i5 < i4; i5 += 3) {
            if ((((int) jArr[i5 + 2]) & 33554431) == i3) {
                long j2 = jArr[i5];
                long j3 = jArr[i5 + 1];
                function4.g(Integer.valueOf((int) (j2 >> 32)), Integer.valueOf((int) j2), Integer.valueOf((int) (j3 >> 32)), Integer.valueOf((int) j3));
                return;
            }
        }
    }
}
