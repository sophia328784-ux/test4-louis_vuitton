package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationColorDot;
import defpackage.k40;
import defpackage.yd;
import kotlin.Metadata;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVColorDotIconKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48469a = new StaticProvidableCompositionLocal(new k40(11));

    public static final void a(ConfigurationColorDot configurationColorDot, Modifier modifier, float f2, Composer composer, int i2) {
        Modifier modifierA;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVColorDotIcon-6a0pyJM");
        }
        configurationColorDot.getClass();
        long j2 = configurationColorDot.f48549a;
        GapComposer gapComposerH = composer.h(1957368831);
        int i3 = (gapComposerH.K(configurationColorDot) ? 4 : 2) | i2 | (gapComposerH.K(modifier) ? 32 : 16) | KyberEngine.KyberPolyBytes;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            Dp.Companion companion = Dp.f11004c;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = configurationColorDot.f48550b;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            if (z) {
                gapComposerH.L(-795946694);
                modifierA = BackgroundKt.b(ClipKt.a(SizeKt.o(modifier, LVAppDesignKitTheme.d(gapComposerH).f48388h), RoundedCornerShapeKt.f5846a), j2, rectangleShapeKt$RectangleShape$1);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-795768382);
                Modifier modifierO = SizeKt.o(modifier, LVAppDesignKitTheme.d(gapComposerH).f48388h);
                RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
                Modifier modifierA2 = ClipKt.a(modifierO, roundedCornerShape);
                Color.f8866b.getClass();
                modifierA = BorderKt.a(BackgroundKt.b(modifierA2, Color.f8870h, rectangleShapeKt$RectangleShape$1), 1.5f, j2, roundedCornerShape);
                gapComposerH.Z(false);
            }
            BoxKt.a(modifierA, gapComposerH, 0);
            f2 = 1.5f;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yd(configurationColorDot, modifier, f2, i2);
        }
    }
}
