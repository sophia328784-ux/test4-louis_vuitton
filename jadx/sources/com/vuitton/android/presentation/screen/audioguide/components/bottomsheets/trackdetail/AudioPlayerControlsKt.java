package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.interaction.DragInteractionKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.LongExtKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import defpackage.a4;
import defpackage.cj;
import defpackage.d0;
import defpackage.f0;
import defpackage.h1;
import defpackage.k0;
import defpackage.n00;
import defpackage.q1;
import defpackage.r0;
import defpackage.rb;
import defpackage.tb;
import defpackage.u5;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0010²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\b\u001a\u0004\u0018\u00010\u00078\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002²\u0006\f\u0010\f\u001a\u00020\u00058\nX\u008a\u0084\u0002²\u0006\u000e\u0010\r\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000f\u001a\u00020\u000e8\n@\nX\u008a\u008e\u0002"}, d2 = {"", "sliderPositionMs", "latestDurationMs", "Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;", "tooltipContent", "", "isDraggingSlider", "Lkotlinx/coroutines/Job;", "skipTooltipJob", "isSliderExpanded", "Landroidx/compose/ui/unit/Dp;", "trackHeight", "isDragged", "isPressed", "", "sliderWidthPx", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioPlayerControlsKt {
    public static final void a(Modifier modifier, final AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, final long j2, final long j3, final boolean z, boolean z2, final PlayerSpeed playerSpeed, final Function0 function0, final Function1 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        boolean z3;
        int i6;
        Function0 function6;
        int i7;
        final boolean z4;
        final Modifier modifier2;
        Modifier dTFunctionNameModifier;
        final boolean z5;
        MutableLongState mutableLongState;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioPlayerControls");
        }
        playerSpeed.getClass();
        GapComposer gapComposerH = composer.h(-479921511);
        int i8 = i4 & 1;
        if (i8 != 0) {
            i5 = i2 | 6;
        } else {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        }
        int i9 = i5 | (gapComposerH.K(audioGuideColorsUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i9 |= gapComposerH.e(j2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i9 |= gapComposerH.e(j3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i9 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        int i10 = i4 & 32;
        if (i10 != 0) {
            i6 = i9 | ImageMetadata.EDGE_MODE;
            z3 = z2;
        } else {
            z3 = z2;
            i6 = i9 | (gapComposerH.b(z3) ? 131072 : 65536);
        }
        if ((i2 & 1572864) == 0) {
            i6 |= gapComposerH.d(playerSpeed.ordinal()) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            function6 = function0;
            i6 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function0;
        }
        if ((i2 & 100663296) == 0) {
            i6 |= gapComposerH.y(function1) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i6 |= gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i7 = i3 | (gapComposerH.y(function3) ? 4 : 2);
        } else {
            i7 = i3;
        }
        if ((i3 & 48) == 0) {
            i7 |= gapComposerH.y(function4) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.y(function5) ? 256 : 128;
        }
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i7 & 147) == 146) ? false : true)) {
            if (i8 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AudioPlayerControls");
            }
            if (i10 != 0) {
                dTFunctionNameModifier = modifierE;
                z5 = false;
            } else {
                dTFunctionNameModifier = modifierE;
                z5 = z3;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotLongStateKt.a(j2);
                gapComposerH.q(objX);
            }
            MutableLongState mutableLongState2 = (MutableLongState) objX;
            MutableState mutableStateL = SnapshotStateKt.l(Long.valueOf(j3), gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(null);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            final MutableState mutableState2 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(null);
                gapComposerH.q(objX4);
            }
            final MutableState mutableState3 = (MutableState) objX4;
            final Modifier modifier3 = dTFunctionNameModifier;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX5);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX5;
            Long lValueOf = Long.valueOf(j2);
            boolean zK = ((i6 & 896) == 256) | gapComposerH.K(mutableStateL);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$1) {
                AudioPlayerControlsKt$AudioPlayerControls$7$1 audioPlayerControlsKt$AudioPlayerControls$7$1 = new AudioPlayerControlsKt$AudioPlayerControls$7$1(j2, mutableStateL, mutableLongState2, null);
                mutableLongState2 = mutableLongState2;
                gapComposerH.q(audioPlayerControlsKt$AudioPlayerControls$7$1);
                objX6 = audioPlayerControlsKt$AudioPlayerControls$7$1;
            }
            EffectsKt.e(gapComposerH, lValueOf, (Function2) objX6);
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean zK2 = ((57344 & i6) == 16384) | ((3670016 & i6) == 1048576) | gapComposerH.K(mutableStateL);
            Object objX7 = gapComposerH.x();
            if (zK2 || objX7 == composer$Companion$Empty$1) {
                MutableLongState mutableLongState3 = mutableLongState2;
                objX7 = new AudioPlayerControlsKt$AudioPlayerControls$8$1(z, playerSpeed, mutableLongState3, mutableStateL, null);
                mutableLongState = mutableLongState3;
                gapComposerH.q(objX7);
            } else {
                mutableLongState = mutableLongState2;
            }
            EffectsKt.g(boolValueOf, playerSpeed, (Function2) objX7, gapComposerH);
            Unit unit = Unit.f71739a;
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new AudioPlayerControlsKt$AudioPlayerControls$9$1(mutableState2, mutableLongState, mutableState, null);
                gapComposerH.q(objX8);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX8);
            final MutableLongState mutableLongState4 = mutableLongState;
            final Function0 function7 = function6;
            CompositionLocalKt.a(CompositionLocalsKt.n.c(LayoutDirection.Ltr), ComposableLambdaKt.b(-774554151, new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    final MutableState mutableState4;
                    CoroutineScope coroutineScope2;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE2 = modifier3;
                    if (modifierE2 != null) {
                        modifierE2 = defpackage.a.e(modifierE2, "AudioPlayerControls$lambda$22");
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierD = SizeKt.d(modifierE2, 1.0f);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                        ComposeUiNode.b0.getClass();
                        Function0 function8 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Function2 function9 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA, function9);
                        Function2 function10 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function10);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function11 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function11);
                        Function1 function12 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function12);
                        Function2 function13 = ComposeUiNode.Companion.d;
                        Modifier modifierC2 = n00.c(composer2, modifierC, function13, "AudioPlayerControls$lambda$22", 1.0f);
                        final MutableState mutableState5 = mutableState;
                        TooltipContent tooltipContent = (TooltipContent) mutableState5.getF10755b();
                        MutableLongState mutableLongState5 = mutableLongState4;
                        long jB = mutableLongState5.b();
                        Object objX9 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX9 == composer$Companion$Empty$2) {
                            objX9 = new tb(mutableLongState5, 0);
                            composer2.q(objX9);
                        }
                        Function1 function14 = (Function1) objX9;
                        Function1 function15 = function1;
                        boolean zK3 = composer2.K(function15);
                        Object objX10 = composer2.x();
                        MutableState mutableState6 = mutableState2;
                        if (zK3 || objX10 == composer$Companion$Empty$2) {
                            objX10 = new r0(function15, mutableState6, mutableState5, mutableLongState5);
                            composer2.q(objX10);
                        }
                        Function0 function16 = (Function0) objX10;
                        Object objX11 = composer2.x();
                        if (objX11 == composer$Companion$Empty$2) {
                            objX11 = new d0(10, mutableState6);
                            composer2.q(objX11);
                        }
                        final AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2 = audioGuideColorsUiModel;
                        AudioPlayerControlsKt.b(modifierC2, audioGuideColorsUiModel2, tooltipContent, jB, j3, function14, function16, (Function0) objX11, composer2, 12779526);
                        SpacerKt.a(composer2, SizeKt.f(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), LVAppDesignKitTheme.l(composer2).f48416e));
                        Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), 1.0f);
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, composer2, 54);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierD2);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function8);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function9);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function10);
                        cj.s(iHashCode2, composer2, function11, composer2, function12);
                        Updater.c(composer2, modifierC3, function13);
                        PlayerSpeed playerSpeed2 = playerSpeed;
                        String strB = StringResources_androidKt.b(R.string.alt_playback_speed, new Object[]{playerSpeed2.getDisplayName()}, composer2);
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AudioPlayerControls$lambda$22");
                        float f2 = -LVAppDesignKitTheme.d(composer2).f48386e;
                        Dp.Companion companion = Dp.f11004c;
                        Modifier modifierE3 = ModifierExtKt.e(OffsetKt.c(dTFunctionNameModifier2, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "audioGuide_trackDetailSpeedToggle_button");
                        boolean zK4 = composer2.K(strB);
                        Object objX12 = composer2.x();
                        if (zK4 || objX12 == composer$Companion$Empty$2) {
                            objX12 = new a4(strB, 2);
                            composer2.q(objX12);
                        }
                        IconButtonKt.a(function4, com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierE3, null, (Function1) objX12, 3), false, null, null, ComposableLambdaKt.b(409417313, new f0(playerSpeed2, audioGuideColorsUiModel2, 11), composer2), composer2, 1572864, 60);
                        Modifier modifierG = n00.g("AudioPlayerControls$lambda$22", "audioGuide_trackDetailGoBack15_button");
                        final Function0 function17 = function2;
                        boolean zK5 = composer2.K(function17);
                        final CoroutineScope coroutineScope3 = coroutineScope;
                        boolean zY = zK5 | composer2.y(coroutineScope3);
                        Object objX13 = composer2.x();
                        MutableState mutableState7 = mutableState3;
                        if (zY || objX13 == composer$Companion$Empty$2) {
                            final int i11 = 1;
                            mutableState4 = mutableState7;
                            objX13 = new Function0() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.b
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i12 = i11;
                                    MutableState mutableState8 = mutableState4;
                                    MutableState mutableState9 = mutableState5;
                                    CoroutineScope coroutineScope4 = coroutineScope3;
                                    Function0 function18 = function17;
                                    switch (i12) {
                                        case 0:
                                            function18.mo47invoke();
                                            mutableState9.setValue(new TooltipContent.Skip("+00:15"));
                                            Job job = (Job) mutableState8.getF10755b();
                                            if (job != null) {
                                                job.cancel(null);
                                            }
                                            mutableState8.setValue(BuildersKt.c(coroutineScope4, null, null, new AudioPlayerControlsKt$AudioPlayerControls$10$1$4$7$1$1(mutableState9, null), 3));
                                            break;
                                        default:
                                            function18.mo47invoke();
                                            mutableState9.setValue(new TooltipContent.Skip("-00:15"));
                                            Job job2 = (Job) mutableState8.getF10755b();
                                            if (job2 != null) {
                                                job2.cancel(null);
                                            }
                                            mutableState8.setValue(BuildersKt.c(coroutineScope4, null, null, new AudioPlayerControlsKt$AudioPlayerControls$10$1$4$3$1$1(mutableState9, null), 3));
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            coroutineScope2 = coroutineScope3;
                            composer2.q(objX13);
                        } else {
                            coroutineScope2 = coroutineScope3;
                            mutableState4 = mutableState7;
                        }
                        final int i12 = 0;
                        IconButtonKt.a((Function0) objX13, modifierG, false, null, null, ComposableLambdaKt.b(1482770698, new Function2() { // from class: lb
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                int i13 = i12;
                                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel3 = audioGuideColorsUiModel2;
                                switch (i13) {
                                    case 0:
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Integer) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).j0, composer3, 0), StringResources_androidKt.b(R.string.alt_back_audio, new Object[]{"15"}, composer3), SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$3"), LVAppDesignKitTheme.d(composer3).t), audioGuideColorsUiModel3.f53207a, composer3, 8, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        break;
                                    default:
                                        Composer composer4 = (Composer) obj3;
                                        int iIntValue3 = ((Integer) obj4).intValue();
                                        if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).k0, composer4, 0), StringResources_androidKt.b(R.string.alt_forward_audio, new Object[]{"15"}, composer4), SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$7"), LVAppDesignKitTheme.d(composer4).t), audioGuideColorsUiModel3.f53207a, composer4, 8, 0);
                                        } else {
                                            composer4.D();
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1572864, 60);
                        SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), LVAppDesignKitTheme.l(composer2).f48419i));
                        Modifier modifierE4 = ModifierExtKt.e(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), "audioGuide_trackDetailPlayPause_button");
                        Object objX14 = composer2.x();
                        if (objX14 == composer$Companion$Empty$2) {
                            objX14 = new u5(14);
                            composer2.q(objX14);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(modifierE4, false, (Function1) objX14);
                        final boolean z6 = z;
                        IconButtonKt.a(function7, modifierB, false, null, null, ComposableLambdaKt.b(-471133335, new Function2() { // from class: mb
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                int i13;
                                int i14;
                                int i15;
                                int i16;
                                int i17 = i12;
                                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel3 = audioGuideColorsUiModel2;
                                boolean z7 = z6;
                                switch (i17) {
                                    case 0:
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Integer) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$5"), LVAppDesignKitTheme.d(composer3).t);
                                            if (z7) {
                                                composer3.L(420155733);
                                                i13 = LVAppDesignKitTheme.g(composer3).b0;
                                                composer3.F();
                                            } else {
                                                composer3.L(420260885);
                                                i13 = LVAppDesignKitTheme.g(composer3).Z;
                                                composer3.F();
                                            }
                                            Painter painterA = PainterResources_androidKt.a(i13, composer3, 0);
                                            if (z7) {
                                                i14 = 420448187;
                                                i15 = R.string.alt_pause;
                                            } else {
                                                i14 = 420547356;
                                                i15 = R.string.alt_play;
                                            }
                                            IconKt.a(painterA, o60.k(composer3, i14, i15, composer3), modifierO, audioGuideColorsUiModel3.f53207a, composer3, 8, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        break;
                                    default:
                                        Composer composer4 = (Composer) obj3;
                                        int iIntValue3 = ((Integer) obj4).intValue();
                                        if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            Modifier modifierO2 = SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$8"), LVAppDesignKitTheme.d(composer4).o);
                                            if (z7) {
                                                composer4.L(-2001338667);
                                                i16 = LVAppDesignKitTheme.g(composer4).H1;
                                                composer4.F();
                                            } else {
                                                composer4.L(-2001231717);
                                                i16 = LVAppDesignKitTheme.g(composer4).G1;
                                                composer4.F();
                                            }
                                            IconKt.a(PainterResources_androidKt.a(i16, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_listening_queue), modifierO2, audioGuideColorsUiModel3.f53207a, composer4, 8, 0);
                                        } else {
                                            composer4.D();
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1572864, 60);
                        SpacerKt.a(composer2, SizeKt.s(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), LVAppDesignKitTheme.l(composer2).f48419i));
                        Modifier modifierE5 = ModifierExtKt.e(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), "audioGuide_trackDetailGoForward15_button");
                        final Function0 function18 = function3;
                        boolean zK6 = composer2.K(function18) | composer2.y(coroutineScope2);
                        Object objX15 = composer2.x();
                        if (zK6 || objX15 == composer$Companion$Empty$2) {
                            final int i13 = 0;
                            final CoroutineScope coroutineScope4 = coroutineScope2;
                            objX15 = new Function0() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.b
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i14 = i13;
                                    MutableState mutableState8 = mutableState4;
                                    MutableState mutableState9 = mutableState5;
                                    CoroutineScope coroutineScope5 = coroutineScope4;
                                    Function0 function19 = function18;
                                    switch (i14) {
                                        case 0:
                                            function19.mo47invoke();
                                            mutableState9.setValue(new TooltipContent.Skip("+00:15"));
                                            Job job = (Job) mutableState8.getF10755b();
                                            if (job != null) {
                                                job.cancel(null);
                                            }
                                            mutableState8.setValue(BuildersKt.c(coroutineScope5, null, null, new AudioPlayerControlsKt$AudioPlayerControls$10$1$4$7$1$1(mutableState9, null), 3));
                                            break;
                                        default:
                                            function19.mo47invoke();
                                            mutableState9.setValue(new TooltipContent.Skip("-00:15"));
                                            Job job2 = (Job) mutableState8.getF10755b();
                                            if (job2 != null) {
                                                job2.cancel(null);
                                            }
                                            mutableState8.setValue(BuildersKt.c(coroutineScope5, null, null, new AudioPlayerControlsKt$AudioPlayerControls$10$1$4$3$1$1(mutableState9, null), 3));
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX15);
                        }
                        Function0 function19 = (Function0) objX15;
                        final int i14 = 1;
                        IconButtonKt.a(function19, modifierE5, false, null, null, ComposableLambdaKt.b(1869929928, new Function2() { // from class: lb
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                int i15 = i14;
                                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel3 = audioGuideColorsUiModel2;
                                switch (i15) {
                                    case 0:
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Integer) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer3).j0, composer3, 0), StringResources_androidKt.b(R.string.alt_back_audio, new Object[]{"15"}, composer3), SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$3"), LVAppDesignKitTheme.d(composer3).t), audioGuideColorsUiModel3.f53207a, composer3, 8, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        break;
                                    default:
                                        Composer composer4 = (Composer) obj3;
                                        int iIntValue3 = ((Integer) obj4).intValue();
                                        if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).k0, composer4, 0), StringResources_androidKt.b(R.string.alt_forward_audio, new Object[]{"15"}, composer4), SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$7"), LVAppDesignKitTheme.d(composer4).t), audioGuideColorsUiModel3.f53207a, composer4, 8, 0);
                                        } else {
                                            composer4.D();
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1572864, 60);
                        Modifier modifierE6 = ModifierExtKt.e(OffsetKt.c(new DTFunctionNameModifier("AudioPlayerControls$lambda$22"), LVAppDesignKitTheme.d(composer2).f48386e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "audioGuide_trackDetailListeningQueue_button");
                        final boolean z7 = z5;
                        final int i15 = 1;
                        IconButtonKt.a(function5, modifierE6, false, null, null, ComposableLambdaKt.b(-83974105, new Function2() { // from class: mb
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                int i16;
                                int i17;
                                int i18;
                                int i19;
                                int i110 = i15;
                                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel3 = audioGuideColorsUiModel2;
                                boolean z8 = z7;
                                switch (i110) {
                                    case 0:
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Integer) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$5"), LVAppDesignKitTheme.d(composer3).t);
                                            if (z8) {
                                                composer3.L(420155733);
                                                i16 = LVAppDesignKitTheme.g(composer3).b0;
                                                composer3.F();
                                            } else {
                                                composer3.L(420260885);
                                                i16 = LVAppDesignKitTheme.g(composer3).Z;
                                                composer3.F();
                                            }
                                            Painter painterA = PainterResources_androidKt.a(i16, composer3, 0);
                                            if (z8) {
                                                i17 = 420448187;
                                                i18 = R.string.alt_pause;
                                            } else {
                                                i17 = 420547356;
                                                i18 = R.string.alt_play;
                                            }
                                            IconKt.a(painterA, o60.k(composer3, i17, i18, composer3), modifierO, audioGuideColorsUiModel3.f53207a, composer3, 8, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        break;
                                    default:
                                        Composer composer4 = (Composer) obj3;
                                        int iIntValue3 = ((Integer) obj4).intValue();
                                        if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            Modifier modifierO2 = SizeKt.o(new DTFunctionNameModifier("AudioPlayerControls$lambda$22$0$3$8"), LVAppDesignKitTheme.d(composer4).o);
                                            if (z8) {
                                                composer4.L(-2001338667);
                                                i19 = LVAppDesignKitTheme.g(composer4).H1;
                                                composer4.F();
                                            } else {
                                                composer4.L(-2001231717);
                                                i19 = LVAppDesignKitTheme.g(composer4).G1;
                                                composer4.F();
                                            }
                                            IconKt.a(PainterResources_androidKt.a(i19, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_listening_queue), modifierO2, audioGuideColorsUiModel3.f53207a, composer4, 8, 0);
                                        } else {
                                            composer4.D();
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1572864, 60);
                        composer2.r();
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
            modifier2 = modifier3;
            z4 = z5;
        } else {
            gapComposerH.D();
            z4 = z3;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: pb
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    AudioPlayerControlsKt.a(modifier2, audioGuideColorsUiModel, j2, j3, z, z4, playerSpeed, function0, function1, function2, function3, function4, function5, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier modifier, final AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, final TooltipContent tooltipContent, final long j2, final long j3, Function1 function1, final Function0 function0, final Function0 function2, Composer composer, final int i2) {
        Function1 function3;
        Modifier modifier2;
        GapComposer gapComposer;
        float f2;
        final long j4;
        boolean z;
        final long j5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioTrackSlider");
        }
        GapComposer gapComposerH = composer.h(-1426194268);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(audioGuideColorsUiModel) ? 32 : 16) | (gapComposerH.K(tooltipContent) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | (gapComposerH.e(j3) ? 16384 : 8192) | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(-478104852);
                f2 = LVAppDesignKitTheme.d(gapComposerH).f48390j;
            } else {
                gapComposerH.L(-478103541);
                f2 = LVAppDesignKitTheme.d(gapComposerH).g;
            }
            float f3 = f2;
            gapComposerH.Z(false);
            final State stateA = AnimateAsStateKt.a(f3, AnimationSpecKt.b(0.75f, 200.0f, 4, null), "trackHeight", null, gapComposerH, 432, 8);
            MutableState mutableStateA = DragInteractionKt.a(mutableInteractionSource, gapComposerH);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            final MutableState mutableState2 = (MutableState) objX3;
            Boolean bool = (Boolean) mutableStateA.getF10755b();
            bool.getClass();
            boolean zK = gapComposerH.K(mutableStateA);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new AudioPlayerControlsKt$AudioTrackSlider$1$1(mutableStateA, null, function2);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX4);
            Boolean bool2 = (Boolean) mutableStateA.getF10755b();
            bool2.getClass();
            Boolean bool3 = (Boolean) mutableState2.getF10755b();
            bool3.getClass();
            Boolean bool4 = (Boolean) mutableState.getF10755b();
            bool4.getClass();
            boolean zK2 = gapComposerH.K(mutableStateA);
            Object objX5 = gapComposerH.x();
            if (zK2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new AudioPlayerControlsKt$AudioTrackSlider$2$1(mutableStateA, mutableState2, mutableState, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.f(bool2, bool3, bool4, (Function2) objX5, gapComposerH);
            float f4 = j2;
            float f5 = j3;
            final float fC = f5 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? RangesKt.c(f4 / f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) : 0.0f;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX6);
            }
            MutableIntState mutableIntState = (MutableIntState) objX6;
            float f6 = -(LVAppDesignKitTheme.l(gapComposerH).d - (((Dp) stateA.getF10755b()).f11006b / 2.0f));
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new q1(mutableIntState, 1);
                gapComposerH.q(objX7);
            }
            Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierE, (Function1) objX7);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Modifier modifier3 = modifierE;
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioTrackSlider");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Modifier modifierE2 = n00.e(gapComposerH, modifierC2, function9, "AudioTrackSlider", 1.0f);
            Unit unit = Unit.f71739a;
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioTrackSlider$4$1$1$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioTrackSlider$4$1$1$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioTrackSlider$4$1$1$1$1", f = "AudioPlayerControls.kt", l = {357, 360}, m = "invokeSuspend", v = 2)
                    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f53100c;
                        public /* synthetic */ Object d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ MutableState f53101e;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(MutableState mutableState, Continuation continuation) {
                            super(2, continuation);
                            this.f53101e = mutableState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f53101e, continuation);
                            anonymousClass1.d = obj;
                            return anonymousClass1;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
                        
                            if (androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r0, r7, r6, 1) == r1) goto L16;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
                        
                            if (r7 == r1) goto L16;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
                        
                            return r1;
                         */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0040 -> B:17:0x0043). Please report as a decompilation issue!!! */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                            /*
                                r6 = this;
                                java.lang.Object r0 = r6.d
                                androidx.compose.ui.input.pointer.AwaitPointerEventScope r0 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r0
                                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                int r2 = r6.f53100c
                                androidx.compose.runtime.MutableState r3 = r6.f53101e
                                r4 = 2
                                r5 = 1
                                if (r2 == 0) goto L21
                                if (r2 == r5) goto L1d
                                if (r2 != r4) goto L16
                                kotlin.ResultKt.b(r7)
                                goto L43
                            L16:
                                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                                defpackage.md.k(r6)
                                r6 = 0
                                return r6
                            L1d:
                                kotlin.ResultKt.b(r7)
                                goto L31
                            L21:
                                kotlin.ResultKt.b(r7)
                                androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                r6.d = r0
                                r6.f53100c = r5
                                java.lang.Object r7 = androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r0, r7, r6, r5)
                                if (r7 != r1) goto L31
                                goto L42
                            L31:
                                java.lang.Boolean r7 = java.lang.Boolean.TRUE
                                r3.setValue(r7)
                            L36:
                                r6.d = r0
                                r6.f53100c = r4
                                androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                                java.lang.Object r7 = r0.N0(r7, r6)
                                if (r7 != r1) goto L43
                            L42:
                                return r1
                            L43:
                                androidx.compose.ui.input.pointer.PointerEvent r7 = (androidx.compose.ui.input.pointer.PointerEvent) r7
                                java.util.List r7 = r7.f9305a
                                java.lang.Iterable r7 = (java.lang.Iterable) r7
                                boolean r2 = r7 instanceof java.util.Collection
                                if (r2 == 0) goto L57
                                r2 = r7
                                java.util.Collection r2 = (java.util.Collection) r2
                                boolean r2 = r2.isEmpty()
                                if (r2 == 0) goto L57
                                goto L6c
                            L57:
                                java.util.Iterator r7 = r7.iterator()
                            L5b:
                                boolean r2 = r7.hasNext()
                                if (r2 == 0) goto L6c
                                java.lang.Object r2 = r7.next()
                                androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
                                boolean r2 = r2.d
                                if (r2 == 0) goto L5b
                                goto L36
                            L6c:
                                java.lang.Boolean r6 = java.lang.Boolean.FALSE
                                r3.setValue(r6)
                                kotlin.Unit r6 = kotlin.Unit.f71739a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioTrackSlider$4$1$1$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(mutableState2, null), continuation);
                        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            }
            Modifier modifierA2 = SuspendingPointerInputFilterKt.a(modifierE2, unit, (PointerInputEventHandler) objX8);
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = new u5(15);
                gapComposerH.q(objX9);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierA2, false, (Function1) objX9);
            ClosedFloatingPointRange closedFloatingPointRangeH = RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, f5);
            Object objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$1) {
                function3 = function1;
                objX10 = new k0(function3, 3);
                gapComposerH.q(objX10);
            } else {
                function3 = function1;
            }
            Function1 function10 = (Function1) objX10;
            boolean z2 = (i3 & 3670016) == 1048576;
            Object objX11 = gapComposerH.x();
            if (z2 || objX11 == composer$Companion$Empty$1) {
                objX11 = new h1(function0, 10);
                gapComposerH.q(objX11);
            }
            ComposableSingletons$AudioPlayerControlsKt.f53102a.getClass();
            SliderKt.a(f4, function10, modifierB, false, (Function0) objX11, null, mutableInteractionSource, ComposableSingletons$AudioPlayerControlsKt.f53103b, ComposableLambdaKt.b(656038987, new Function3() { // from class: nb
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((SliderState) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierF = SizeKt.f(tr.d("AudioTrackSlider$lambda$15$0$4", 1.0f), ((Dp) stateA.getF10755b()).f11006b);
                        AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel2 = audioGuideColorsUiModel;
                        boolean zK3 = composer2.K(audioGuideColorsUiModel2);
                        float f7 = fC;
                        boolean zC = zK3 | composer2.c(f7);
                        Object objX12 = composer2.x();
                        if (zC || objX12 == Composer.Companion.f7939a) {
                            objX12 = new qb(audioGuideColorsUiModel2, f7, 0);
                            composer2.q(objX12);
                        }
                        CanvasKt.a(modifierF, (Function1) objX12, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), closedFloatingPointRangeH, gapComposerH, 907542528);
            Modifier modifierD = SizeKt.d(OffsetKt.c(new DTFunctionNameModifier("AudioTrackSlider"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, 1), 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
            cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC3, function9);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AudioTrackSlider");
            boolean zY = gapComposerH.y(context) | ((i3 & 7168) == 2048);
            Object objX12 = gapComposerH.x();
            if (zY || objX12 == composer$Companion$Empty$1) {
                j4 = j2;
                z = false;
                final Object[] objArr = 0 == true ? 1 : 0;
                objX12 = new Function1() { // from class: ob
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i4 = objArr;
                        long j6 = j4;
                        Context context2 = context;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        switch (i4) {
                            case 0:
                                semanticsPropertyReceiver.getClass();
                                String string = context2.getString(R.string.alt_timestamp_passed, LongExtKt.a(j6), LongExtKt.b(j6));
                                string.getClass();
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                                break;
                            default:
                                semanticsPropertyReceiver.getClass();
                                String string2 = context2.getString(R.string.alt_timestamp_total, LongExtKt.a(j6), LongExtKt.b(j6));
                                string2.getClass();
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX12);
            } else {
                j4 = j2;
                z = false;
            }
            TextKt.c(LongExtKt.c(j4), ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifier2, z, (Function1) objX12), "audioGuide_trackDetailCurrentPosition_text"), audioGuideColorsUiModel.f53208b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(modifier3, 1.0f, true));
            Modifier modifierG = n00.g("AudioTrackSlider", "audioGuide_trackDetailTotalDuration_text");
            boolean zY2 = gapComposerH.y(context) | ((i3 & 57344) == 16384);
            Object objX13 = gapComposerH.x();
            if (zY2 || objX13 == composer$Companion$Empty$1) {
                j5 = j3;
                final int i4 = 1;
                objX13 = new Function1() { // from class: ob
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i5 = i4;
                        long j6 = j5;
                        Context context2 = context;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        switch (i5) {
                            case 0:
                                semanticsPropertyReceiver.getClass();
                                String string = context2.getString(R.string.alt_timestamp_passed, LongExtKt.a(j6), LongExtKt.b(j6));
                                string.getClass();
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                                break;
                            default:
                                semanticsPropertyReceiver.getClass();
                                String string2 = context2.getString(R.string.alt_timestamp_total, LongExtKt.a(j6), LongExtKt.b(j6));
                                string2.getClass();
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX13);
            } else {
                j5 = j3;
            }
            TextKt.c(LongExtKt.c(j5), SemanticsModifierKt.b(modifierG, false, (Function1) objX13), audioGuideColorsUiModel.f53208b, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            modifier2 = modifier3;
            c(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("AudioTrackSlider"), biasAlignment), audioGuideColorsUiModel.f53207a, audioGuideColorsUiModel.f53209c, tooltipContent != null, tooltipContent, fC, mutableIntState.f(), gapComposerH, (i3 << 6) & 57344);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            function3 = function1;
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function11 = function3;
            final Modifier modifier4 = modifier2;
            recomposeScopeImplB0.d = new Function2(audioGuideColorsUiModel, tooltipContent, j2, j3, function11, function0, function2, i2) { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.c

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AudioGuideUiModel.AudioGuideColorsUiModel f53131c;
                public final /* synthetic */ TooltipContent d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f53132e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f53133f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f53134h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f53135i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(12779527);
                    AudioPlayerControlsKt.b(this.f53130b, this.f53131c, this.d, this.f53132e, this.f53133f, this.g, this.f53134h, this.f53135i, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(Modifier modifier, final long j2, final long j3, final boolean z, final TooltipContent tooltipContent, final float f2, final int i2, Composer composer, final int i3) {
        int i4;
        GapComposer gapComposer;
        String strC;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AudioTrackTooltip-qi6gXK8");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(186266743);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.e(j2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.e(j3) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= (32768 & i3) == 0 ? gapComposerH.K(tooltipContent) : gapComposerH.y(tooltipContent) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.c(f2) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i4 |= gapComposerH.d(i2) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            final float f3 = LVAppDesignKitTheme.d(gapComposerH).w;
            final float f4 = LVAppDesignKitTheme.d(gapComposerH).g;
            float fU1 = density.u1(f3);
            float f5 = i2;
            int i5 = i4;
            float f6 = (f2 * f5) - (fU1 / 2.0f);
            float f7 = f5 - fU1;
            if (f7 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f7 = 0.0f;
            }
            float fL1 = density.l1(RangesKt.c(f6, Call.Parameters.DEFAULT_CAMERA_ZOOM, f7));
            float f8 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            if (tooltipContent instanceof TooltipContent.Timecode) {
                strC = LongExtKt.c(((TooltipContent.Timecode) tooltipContent).f53108a);
            } else if (tooltipContent instanceof TooltipContent.Skip) {
                strC = ((TooltipContent.Skip) tooltipContent).f53107a;
            } else {
                if (tooltipContent != null) {
                    v40.g();
                    return;
                }
                strC = "";
            }
            final String str = strC;
            boolean zC = gapComposerH.c(fL1) | gapComposerH.c(f8);
            Object objX = gapComposerH.x();
            if (zC || objX == Composer.Companion.f7939a) {
                objX = new rb(fL1, f8, 0);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            AnimatedVisibilityKt.e(z, OffsetKt.a(modifier2, (Function1) objX), EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(803968847, new Function3() { // from class: sb
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioTrackTooltip_qi6gXK8$lambda$3");
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, composer2, 48);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, columnMeasurePolicyA, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Modifier modifierU = SizeKt.u(a.f(composer2, modifierC, function5, "AudioTrackTooltip_qi6gXK8$lambda$3"), f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(composer2).f48410b;
                    long j4 = j2;
                    Modifier modifierB = BackgroundKt.b(modifierU, j4, roundedCornerShape);
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, function2);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer2, function4, composer2, function1);
                    TextKt.c(str, PaddingKt.i(a.f(composer2, modifierC2, function5, "AudioTrackTooltip_qi6gXK8$lambda$3"), LVAppDesignKitTheme.l(composer2).f48415c), j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                    composer2.r();
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AudioTrackTooltip_qi6gXK8$lambda$3");
                    float f9 = f4;
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierP = SizeKt.p(dTFunctionNameModifier2, 2.0f * f9, f9);
                    boolean zE = composer2.e(j4);
                    Object objX2 = composer2.x();
                    if (zE || objX2 == Composer.Companion.f7939a) {
                        objX2 = new r5(j4, 1);
                        composer2.q(objX2);
                    }
                    CanvasKt.a(modifierP, (Function1) objX2, composer2, 0);
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, ((i5 >> 9) & 14) | 200064, 16);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    AudioPlayerControlsKt.c(modifier2, j2, j3, z, tooltipContent, f2, i2, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
