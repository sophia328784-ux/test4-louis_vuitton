package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/unit/FontScaling;", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Density extends FontScaling {
    default int B0(float f2) {
        float fU1 = u1(f2);
        if (Float.isInfinite(fU1)) {
            return Integer.MAX_VALUE;
        }
        return Math.round(fU1);
    }

    default float E0(long j2) {
        long jB = TextUnit.b(j2);
        TextUnitType.f11026b.getClass();
        if (!TextUnitType.a(jB, TextUnitType.f11027c)) {
            InlineClassHelperKt.b("Only Sp can convert to Px");
        }
        return u1(Z(j2));
    }

    default long K1(long j2) {
        if (j2 == 9205357640488583168L) {
            Size.f8820b.getClass();
            return Size.f8821c;
        }
        float fU1 = u1(DpSize.b(j2));
        float fU2 = u1(DpSize.a(j2));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fU1)) << 32) | (((long) Float.floatToRawIntBits(fU2)) & BodyPartID.bodyIdMax);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }

    default long R(long j2) {
        if (j2 != 9205357640488583168L) {
            return DpKt.a(l1(Float.intBitsToFloat((int) (j2 >> 32))), l1(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))));
        }
        DpSize.f11009b.getClass();
        return DpSize.f11010c;
    }

    float getDensity();

    default long j0(float f2) {
        return Q(l1(f2));
    }

    default float k1(int i2) {
        float density = i2 / getDensity();
        Dp.Companion companion = Dp.f11004c;
        return density;
    }

    default float l1(float f2) {
        float density = f2 / getDensity();
        Dp.Companion companion = Dp.f11004c;
        return density;
    }

    default float u1(float f2) {
        return getDensity() * f2;
    }
}
