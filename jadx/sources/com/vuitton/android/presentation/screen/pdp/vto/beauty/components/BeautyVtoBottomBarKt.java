package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyLooksBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.VtoCameraButtonKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.cj;
import defpackage.fe;
import defpackage.n00;
import defpackage.o0;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyVtoBottomBarKt {
    public static final void a(final BeautyVtoViewState beautyVtoViewState, final boolean z, final boolean z2, final TryOnProductUiModel tryOnProductUiModel, final List list, final TryOnProductUiModel tryOnProductUiModel2, final Function1 function1, final Function0 function0, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function1 function8, final Function0 function9, final Function0 function10, Composer composer, int i2) {
        GapComposer gapComposer;
        beautyVtoViewState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        GapComposer gapComposerC = defpackage.a.c(function9, function10, composer, 1419479493);
        Applier applier = gapComposerC.f7976a;
        int i3 = i2 | (gapComposerC.y(beautyVtoViewState) ? 4 : 2) | (gapComposerC.b(z) ? 32 : 16) | (gapComposerC.b(z2) ? 256 : 128) | (gapComposerC.y(tryOnProductUiModel) ? 2048 : 1024) | (gapComposerC.y(list) ? 16384 : 8192) | (gapComposerC.y(tryOnProductUiModel2) ? 131072 : 65536) | (gapComposerC.y(function1) ? 1048576 : 524288) | (gapComposerC.y(function0) ? 8388608 : 4194304) | (gapComposerC.y(function2) ? 67108864 : 33554432) | (gapComposerC.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerC.p(i3 & 1, ((i3 & 306783379) == 306783378 && ((((((3456 | (gapComposerC.y(function4) ? (char) 4 : (char) 2)) | (gapComposerC.y(function5) ? 32 : 16)) | (gapComposerC.y(function8) ? (char) 16384 : (char) 8192)) | (gapComposerC.y(function9) ? (char) 0 : (char) 0)) | (gapComposerC.y(function10) ? (char) 0 : (char) 0)) & 599187) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierD = tr.d("BeautyVtoBottomBar", 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerC, 0);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function11 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function11);
            } else {
                gapComposerC.o();
            }
            Function2 function12 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, columnMeasurePolicyA, function12);
            Function2 function13 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function13);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function14 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function14);
            Function1 function15 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function15);
            Function2 function16 = ComposeUiNode.Companion.d;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.f(n00.e(gapComposerC, modifierC, function16, "BeautyVtoBottomBar", 1.0f), LVAppDesignKitTheme.d(gapComposerC).m), RoundedCornerShapeKt.c(LVAppDesignKitTheme.d(gapComposerC).m, LVAppDesignKitTheme.d(gapComposerC).m, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12)), LVAppDesignKitTheme.c(gapComposerC).f48361b.u, RectangleShapeKt.f8913a);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function11);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, measurePolicyD, function12);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function13);
            cj.t(iHashCode2, gapComposerC, function14, gapComposerC, function15);
            SpacerKt.a(gapComposerC, SizeKt.f(tr.e(gapComposerC, modifierC2, function16, "BeautyVtoBottomBar"), LVAppDesignKitTheme.l(gapComposerC).d));
            gapComposerC.Z(true);
            gapComposer = gapComposerC;
            SurfaceKt.a(tr.d("BeautyVtoBottomBar", 1.0f), null, LVAppDesignKitTheme.c(gapComposerC).f48361b.u, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-1419674412, new Function2() { // from class: ee
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Boolean boolValueOf = Boolean.valueOf(z2);
                        Modifier modifierB2 = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("BeautyVtoBottomBar$lambda$0$1"));
                        Object objX = composer2.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new u5(26);
                            composer2.q(objX);
                        }
                        final BeautyVtoViewState beautyVtoViewState2 = beautyVtoViewState;
                        final TryOnProductUiModel tryOnProductUiModel3 = tryOnProductUiModel;
                        final Function0 function17 = function7;
                        final Function1 function18 = function8;
                        final Function0 function19 = function9;
                        final boolean z3 = z;
                        final List list2 = list;
                        final Function0 function20 = function6;
                        final TryOnProductUiModel tryOnProductUiModel4 = tryOnProductUiModel2;
                        final Function1 function21 = function1;
                        final Function0 function22 = function10;
                        final Context context2 = context;
                        final Function0 function23 = function0;
                        final Function0 function24 = function4;
                        final Function0 function25 = function5;
                        final Function0 function26 = function2;
                        final Function0 function27 = function3;
                        AnimatedContentKt.b(boolValueOf, modifierB2, (Function1) objX, null, "VtoBottomBar switch with LookBottomBar", null, ComposableLambdaKt.b(789846743, new Function4() { // from class: ge
                            /* JADX WARN: Code duplicated, block: B:56:0x0337  */
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj3, Object obj4, Object obj5, Object obj6) {
                                BeautyVtoViewState beautyVtoViewState3;
                                Composer$Companion$Empty$1 composer$Companion$Empty$1;
                                BeautyProductTypeUiModel beautyProductTypeUiModel;
                                Function2 function28;
                                String str;
                                int i4;
                                Composer composer3;
                                int i5;
                                String strB;
                                ColorUiModel colorUiModel;
                                int i6;
                                ColorUiModel colorUiModel2;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2;
                                BeautyVtoMode beautyVtoMode;
                                boolean z4;
                                ConfigurationIconButton configurationIconButton;
                                Composer$Companion$Empty$1 composer$Companion$Empty$3;
                                ConfigurationIconButton configurationIconButton2;
                                boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                                Composer composer4 = (Composer) obj5;
                                ((Integer) obj6).getClass();
                                ((AnimatedContentScope) obj3).getClass();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                BeautyVtoViewState beautyVtoViewState4 = beautyVtoViewState2;
                                TryOnProductUiModel tryOnProductUiModel5 = tryOnProductUiModel3;
                                if (zBooleanValue) {
                                    composer4.L(-1801389909);
                                    BeautyLooksBottomBarKt.a(tryOnProductUiModel5, beautyVtoViewState4.s, function17, function18, function19, composer4, 0);
                                    composer4.F();
                                } else {
                                    DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-1800746473, composer4, "BeautyVtoBottomBar$lambda$0$1$1");
                                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer4, 0);
                                    int iHashCode3 = Long.hashCode(composer4.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer4.n();
                                    Modifier modifierC3 = ComposedModifierKt.c(composer4, dTFunctionNameModifierJ);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function29 = ComposeUiNode.Companion.f9641b;
                                    if (composer4.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer4.B();
                                    if (composer4.getS()) {
                                        composer4.C(function29);
                                    } else {
                                        composer4.o();
                                    }
                                    Function2 function30 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer4, columnMeasurePolicyA2, function30);
                                    Function2 function31 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer4, persistentCompositionLocalMapN, function31);
                                    Integer numValueOf2 = Integer.valueOf(iHashCode3);
                                    Function2 function32 = ComposeUiNode.Companion.g;
                                    Updater.c(composer4, numValueOf2, function32);
                                    Function1 function33 = ComposeUiNode.Companion.f9645h;
                                    Updater.b(composer4, function33);
                                    Function2 function34 = ComposeUiNode.Companion.d;
                                    Updater.c(composer4, modifierC3, function34);
                                    Modifier modifierD2 = tr.d("BeautyVtoBottomBar$lambda$0$1$1", 1.0f);
                                    EnterTransition enterTransitionD = EnterExitTransitionKt.d(AnimationSpecKt.c(500, 0, null, 6), null, null, 14);
                                    ExitTransition exitTransitionN = EnterExitTransitionKt.n(AnimationSpecKt.c(500, 0, null, 6), null, null, 14);
                                    final List list3 = list2;
                                    final Function0 function35 = function20;
                                    final TryOnProductUiModel tryOnProductUiModel6 = tryOnProductUiModel4;
                                    final Function1 function36 = function21;
                                    final Function0 function37 = function22;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(44990629, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.a
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj7, Object obj8, Object obj9) {
                                            Composer composer5 = (Composer) obj8;
                                            ((Integer) obj9).getClass();
                                            ((AnimatedVisibilityScope) obj7).getClass();
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            List list4 = list3;
                                            if (list4 == null) {
                                                composer5.L(286132535);
                                                composer5.F();
                                            } else {
                                                Modifier modifierB3 = BackgroundKt.b(pq0.h(1.0f, 286132536, composer5, "BeautyVtoBottomBar$lambda$0$1$1$0$0"), LVAppDesignKitTheme.c(composer5).f48361b.u, RectangleShapeKt.f8913a);
                                                Unit unit = Unit.f71739a;
                                                final Function0 function38 = function35;
                                                boolean zK = composer5.K(function38);
                                                Object objX2 = composer5.x();
                                                if (zK || objX2 == Composer.Companion.f7939a) {
                                                    objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoBottomBarKt$BeautyVtoBottomBar$1$2$2$1$1$1$1$1
                                                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                            Object objF = DragGestureDetectorKt.f(pointerInputScope, null, new o0(function38, 15), continuation, 7);
                                                            return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                                                        }
                                                    };
                                                    composer5.q(objX2);
                                                }
                                                Modifier modifierA = SuspendingPointerInputFilterKt.a(modifierB3, unit, (PointerInputEventHandler) objX2);
                                                Alignment.f8582a.getClass();
                                                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer5, 48);
                                                int iHashCode4 = Long.hashCode(composer5.getT());
                                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer5.n();
                                                Modifier modifierC4 = ComposedModifierKt.c(composer5, modifierA);
                                                ComposeUiNode.b0.getClass();
                                                Function0 function39 = ComposeUiNode.Companion.f9641b;
                                                if (composer5.getF7976a() == null) {
                                                    ComposablesKt.b();
                                                    throw null;
                                                }
                                                composer5.B();
                                                if (composer5.getS()) {
                                                    composer5.C(function39);
                                                } else {
                                                    composer5.o();
                                                }
                                                Updater.c(composer5, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                                                Updater.c(composer5, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                                                Updater.c(composer5, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                                                Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                                                Updater.c(composer5, modifierC4, ComposeUiNode.Companion.d);
                                                BeautyVtoScreenKt.b(null, composer5, 0);
                                                BeautyColorSelectorKt.a(PaddingKt.m(SizeKt.d(new DTFunctionNameModifier("BeautyVtoBottomBar$lambda$0$1$1$0$0"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), list4, tryOnProductUiModel6, null, function36, null, null, function37, composer5, 0, 104);
                                                composer5.r();
                                                composer5.F();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer4);
                                    Function1 function38 = function33;
                                    Function2 function39 = function32;
                                    Function0 function40 = function29;
                                    Function2 function41 = function31;
                                    AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z3, modifierD2, enterTransitionD, exitTransitionN, "Dual color slider animation", composableLambdaImplB, composer4, 1797510, 0);
                                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("BeautyVtoBottomBar$lambda$0$1$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48417f, 7);
                                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4922f, Alignment.Companion.l, composer4, 54);
                                    int iHashCode4 = Long.hashCode(composer4.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer4.n();
                                    Modifier modifierC4 = ComposedModifierKt.c(composer4, modifierM);
                                    if (composer4.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer4.B();
                                    if (composer4.getS()) {
                                        composer4.C(function40);
                                    } else {
                                        composer4.o();
                                    }
                                    Updater.c(composer4, rowMeasurePolicyA, function30);
                                    Updater.c(composer4, persistentCompositionLocalMapN2, function41);
                                    cj.s(iHashCode4, composer4, function39, composer4, function38);
                                    Function2 function42 = function34;
                                    Updater.c(composer4, modifierC4, function42);
                                    float f2 = ((Configuration) composer4.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
                                    Dp.Companion companion = Dp.f11004c;
                                    Object objX2 = composer4.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                                    if (objX2 == composer$Companion$Empty$4) {
                                        objX2 = new Dp((f2 - BeautyVtoScreenKt.f62031a) / 2.0f);
                                        composer4.q(objX2);
                                    }
                                    float f3 = ((Dp) objX2).f11006b;
                                    Modifier modifierS = SizeKt.s(new DTFunctionNameModifier("BeautyVtoBottomBar$lambda$0$1$1"), f3);
                                    Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                                    BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Center$1, vertical, composer4, 6);
                                    int iHashCode5 = Long.hashCode(composer4.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer4.n();
                                    Modifier modifierC5 = ComposedModifierKt.c(composer4, modifierS);
                                    if (composer4.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer4.B();
                                    if (composer4.getS()) {
                                        composer4.C(function40);
                                    } else {
                                        composer4.o();
                                    }
                                    Updater.c(composer4, rowMeasurePolicyA2, function30);
                                    Updater.c(composer4, persistentCompositionLocalMapN3, function41);
                                    cj.s(iHashCode5, composer4, function39, composer4, function38);
                                    Updater.c(composer4, modifierC5, function42);
                                    TryOnProductUiModel tryOnProductUiModel7 = beautyVtoViewState4.f62155i;
                                    boolean z5 = beautyVtoViewState4.f62157k;
                                    BeautyVtoMode beautyVtoMode2 = beautyVtoViewState4.f62149a;
                                    float f4 = f3;
                                    BeautyProductTypeUiModel beautyProductTypeUiModel2 = tryOnProductUiModel7 != null ? tryOnProductUiModel7.f62185c : null;
                                    BiasAlignment.Vertical vertical2 = vertical;
                                    BeautyProductTypeUiModel beautyProductTypeUiModel3 = BeautyProductTypeUiModel.NONE;
                                    TryOnProductUiModel tryOnProductUiModel8 = tryOnProductUiModel7;
                                    if (beautyProductTypeUiModel2 != beautyProductTypeUiModel3) {
                                        composer4.L(-996837615);
                                        if (beautyVtoViewState4.y) {
                                            composer4.L(-996762378);
                                            if (beautyVtoMode2 == BeautyVtoMode.STACKING) {
                                                composer4.L(-996654560);
                                                configurationIconButton2 = LVAppDesignKitTheme.f(composer4).f48478b;
                                                composer4.F();
                                            } else {
                                                composer4.L(-996508674);
                                                configurationIconButton2 = LVAppDesignKitTheme.f(composer4).d;
                                                composer4.F();
                                            }
                                            int i7 = LVAppDesignKitTheme.g(composer4).m1;
                                            String strC = StringResources_androidKt.c(composer4, R.string.alt_vto_try);
                                            function28 = function30;
                                            composer3 = composer4;
                                            composer$Companion$Empty$2 = composer$Companion$Empty$4;
                                            beautyProductTypeUiModel = beautyProductTypeUiModel3;
                                            beautyVtoMode = beautyVtoMode2;
                                            z4 = true;
                                            i4 = 0;
                                            LVIconButtonKt.b(null, configurationIconButton2, i7, new Dp(IconSize.f48349c), strC, false, 0, false, false, function24, composer3, 0, 0, 993);
                                            composer3.F();
                                        } else {
                                            composer$Companion$Empty$2 = composer$Companion$Empty$4;
                                            beautyProductTypeUiModel = beautyProductTypeUiModel3;
                                            beautyVtoMode = beautyVtoMode2;
                                            function28 = function30;
                                            z4 = true;
                                            i4 = 0;
                                            composer3.L(-995964531);
                                            composer3.F();
                                        }
                                        if (tryOnProductUiModel8 != 0) {
                                            composer3 = composer4;
                                            if (tryOnProductUiModel8.f62186e == z4) {
                                                Modifier modifierM2 = PaddingKt.m(pq0.j(-995792357, composer3, "BeautyVtoBottomBar$lambda$0$1$1"), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                                if (beautyVtoMode == BeautyVtoMode.DUAL) {
                                                    composer3.L(-995579232);
                                                    configurationIconButton = LVAppDesignKitTheme.f(composer3).f48478b;
                                                    composer3.F();
                                                } else {
                                                    composer3.L(-995433346);
                                                    configurationIconButton = LVAppDesignKitTheme.f(composer3).d;
                                                    composer3.F();
                                                }
                                                int i8 = LVAppDesignKitTheme.g(composer3).C0;
                                                String strC2 = StringResources_androidKt.c(composer3, R.string.alt_vto_compare);
                                                Dp dp = new Dp(IconSize.f48349c);
                                                boolean zY = composer3.y(beautyVtoViewState4);
                                                Function0 function43 = function25;
                                                boolean zK = zY | composer3.K(function43);
                                                Object objX3 = composer3.x();
                                                if (zK) {
                                                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                                                } else {
                                                    composer$Companion$Empty$3 = composer$Companion$Empty$2;
                                                    if (objX3 == composer$Companion$Empty$3) {
                                                    }
                                                    str = "BeautyVtoBottomBar$lambda$0$1$1";
                                                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                                                    beautyVtoViewState3 = beautyVtoViewState4;
                                                    LVIconButtonKt.b(modifierM2, configurationIconButton, i8, dp, strC2, false, 0, false, false, (Function0) objX3, composer3, i4, 0, 992);
                                                    composer3.F();
                                                }
                                                objX3 = new l0((Object) beautyVtoViewState4, function43, 23);
                                                composer3.q(objX3);
                                                str = "BeautyVtoBottomBar$lambda$0$1$1";
                                                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                                                beautyVtoViewState3 = beautyVtoViewState4;
                                                LVIconButtonKt.b(modifierM2, configurationIconButton, i8, dp, strC2, false, 0, false, false, (Function0) objX3, composer3, i4, 0, 992);
                                                composer3.F();
                                            } else {
                                                composer3 = composer4;
                                                beautyVtoViewState3 = r5;
                                                str = r19;
                                                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                                composer3.L(-994661043);
                                                composer3.F();
                                            }
                                        } else {
                                            composer3 = composer4;
                                            beautyVtoViewState3 = r5;
                                            str = r19;
                                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                            composer3.L(-994661043);
                                            composer3.F();
                                        }
                                        composer3.F();
                                    } else {
                                        vertical2 = vertical2;
                                        function39 = function39;
                                        function38 = function38;
                                        function41 = function41;
                                        function42 = function42;
                                        beautyVtoViewState3 = beautyVtoViewState4;
                                        composer$Companion$Empty$1 = composer$Companion$Empty$4;
                                        beautyProductTypeUiModel = beautyProductTypeUiModel3;
                                        z5 = z5;
                                        function40 = function40;
                                        function28 = function30;
                                        f4 = f4;
                                        tryOnProductUiModel8 = tryOnProductUiModel8;
                                        str = "BeautyVtoBottomBar$lambda$0$1$1";
                                        i4 = 0;
                                        this = this;
                                        arrangement$Center$1 = arrangement$Center$1;
                                        composer3 = composer4;
                                        composer3.L(-994627315);
                                        composer3.F();
                                    }
                                    composer3.r();
                                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier(str), BeautyVtoScreenKt.f62031a);
                                    Context context3 = context2;
                                    boolean zY2 = composer3.y(context3);
                                    Function0 function44 = function23;
                                    boolean zK2 = zY2 | composer3.K(function44);
                                    Object objX4 = composer3.x();
                                    if (zK2 || objX4 == composer$Companion$Empty$1) {
                                        objX4 = new j3(context3, function44, 1);
                                        composer3.q(objX4);
                                    }
                                    VtoCameraButtonKt.a(0, composer3, SemanticsModifierKt.b(modifierO, false, (Function1) objX4), function44, false);
                                    Modifier modifierS2 = SizeKt.s(new DTFunctionNameModifier(str), f4);
                                    RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Center$1, vertical2, composer3, 6);
                                    int iHashCode6 = Long.hashCode(composer3.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer3.n();
                                    Modifier modifierC6 = ComposedModifierKt.c(composer3, modifierS2);
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function40);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, rowMeasurePolicyA3, function28);
                                    Updater.c(composer3, persistentCompositionLocalMapN4, function41);
                                    cj.s(iHashCode6, composer3, function39, composer3, function38);
                                    Updater.c(composer3, modifierC6, function42);
                                    if ((tryOnProductUiModel8 != null ? tryOnProductUiModel8.f62185c : null) != beautyProductTypeUiModel) {
                                        composer3.L(38962035);
                                        ConfigurationIconButton configurationIconButton3 = LVAppDesignKitTheme.f(composer3).d;
                                        if (z5) {
                                            composer3.L(39117252);
                                            i5 = LVAppDesignKitTheme.g(composer3).V;
                                            composer3.F();
                                        } else {
                                            composer3.L(39249994);
                                            i5 = LVAppDesignKitTheme.g(composer3).U;
                                            composer3.F();
                                        }
                                        int i9 = i5;
                                        if (z5) {
                                            composer3.L(39507387);
                                            String str2 = (tryOnProductUiModel5 == null || (colorUiModel2 = tryOnProductUiModel5.g) == null) ? null : colorUiModel2.f62159a;
                                            strB = StringResources_androidKt.b(R.string.alt_remove_from_wishlist, new Object[]{str2 != null ? str2 : ""}, composer3);
                                            composer3.F();
                                        } else {
                                            composer3.L(39839552);
                                            String str3 = (tryOnProductUiModel5 == null || (colorUiModel = tryOnProductUiModel5.g) == null) ? null : colorUiModel.f62159a;
                                            strB = StringResources_androidKt.b(R.string.alt_add_to_wishlist, new Object[]{str3 != null ? str3 : ""}, composer3);
                                            composer3.F();
                                        }
                                        String str4 = strB;
                                        float f5 = IconSize.f48349c;
                                        LVIconButtonKt.b(null, configurationIconButton3, i9, new Dp(f5), str4, false, 0, false, false, function26, composer3, i4, 0, 993);
                                        BeautyVtoViewState beautyVtoViewState5 = beautyVtoViewState3;
                                        if (beautyVtoViewState5.u.f62137b) {
                                            Modifier modifierM3 = PaddingKt.m(pq0.j(40477222, composer3, str), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                            ConfigurationIconButton configurationIconButton4 = LVAppDesignKitTheme.f(composer3).d;
                                            if (beautyVtoViewState5.f62154h) {
                                                composer3.L(40780216);
                                                i6 = LVAppDesignKitTheme.a(composer3).y;
                                                composer3.F();
                                            } else {
                                                composer3.L(40924614);
                                                i6 = LVAppDesignKitTheme.g(composer3).F0;
                                                composer3.F();
                                            }
                                            LVIconButtonKt.b(modifierM3, configurationIconButton4, i6, new Dp(f5), StringResources_androidKt.c(composer3, R.string.alt_add_to_cart), false, 0, false, false, function27, composer3, i4, 0, 992);
                                            composer3.F();
                                        } else {
                                            composer3.L(41374052);
                                            composer3.F();
                                        }
                                        composer3.F();
                                    } else {
                                        composer3.L(41407780);
                                        composer3.F();
                                    }
                                    composer3.r();
                                    composer3.r();
                                    composer3.r();
                                    composer3.F();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1597824, 40);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 12582918, 122);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fe(beautyVtoViewState, z, z2, tryOnProductUiModel, list, tryOnProductUiModel2, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, i2);
        }
    }
}
