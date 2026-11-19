package com.vuitton.android.presentation.screen.cart.components.samples;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import defpackage.aj0;
import defpackage.cj;
import defpackage.kn0;
import defpackage.o60;
import defpackage.rg;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PerfumeSamplesComposableKt {
    public static final void a(final NativeCartViewModel nativeCartViewModel, boolean z, Function0 function0, Composer composer, int i2) {
        String str;
        boolean z2;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1;
        nativeCartViewModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-666509165);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(nativeCartViewModel) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(nativeCartViewModel.getZ(), gapComposerH);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z3 = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new PerfumeSamplesComposableKt$PerfumeSamplesComposable$1$1(nativeCartViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean z4 = ((i3 & 896) == 256) | (i4 == 4);
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new PerfumeSamplesComposableKt$PerfumeSamplesComposable$2$1(nativeCartViewModel, function0, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PerfumeSamplesComposable");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$2 = RectangleShapeKt.f8913a;
            Modifier modifierB = ModifierExtKt.b(BackgroundKt.b(modifierO, j2, rectangleShapeKt$RectangleShape$2), !z, new aj0(19), gapComposerH, 0);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            ScaffoldKt.a(null, ComposableLambdaKt.b(2124179849, new kn0(function0, 0), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1398082846, new Function3() { // from class: com.vuitton.android.presentation.screen.cart.components.samples.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierE = o60.e("PerfumeSamplesComposable$lambda$4$1", paddingValues);
                        List list = ((NativeCartViewState) mutableStateB.getF10755b()).l;
                        NativeCartViewModel nativeCartViewModel2 = nativeCartViewModel;
                        boolean zY = composer2.y(nativeCartViewModel2);
                        Object objX3 = composer2.x();
                        if (zY || objX3 == Composer.Companion.f7939a) {
                            PerfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1 perfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1 = new PerfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1(2, nativeCartViewModel2, NativeCartViewModel.class, "updateSampleState", "updateSampleState(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Z)V", 0);
                            composer2.q(perfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1);
                            objX3 = perfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1;
                        }
                        PerfumeSamplesScreenKt.b(modifierE, list, (Function2) ((KFunction) objX3), composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 805306416, NSType.MAILB);
            gapComposerH = gapComposerH;
            Modifier modifierB2 = BackgroundKt.b(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("PerfumeSamplesComposable"), Alignment.Companion.f8589i), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$2);
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, measurePolicyD2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.panel_apply);
            Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.l(tr.d("PerfumeSamplesComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), "cartSamples_apply_button");
            boolean z5 = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z5 || objX3 == composer$Companion$Empty$1) {
                str = "PerfumeSamplesComposable";
                z2 = true;
                rectangleShapeKt$RectangleShape$1 = rectangleShapeKt$RectangleShape$2;
                objX3 = new PerfumeSamplesComposableKt$PerfumeSamplesComposable$4$3$1$1(0, nativeCartViewModel, NativeCartViewModel.class, "chooseSamples", "chooseSamples()V", 0);
                gapComposerH.q(objX3);
            } else {
                str = "PerfumeSamplesComposable";
                rectangleShapeKt$RectangleShape$1 = rectangleShapeKt$RectangleShape$2;
                z2 = true;
            }
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$3 = rectangleShapeKt$RectangleShape$1;
            boolean z6 = z2;
            LVButtonKt.b(0, 504, gapComposerH, modifierE, configurationButton, null, null, strC, (Function0) ((KFunction) objX3), false, false, false);
            gapComposerH.Z(z6);
            if (((NativeCartViewState) mutableStateB.getF10755b()).d) {
                gapComposerH.L(507303950);
                ProgressViewKt.a(BackgroundKt.b(new DTFunctionNameModifier(str).o(fillElement), Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), rectangleShapeKt$RectangleShape$3), 0L, false, gapComposerH, 0, 6);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(507648949);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(nativeCartViewModel, z, function0, i2, 11);
        }
    }
}
