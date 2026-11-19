package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/unit/FontScaling;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FontScaling {
    default long Q(float f2) {
        float[] fArr = FontScaleConverterFactory.f11031a;
        if (getF11003c() < 1.03f) {
            return TextUnitKt.d(f2 / getF11003c(), 4294967296L);
        }
        FontScaleConverter fontScaleConverterA = FontScaleConverterFactory.a(getF11003c());
        return TextUnitKt.d(fontScaleConverterA != null ? fontScaleConverterA.a(f2) : f2 / getF11003c(), 4294967296L);
    }

    default float Z(long j2) {
        long jB = TextUnit.b(j2);
        TextUnitType.f11026b.getClass();
        if (!TextUnitType.a(jB, TextUnitType.f11027c)) {
            InlineClassHelperKt.b("Only Sp can convert to Px");
        }
        float[] fArr = FontScaleConverterFactory.f11031a;
        if (getF11003c() < 1.03f) {
            float fS1 = getF11003c() * TextUnit.c(j2);
            Dp.Companion companion = Dp.f11004c;
            return fS1;
        }
        FontScaleConverter fontScaleConverterA = FontScaleConverterFactory.a(getF11003c());
        if (fontScaleConverterA != null) {
            float fB = fontScaleConverterA.b(TextUnit.c(j2));
            Dp.Companion companion2 = Dp.f11004c;
            return fB;
        }
        float fS2 = getF11003c() * TextUnit.c(j2);
        Dp.Companion companion3 = Dp.f11004c;
        return fS2;
    }

    /* JADX INFO: renamed from: s1 */
    float getF11003c();
}
