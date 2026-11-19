package com.vuitton.android.presentation.screen.distantrepairs.form.formsections;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.cj;
import defpackage.h1;
import defpackage.n00;
import defpackage.o60;
import defpackage.s;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairEligibilityCardComponentKt {
    public static final void a(int i2, Composer composer, Modifier modifier, Function0 function0) {
        Function0 function1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "DistantRepairEligibilityCardComponent");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(-250399605);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DistantRepairEligibilityCardComponent");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(dTFunctionNameModifier, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierI = PaddingKt.i(ClipKt.a(BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            boolean z = (i3 & 112) == 32;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new h1(function0, 23);
                gapComposerH.q(objX);
            }
            Modifier modifierE2 = ModifierExtKt.e(ModifierExtKt.c(modifierI, false, null, null, (Function0) objX, 27), "careservicesForm_eligibleProductBloc_view");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierB = BackgroundKt.b(tr.e(gapComposerH, modifierC, function7, "DistantRepairEligibilityCardComponent"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function1 = function2;
                gapComposerH.C(function1);
            } else {
                function1 = function2;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48398i, gapComposerH, 0), null, ModifierExtKt.e(PaddingKt.i(BackgroundKt.b(ClipKt.a(SizeKt.o(new DTFunctionNameModifier("DistantRepairEligibilityCardComponent"), LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).d), "careservicesForm_eligibleProductBloc_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            Modifier modifierB2 = cj.b("DistantRepairEligibilityCardComponent", RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_eligibility_card_title), n00.g("DistantRepairEligibilityCardComponent", "careservicesForm_eligibleProductBlocTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_eligibility_card_top_message), n00.g("DistantRepairEligibilityCardComponent", "careservicesForm_eligibleProductBlocDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, ModifierExtKt.e(SizeKt.o(o60.f(gapComposerH, true, "DistantRepairEligibilityCardComponent"), LVAppDesignKitTheme.d(gapComposerH).o), "careservicesForm_eligibleProductBlocArrow_button"), 0L, gapComposerH, 56, 8);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new s(modifierE, function0, i2, 2);
        }
    }
}
