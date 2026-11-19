package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.d21;
import defpackage.rs;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVPageNumberIndicatorKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48491a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48491a = iArr;
        }
    }

    public static final void a(Modifier modifier, PagerState pagerState, LVColorScheme lVColorScheme, Composer composer, int i2, int i3) {
        int i4;
        long jB;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVPageNumberIndicator");
        }
        pagerState.getClass();
        GapComposer gapComposerH = composer.h(-1160017147);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.K(pagerState) ? 32 : 16) | KyberEngine.KyberPolyBytes;
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("LVPageNumberIndicator");
            }
            lVColorScheme = LVColorScheme.DEFAULT;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(modifier, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            int i7 = WhenMappings.f48491a[lVColorScheme.ordinal()];
            if (i7 == 1) {
                gapComposerH.L(1915032772);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.u);
                gapComposerH.Z(false);
            } else {
                if (i7 != 2) {
                    throw d21.u(gapComposerH, 1915028097, false);
                }
                gapComposerH.L(1915038340);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.y);
                gapComposerH.Z(false);
            }
            Modifier modifierB = BackgroundKt.b(modifierA, jB, RectangleShapeKt.f8913a);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierJ = PaddingKt.j(modifierB, 8.0f, 4.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            CompositionLocalKt.a(CompositionLocalsKt.n.c(LayoutDirection.Ltr), ComposableLambdaKt.b(-1082729397, new rs(pagerState, lVColorScheme, 23), gapComposerH), gapComposerH, 56);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        LVColorScheme lVColorScheme2 = lVColorScheme;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(modifier2, pagerState, lVColorScheme2, i2, i3, 20);
        }
    }
}
