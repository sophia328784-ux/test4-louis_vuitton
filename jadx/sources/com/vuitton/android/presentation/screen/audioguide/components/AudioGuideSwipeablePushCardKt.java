package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
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
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.cj;
import defpackage.h1;
import defpackage.n00;
import defpackage.o60;
import defpackage.sa;
import defpackage.ta;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideSwipeablePushCardKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, long j2, long j3, long j4, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioGuideSwipeablePushCard-JIo3BtE");
        }
        str2.getClass();
        GapComposer gapComposerH = composer.h(-1980844444);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.K(str3) ? 2048 : 1024) | (gapComposerH.e(j2) ? 16384 : 8192) | (gapComposerH.e(j3) ? 131072 : 65536) | (gapComposerH.e(j4) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX2);
            }
            final Animatable animatable = (Animatable) objX2;
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            boolean zY = gapComposerH.y(animatable);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new sa(animatable, 0);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = BackgroundKt.b(ClipKt.a(OffsetKt.a(modifierD, (Function1) objX3), LVAppDesignKitTheme.j(gapComposerH).f48411c), j4, RectangleShapeKt.f8913a);
            boolean z = (i3 & 29360128) == 8388608;
            Object objX4 = gapComposerH.x();
            if (z || objX4 == composer$Companion$Empty$1) {
                objX4 = new h1(function0, 7);
                gapComposerH.q(objX4);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB, false, null, null, (Function0) objX4, 31);
            Unit unit = Unit.f71739a;
            boolean zY2 = gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.audioguide.components.AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        final float a2 = ((int) (pointerInputScope.getA() >> 32)) * 1.5f;
                        final float a3 = ((int) (pointerInputScope.getA() >> 32)) * 0.35f;
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        final Animatable animatable2 = animatable;
                        Object objG = DragGestureDetectorKt.g(pointerInputScope, null, new Function0() { // from class: com.vuitton.android.presentation.screen.audioguide.components.d
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                BuildersKt.c(coroutineScope2, null, null, new AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1(animatable2, a3, a2, null), 3);
                                return Unit.f71739a;
                            }
                        }, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.e
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                                float fFloatValue = ((Float) obj2).floatValue();
                                pointerInputChange.getClass();
                                pointerInputChange.a();
                                BuildersKt.c(coroutineScope2, null, null, new AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$2$1(animatable2, fFloatValue, null), 3);
                                return Unit.f71739a;
                            }
                        }, continuation, 5);
                        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            Modifier modifierJ = PaddingKt.j(ModifierExtKt.e(SuspendingPointerInputFilterKt.a(modifierC, unit, (PointerInputEventHandler) objX5), "audioGuide_pushCard_view"), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Modifier modifierE2 = n00.e(gapComposerH, modifierC2, function6, "AudioGuideSwipeablePushCard-JIo3BtE", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierE2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            ImageLoaderKt.b(ModifierExtKt.e(ClipKt.a(AspectRatioKt.a(SizeKt.o(new DTFunctionNameModifier("AudioGuideSwipeablePushCard-JIo3BtE"), LVAppDesignKitTheme.d(gapComposerH).A), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), "audioGuide_pushCardImage_image"), str3, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            gapComposer = gapComposerH;
            Modifier modifierA = RowScopeInstance.f5040a.a(PaddingKt.m(new DTFunctionNameModifier("AudioGuideSwipeablePushCard-JIo3BtE"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer, 6);
            int iHashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function1);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA, function2);
            Updater.c(gapComposer, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposer, function4, gapComposer, function5);
            int i4 = i3 >> 3;
            int i5 = i3 >> 6;
            TextKt.c(str, n00.f(gapComposer, modifierC4, function6, "AudioGuideSwipeablePushCard-JIo3BtE", "audioGuide_pushCardTitle_text"), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i4 & 14) | (i5 & 896), 0, 131064);
            TextKt.c(str2, n00.g("AudioGuideSwipeablePushCard-JIo3BtE", "audioGuide_pushCardSubtitle_text"), j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i5 & 14) | ((i3 >> 9) & 896), 0, 131064);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, SizeKt.o(o60.f(gapComposer, true, "AudioGuideSwipeablePushCard-JIo3BtE"), LVAppDesignKitTheme.d(gapComposer).m), j2, gapComposer, 56 | (i4 & 7168), 0);
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            modifierE = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ta(modifierE, str, str2, str3, j2, j3, j4, function0, i2);
        }
    }
}
