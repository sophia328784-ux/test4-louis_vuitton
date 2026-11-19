package androidx.compose.ui.unit.fontscaling;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;", "Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;", "", "fromSp", "toDp", "<init>", "([F[F)V", "Companion", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FontScaleConverterTable implements FontScaleConverter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f11034c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f11035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f11036b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final float a(Companion companion, float f2, float[] fArr, float[] fArr2) {
            float f3;
            float f4;
            float f5;
            float f6;
            companion.getClass();
            float fAbs = Math.abs(f2);
            float fSignum = Math.signum(f2);
            int iBinarySearch = Arrays.binarySearch(fArr, fAbs);
            if (iBinarySearch >= 0) {
                return fSignum * fArr2[iBinarySearch];
            }
            int i2 = -(iBinarySearch + 1);
            int i3 = i2 - 1;
            if (i3 >= fArr.length - 1) {
                float f7 = fArr[fArr.length - 1];
                return f7 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Call.Parameters.DEFAULT_CAMERA_ZOOM : (fArr2[fArr.length - 1] / f7) * f2;
            }
            if (i3 == -1) {
                float f8 = fArr[0];
                f5 = fArr2[0];
                f6 = f8;
                f4 = 0.0f;
                f3 = 0.0f;
            } else {
                float f9 = fArr[i3];
                float f10 = fArr[i2];
                f3 = fArr2[i3];
                f4 = f9;
                f5 = fArr2[i2];
                f6 = f10;
            }
            return (((f5 - f3) * Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, f4 == f6 ? 0.0f : (fAbs - f4) / (f6 - f4)))) + f3) * fSignum;
        }
    }

    public FontScaleConverterTable(float[] fArr, float[] fArr2) {
        if (fArr.length != fArr2.length || fArr.length == 0) {
            md.n("Array lengths must match and be nonzero");
            throw null;
        }
        this.f11035a = fArr;
        this.f11036b = fArr2;
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float a(float f2) {
        return Companion.a(f11034c, f2, this.f11036b, this.f11035a);
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float b(float f2) {
        return Companion.a(f11034c, f2, this.f11035a, this.f11036b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof FontScaleConverterTable)) {
            return false;
        }
        FontScaleConverterTable fontScaleConverterTable = (FontScaleConverterTable) obj;
        return Arrays.equals(this.f11035a, fontScaleConverterTable.f11035a) && Arrays.equals(this.f11036b, fontScaleConverterTable.f11036b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f11036b) + (Arrays.hashCode(this.f11035a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FontScaleConverter{fromSpValues=");
        String string = Arrays.toString(this.f11035a);
        string.getClass();
        sb.append(string);
        sb.append(", toDpValues=");
        String string2 = Arrays.toString(this.f11036b);
        string2.getClass();
        sb.append(string2);
        sb.append('}');
        return sb.toString();
    }
}
