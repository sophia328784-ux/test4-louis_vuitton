package com.vuitton.android.presentation.screen.booking.summary.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import defpackage.pm;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SummaryStickyBottomViewKt {
    public static final void a(final int i2, int i3, Composer composer, Modifier modifier, final String str, final Function0 function0, boolean z) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SummaryStickyBottomView");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(1899138955);
        int i4 = i3 | 6 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SummaryStickyBottomView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            AnimatedVisibilityKt.e(z, dTFunctionNameModifier, EnterExitTransitionKt.d(null, Alignment.Companion.f8591k, null, 13).b(EnterExitTransitionKt.f(null, 0.3f, 1)), EnterExitTransitionKt.n(null, null, null, 15).b(EnterExitTransitionKt.h(null, 3)), null, ComposableLambdaKt.b(1227739235, new Function3() { // from class: c21
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierJ = PaddingKt.j(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("SummaryStickyBottomView$lambda$0"), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a)), LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48416e);
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e), vertical, composer2, 48);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierJ);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, rowMeasurePolicyA, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function4);
                    Function1 function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function5);
                    Function2 function6 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC, function6);
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    Modifier modifierB = cj.b("SummaryStickyBottomView$lambda$0", rowScopeInstance, 0.5f, true);
                    Object objX = composer2.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new l01(19);
                        composer2.q(objX);
                    }
                    Modifier modifierB2 = SemanticsModifierKt.b(modifierB, true, (Function1) objX);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer2, 0);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB2);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, function2);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer2, function4, composer2, function5);
                    Modifier modifierM = PaddingKt.m(a.f(composer2, modifierC2, function6, "SummaryStickyBottomView$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48414b, 7);
                    TextKt.c(PluralStringResourceHelperKt.b(R.plurals.booking_experiences_counter, composer2, i2), modifierM, LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).l, composer2, 0, 0, 131064);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48428i;
                    TextKt.c(str, null, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, composer2, 0, 0, 131066);
                    composer2.r();
                    LVButtonKt.b(0, 504, composer2, cj.b("SummaryStickyBottomView$lambda$0", rowScopeInstance, 0.5f, true), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.booking_form_cta_label), function0, false, false, false);
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i4 >> 3) & 14) | 200112, 16);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pm(modifier2, z, i2, str, function0, i3);
        }
    }
}
