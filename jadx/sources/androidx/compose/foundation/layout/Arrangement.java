package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.fc;
import defpackage.o60;
import defpackage.s3;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement;", "", "Horizontal", "Vertical", "HorizontalOrVertical", "Absolute", "SpacingAlignmentCalculator", "SpacedAligned", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Arrangement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Arrangement$Start$1 f4918a = new Arrangement$Start$1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Arrangement$End$1 f4919b = new Arrangement$End$1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Arrangement$Top$1 f4920c = new Arrangement$Top$1();
    public static final Arrangement$Bottom$1 d = new Arrangement$Bottom$1();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Arrangement$Center$1 f4921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Arrangement$SpaceEvenly$1 f4922f;
    public static final Arrangement$SpaceBetween$1 g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement$Absolute;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Absolute {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Arrangement$Absolute$Left$1 f4923a = new Arrangement$Absolute$Left$1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Arrangement$Absolute$Right$1 f4924b = new Arrangement$Absolute$Right$1();
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Horizontal {
        /* JADX INFO: renamed from: a */
        default float getD() {
            Dp.Companion companion = Dp.f11004c;
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        void c(Density density, int i2, int[] iArr, LayoutDirection layoutDirection, int[] iArr2);
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u00012\u00020\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface HorizontalOrVertical extends Horizontal, Vertical {
        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* JADX INFO: renamed from: a */
        default float getD() {
            Dp.Companion companion = Dp.f11004c;
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;", "Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;", "Landroidx/compose/ui/unit/Dp;", "space", "", "rtlMirror", "Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;", "alignment", "<init>", "(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class SpacedAligned implements HorizontalOrVertical {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f4925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SpacingAlignmentCalculator f4927c;
        public final float d;

        public SpacedAligned(float f2, boolean z, SpacingAlignmentCalculator spacingAlignmentCalculator, DefaultConstructorMarker defaultConstructorMarker) {
            this.f4925a = f2;
            this.f4926b = z;
            this.f4927c = spacingAlignmentCalculator;
            this.d = f2;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* JADX INFO: renamed from: a, reason: from getter */
        public final float getD() {
            return this.d;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public final void b(Density density, int i2, int[] iArr, int[] iArr2) {
            c(density, i2, iArr, LayoutDirection.Ltr, iArr2);
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public final void c(Density density, int i2, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            int i3;
            if (iArr.length == 0) {
                return;
            }
            int iB0 = density.B0(this.f4925a);
            boolean z = this.f4926b && layoutDirection == LayoutDirection.Rtl;
            if (z) {
                int length = iArr.length;
                int i4 = 0;
                int iMin = 0;
                int i5 = 0;
                while (i4 < length) {
                    int iMax = Math.max(0, i2 - iArr[i4]);
                    iArr2[i5] = iMax;
                    iMin = Math.min(iB0, iMax);
                    i2 = iArr2[i5] - iMin;
                    i4++;
                    i5++;
                }
                i3 = i2 + iMin;
            } else {
                int length2 = iArr.length;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (i6 < length2) {
                    int i10 = iArr[i6];
                    int iMin2 = Math.min(i7, i2 - i10);
                    iArr2[i9] = iMin2;
                    int iMin3 = Math.min(iB0, (i2 - iMin2) - i10);
                    int i11 = iArr2[i9] + i10 + iMin3;
                    i6++;
                    i8 = iMin3;
                    i7 = i11;
                    i9++;
                }
                i3 = i2 - (i7 - i8);
            }
            SpacingAlignmentCalculator spacingAlignmentCalculator = this.f4927c;
            if (spacingAlignmentCalculator == null || i3 <= 0) {
                return;
            }
            int iF = spacingAlignmentCalculator.f(i3, layoutDirection);
            if (z) {
                iF -= i3;
            }
            if (iF != 0) {
                int length3 = iArr2.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    iArr2[i12] = iArr2[i12] + iF;
                }
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SpacedAligned)) {
                return false;
            }
            SpacedAligned spacedAligned = (SpacedAligned) obj;
            return Dp.b(this.f4925a, spacedAligned.f4925a) && this.f4926b == spacedAligned.f4926b && Intrinsics.c(this.f4927c, spacedAligned.f4927c);
        }

        public final int hashCode() {
            Dp.Companion companion = Dp.f11004c;
            int iB = o60.b(Float.hashCode(this.f4925a) * 31, 31, this.f4926b);
            SpacingAlignmentCalculator spacingAlignmentCalculator = this.f4927c;
            return iB + (spacingAlignmentCalculator == null ? 0 : spacingAlignmentCalculator.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f4926b ? "" : "Absolute");
            sb.append("Arrangement#spacedAligned(");
            fc.w(this.f4925a, ", ", sb);
            sb.append(this.f4927c);
            sb.append(')');
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface SpacingAlignmentCalculator {
        int f(int i2, LayoutDirection layoutDirection);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/Arrangement$Vertical;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Vertical {
        /* JADX INFO: renamed from: a */
        default float getD() {
            Dp.Companion companion = Dp.f11004c;
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        void b(Density density, int i2, int[] iArr, int[] iArr2);
    }

    static {
        Arrangement$Center$1 arrangement$Center$1 = new Arrangement$Center$1();
        Dp.Companion companion = Dp.f11004c;
        f4921e = arrangement$Center$1;
        f4922f = new Arrangement$SpaceEvenly$1();
        g = new Arrangement$SpaceBetween$1();
    }

    public static void a(int i2, int[] iArr, int[] iArr2, boolean z) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        float f2 = (i2 - i4) / 2.0f;
        if (!z) {
            int length = iArr.length;
            int i6 = 0;
            while (i3 < length) {
                int i7 = iArr[i3];
                iArr2[i6] = Math.round(f2);
                f2 += i7;
                i3++;
                i6++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i8 = iArr[length2];
            iArr2[length2] = Math.round(f2);
            f2 += i8;
        }
    }

    public static void b(int[] iArr, int[] iArr2, boolean z) {
        int i2 = 0;
        if (!z) {
            int length = iArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i2 < length) {
                int i5 = iArr[i2];
                iArr2[i3] = i4;
                i4 += i5;
                i2++;
                i3++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i6 = iArr[length2];
            iArr2[length2] = i2;
            i2 += i6;
        }
    }

    public static void c(int i2, int[] iArr, int[] iArr2, boolean z) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        int i6 = i2 - i4;
        if (!z) {
            int length = iArr.length;
            int i7 = 0;
            while (i3 < length) {
                int i8 = iArr[i3];
                iArr2[i7] = i6;
                i6 += i8;
                i3++;
                i7++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i9 = iArr[length2];
            iArr2[length2] = i6;
            i6 += i9;
        }
    }

    public static void d(int i2, int[] iArr, int[] iArr2, boolean z) {
        if (iArr.length == 0) {
            return;
        }
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        float fMax = (i2 - i4) / Math.max(iArr.length - 1, 1);
        float f2 = (z && iArr.length == 1) ? fMax : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z) {
            for (int length = iArr.length - 1; -1 < length; length--) {
                int i6 = iArr[length];
                iArr2[length] = Math.round(f2);
                f2 += i6 + fMax;
            }
            return;
        }
        int length2 = iArr.length;
        int i7 = 0;
        while (i3 < length2) {
            int i8 = iArr[i3];
            iArr2[i7] = Math.round(f2);
            f2 += i8 + fMax;
            i3++;
            i7++;
        }
    }

    public static void e(int i2, int[] iArr, int[] iArr2, boolean z) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        float length = (i2 - i4) / (iArr.length + 1);
        if (z) {
            float f2 = length;
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i6 = iArr[length2];
                iArr2[length2] = Math.round(f2);
                f2 += i6 + length;
            }
            return;
        }
        int length3 = iArr.length;
        float f3 = length;
        int i7 = 0;
        while (i3 < length3) {
            int i8 = iArr[i3];
            iArr2[i7] = Math.round(f3);
            f3 += i8 + length;
            i3++;
            i7++;
        }
    }

    public static SpacedAligned f(float f2) {
        return new SpacedAligned(f2, true, new v7(16), null);
    }

    public static SpacedAligned g(float f2, Alignment.Vertical vertical) {
        return new SpacedAligned(f2, false, new s3(vertical, 4), null);
    }
}
