package androidx.compose.ui.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextMeasurerHelperKt {
    public static final TextMeasurer a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        FontFamily.Resolver resolver = (FontFamily.Resolver) composer.k(CompositionLocalsKt.f10034k);
        Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
        LayoutDirection layoutDirection = (LayoutDirection) composer.k(CompositionLocalsKt.n);
        boolean zK = composer.K(resolver) | composer.K(density) | composer.d(layoutDirection.ordinal()) | composer.d(8);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new TextMeasurer(resolver, density, layoutDirection, 8);
            composer.q(objX);
        }
        return (TextMeasurer) objX;
    }
}
