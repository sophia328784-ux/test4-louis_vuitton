package androidx.compose.ui.unit;

import com.batch.android.b.b;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0003\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"", "widthVal", "heightVal", "", "k", "(II)V", "size", "", b.d, "(I)Ljava/lang/Void;", "ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ConstraintsKt {
    public static final long a(int i2, int i3, int i4, int i5) {
        if (!((i4 >= 0) & (i3 >= i2) & (i5 >= i4) & (i2 >= 0))) {
            InlineClassHelperKt.a("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
        }
        return h(i2, i3, i4, i5);
    }

    public static /* synthetic */ long b(int i2, int i3, int i4, int i5, int i6) {
        if ((i6 & 1) != 0) {
            i2 = 0;
        }
        if ((i6 & 2) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        if ((i6 & 4) != 0) {
            i4 = 0;
        }
        if ((i6 & 8) != 0) {
            i5 = Integer.MAX_VALUE;
        }
        return a(i2, i3, i4, i5);
    }

    public static final int c(int i2) {
        if (i2 < 8191) {
            return 13;
        }
        if (i2 < 32767) {
            return 15;
        }
        if (i2 < 65535) {
            return 16;
        }
        return i2 < 262143 ? 18 : 255;
    }

    public static final long d(long j2, long j3) {
        int i2 = (int) (j3 >> 32);
        int iJ = Constraints.j(j2);
        int iH = Constraints.h(j2);
        if (i2 < iJ) {
            i2 = iJ;
        }
        if (i2 <= iH) {
            iH = i2;
        }
        int i3 = (int) (j3 & BodyPartID.bodyIdMax);
        int i4 = Constraints.i(j2);
        int iG = Constraints.g(j2);
        if (i3 < i4) {
            i3 = i4;
        }
        if (i3 <= iG) {
            iG = i3;
        }
        long j4 = (((long) iH) << 32) | (((long) iG) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j4;
    }

    public static final long e(long j2, long j3) {
        int iJ = Constraints.j(j2);
        int iH = Constraints.h(j2);
        int i2 = Constraints.i(j2);
        int iG = Constraints.g(j2);
        int iJ2 = Constraints.j(j3);
        if (iJ2 < iJ) {
            iJ2 = iJ;
        }
        if (iJ2 > iH) {
            iJ2 = iH;
        }
        int iH2 = Constraints.h(j3);
        if (iH2 >= iJ) {
            iJ = iH2;
        }
        if (iJ <= iH) {
            iH = iJ;
        }
        int i3 = Constraints.i(j3);
        if (i3 < i2) {
            i3 = i2;
        }
        if (i3 > iG) {
            i3 = iG;
        }
        int iG2 = Constraints.g(j3);
        if (iG2 >= i2) {
            i2 = iG2;
        }
        if (i2 <= iG) {
            iG = i2;
        }
        return a(iJ2, iH, i3, iG);
    }

    public static final int f(int i2, long j2) {
        int i3 = Constraints.i(j2);
        int iG = Constraints.g(j2);
        if (i2 < i3) {
            i2 = i3;
        }
        return i2 > iG ? iG : i2;
    }

    public static final int g(int i2, long j2) {
        int iJ = Constraints.j(j2);
        int iH = Constraints.h(j2);
        if (i2 < iJ) {
            i2 = iJ;
        }
        return i2 > iH ? iH : i2;
    }

    public static final long h(int i2, int i3, int i4, int i5) {
        int i6 = i5 == Integer.MAX_VALUE ? i4 : i5;
        int iC = c(i6);
        int i7 = i3 == Integer.MAX_VALUE ? i2 : i3;
        int iC2 = c(i7);
        if (iC + iC2 > 31) {
            k(i7, i6);
        }
        int i8 = i3 + 1;
        int i9 = i5 + 1;
        int i10 = iC2 - 13;
        long j2 = (((long) (i8 & (~(i8 >> 31)))) << 33) | ((long) ((i10 >> 1) + (i10 & 1))) | (((long) i2) << 2) | (((long) i4) << (iC2 + 2)) | (((long) (i9 & (~(i9 >> 31)))) << (iC2 + 33));
        Constraints.Companion companion = Constraints.f10998b;
        return j2;
    }

    public static final long i(int i2, int i3, long j2) {
        int iJ = Constraints.j(j2) + i2;
        if (iJ < 0) {
            iJ = 0;
        }
        int iH = Constraints.h(j2);
        if (iH != Integer.MAX_VALUE && (iH = iH + i2) < 0) {
            iH = 0;
        }
        int i4 = Constraints.i(j2) + i3;
        if (i4 < 0) {
            i4 = 0;
        }
        int iG = Constraints.g(j2);
        return a(iJ, iH, i4, (iG == Integer.MAX_VALUE || (iG = iG + i3) >= 0) ? iG : 0);
    }

    public static /* synthetic */ long j(int i2, int i3, int i4, long j2) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = 0;
        }
        return i(i2, i3, j2);
    }

    public static final void k(int i2, int i3) {
        throw new IllegalArgumentException(fc.f(i2, i3, "Can't represent a width of ", " and height of ", " in Constraints"));
    }

    public static final Void l(int i2) {
        throw new IllegalArgumentException(n00.m(i2, "Can't represent a size of ", " in Constraints"));
    }
}
