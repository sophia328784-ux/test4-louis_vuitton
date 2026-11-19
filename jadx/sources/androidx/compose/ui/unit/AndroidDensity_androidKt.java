package androidx.compose.ui.unit;

import android.content.Context;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-unit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidDensity_androidKt {
    public static final Density a(Context context) {
        float f2 = context.getResources().getConfiguration().fontScale;
        float f3 = context.getResources().getDisplayMetrics().density;
        FontScaleConverter fontScaleConverterA = FontScaleConverterFactory.a(f2);
        if (fontScaleConverterA == null) {
            fontScaleConverterA = new LinearFontScaleConverter(f2);
        }
        return new DensityWithConverter(f3, f2, fontScaleConverterA);
    }
}
