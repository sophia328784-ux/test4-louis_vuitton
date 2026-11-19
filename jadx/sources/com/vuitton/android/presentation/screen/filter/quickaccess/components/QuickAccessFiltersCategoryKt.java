package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.c80;
import defpackage.n00;
import defpackage.sq0;
import defpackage.xq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QuickAccessFiltersCategoryKt {
    public static final void a(Modifier modifier, String str, boolean z, Function0 function0, Composer composer, int i2) {
        long j2;
        TextStyle textStyle;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "QuickAccessFiltersCategory");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1445803518);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new sq0(function0, 2);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifier2, false, null, null, (Function0) objX, 31);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            Modifier modifierB = com.vuitton.android.designkit.components.ModifierExtKt.b(PaddingKt.i(BoxScopeInstance.f4938a.g(n00.g("QuickAccessFiltersCategory", "QAF_FilterCategoryName_text"), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposerH).f48415c), !z, new xq0(0, (byte) 0), gapComposerH, 0);
            if (z) {
                gapComposerH.L(1616132659);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1616220916);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            }
            if (z) {
                gapComposerH.L(1616339739);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).f48430k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1616420122);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                gapComposerH.Z(false);
            }
            TextKt.c(str, modifierB, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c80(modifier2, str, z, function0, i2, 1);
        }
    }
}
