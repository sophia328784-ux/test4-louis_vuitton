package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.j6;
import defpackage.lm;
import defpackage.wg;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Offset;", "overlayOriginInWindow", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CircularRevealOverlayKt {
    public static final void a(boolean z, Rect rect, Modifier modifier, long j2, int i2, Function0 function0, Composer composer, int i3, int i4) {
        long j3;
        int i5;
        int i6;
        long j4;
        long j5;
        boolean z2;
        boolean z3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "CircularRevealOverlay-fWhpE4E");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(770787672);
        int i7 = i3 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.K(rect) ? 32 : 16);
        int i8 = i7 | KyberEngine.KyberPolyBytes;
        int i9 = i4 & 8;
        if (i9 != 0) {
            i5 = i7 | 3456;
            j3 = j2;
        } else {
            j3 = j2;
            i5 = (gapComposerH.e(j3) ? 2048 : 1024) | i8;
        }
        int i10 = i5 | 24576 | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i10 & 1, (74899 & i10) != 74898)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("CircularRevealOverlay-fWhpE4E");
            if (i9 != 0) {
                Color.f8866b.getClass();
                j3 = Color.f8868e;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                Offset.f8806b.getClass();
                objX = SnapshotStateKt.g(new Offset(0L));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX2);
            }
            Animatable animatable = (Animatable) objX2;
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean zY = ((i10 & 14) == 4) | gapComposerH.y(animatable) | ((458752 & i10) == 131072);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new CircularRevealOverlayKt$CircularRevealOverlay$1$1(z, animatable, function0, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX3);
            if (z || ((Number) animatable.d()).floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                gapComposerH.L(1641392441);
                FillElement fillElement = SizeKt.f5052c;
                Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                Unit unit = Unit.f71739a;
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = CircularRevealOverlayKt$CircularRevealOverlay$2$1.f50942a;
                    gapComposerH.q(objX4);
                }
                Modifier modifierA = SuspendingPointerInputFilterKt.a(modifierO, unit, (PointerInputEventHandler) objX4);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                long j6 = j3;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Modifier modifierO2 = new DTFunctionNameModifier("CircularRevealOverlay-fWhpE4E").o(fillElement);
                Object objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new j6(13, mutableState);
                    gapComposerH.q(objX5);
                }
                Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierO2, (Function1) objX5);
                boolean zY2 = ((i10 & 7168) == 2048) | ((i10 & 112) == 32) | gapComposerH.y(animatable);
                Object objX6 = gapComposerH.x();
                if (zY2 || objX6 == composer$Companion$Empty$1) {
                    j5 = j6;
                    z2 = true;
                    z3 = false;
                    wg wgVar = new wg(rect, j5, animatable, mutableState);
                    gapComposerH.q(wgVar);
                    objX6 = wgVar;
                } else {
                    j5 = j6;
                    z2 = true;
                    z3 = false;
                }
                CanvasKt.a(modifierA2, (Function1) objX6, gapComposerH, 6);
                gapComposerH.Z(z2);
                gapComposerH.Z(z3);
            } else {
                gapComposerH.L(1642669610);
                gapComposerH.Z(false);
                j5 = j3;
            }
            i6 = 450;
            j4 = j5;
        } else {
            gapComposerH.D();
            i6 = i2;
            j4 = j3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new lm(z, rect, dTFunctionNameModifier, j4, i6, function0, i3, i4);
        }
    }
}
