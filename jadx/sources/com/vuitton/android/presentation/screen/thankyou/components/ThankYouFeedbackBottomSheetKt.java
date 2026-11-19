package com.vuitton.android.presentation.screen.thankyou.components;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import defpackage.e31;
import defpackage.h3;
import defpackage.yj0;
import defpackage.ys0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThankYouFeedbackBottomSheetKt {
    public static final void a(Modifier modifier, int i2, boolean z, Composer composer, int i3) {
        GapComposer gapComposer;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RateCell");
        }
        GapComposer gapComposerH = composer.h(-116642242);
        int i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i3 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = SizeKt.o(BorderKt.a(ModifierExtKt.b(modifierE, z, new e31(1), gapComposerH, ((i4 >> 3) & 112) | (i4 & 14)), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.d(gapComposerH).w);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            String strValueOf = String.valueOf(i2);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            if (z) {
                gapComposerH.L(1510977356);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            } else {
                gapComposerH.L(1510979174);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            }
            gapComposerH.Z(false);
            TextKt.c(strValueOf, null, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131066);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h3(modifierE, i2, z, i3);
        }
    }

    public static final void b(ThankYouFeedbackUiModel thankYouFeedbackUiModel, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        thankYouFeedbackUiModel.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1732092248);
        int i3 = i2 | (gapComposerH.K(thankYouFeedbackUiModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), function2, null, null, 0L, false, null, ComposableLambdaKt.b(-306668238, new yj0(thankYouFeedbackUiModel, function1, function0, 13), gapComposerH), gapComposerH, ((i3 >> 3) & 896) | 100663296, NSType.TKEY);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ys0(thankYouFeedbackUiModel, function1, function0, function2, i2, 5);
        }
    }
}
