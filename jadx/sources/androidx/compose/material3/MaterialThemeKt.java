package androidx.compose.material3;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import defpackage.b3;
import defpackage.fa0;
import defpackage.sw;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class MaterialThemeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f7017a;

    static {
        new StaticProvidableCompositionLocal(new fa0(15));
        f7017a = new StaticProvidableCompositionLocal(new j());
    }

    public static final void a(ColorScheme colorScheme, MotionScheme motionScheme, Shapes shapes, final Typography typography, final Function2 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(904511636);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(colorScheme) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(motionScheme) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(shapes) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(typography) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            IndicationNodeFactory indicationNodeFactoryA = RippleKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, false);
            long j2 = colorScheme.f6662a;
            boolean zE = gapComposerH.e(j2);
            Object objX = gapComposerH.x();
            if (zE || objX == Composer.Companion.f7939a) {
                TextSelectionColors textSelectionColors = new TextSelectionColors(j2, Color.b(0.4f, j2), null);
                gapComposerH.q(textSelectionColors);
                objX = textSelectionColors;
            }
            CompositionLocalKt.b(new ProvidedValue[]{ColorSchemeKt.f6671a.c(colorScheme), f7017a.c(motionScheme), IndicationKt.f4231a.c(indicationNodeFactoryA), ShapesKt.f7199a.c(shapes), TextSelectionColorsKt.f6503a.c((TextSelectionColors) objX), TypographyKt.f7451a.c(typography)}, ComposableLambdaKt.b(-1750539308, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MaterialThemeKt$MaterialTheme$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        TextKt.a(typography.f7449j, function2, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(colorScheme, motionScheme, shapes, typography, function2, i2, 14, false);
        }
    }

    public static final void b(ColorScheme colorScheme, Shapes shapes, Typography typography, Function2 function2, Composer composer, int i2, int i3) {
        int i4;
        ColorScheme colorScheme2;
        Shapes shapes2;
        Typography typography2;
        int i5;
        GapComposer gapComposerH = composer.h(-449719819);
        if ((i2 & 6) == 0) {
            i4 = (((i3 & 1) == 0 && gapComposerH.K(colorScheme)) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= ((i3 & 4) == 0 && gapComposerH.K(typography)) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if ((i3 & 1) != 0) {
                    colorScheme = MaterialTheme.a(gapComposerH);
                    i4 &= -15;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                shapes = (Shapes) gapComposerH.k(ShapesKt.f7199a);
                i5 = i4 & (-113);
                if ((i3 & 4) != 0) {
                    typography = MaterialTheme.b(gapComposerH);
                    i5 = i4 & (-1009);
                }
            } else {
                gapComposerH.D();
                if ((i3 & 1) != 0) {
                    i4 &= -15;
                }
                i5 = i4 & (-113);
                if ((i3 & 4) != 0) {
                    i5 = i4 & (-1009);
                }
            }
            ColorScheme colorScheme3 = colorScheme;
            Shapes shapes3 = shapes;
            Typography typography3 = typography;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int i6 = i5 << 3;
            a(colorScheme3, (MotionScheme) gapComposerH.k(f7017a), shapes3, typography3, function2, gapComposerH, (i5 & 14) | (i6 & 7168) | (i6 & 57344));
            colorScheme2 = colorScheme3;
            shapes2 = shapes3;
            typography2 = typography3;
        } else {
            gapComposerH.D();
            colorScheme2 = colorScheme;
            shapes2 = shapes;
            typography2 = typography;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(colorScheme2, shapes2, typography2, function2, i2, i3, 2);
        }
    }
}
