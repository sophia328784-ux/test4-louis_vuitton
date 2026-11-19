package com.vuitton.android.presentation.screen.account.lvpass.components;

import android.graphics.Bitmap;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt;
import defpackage.a;
import defpackage.kn0;
import defpackage.na;
import defpackage.u1;
import defpackage.xe0;
import defpackage.yn0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;", "lv3dCardViewerUiModel", "", "isReady", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QRCode3DScreenKt {
    public static final void a(Bitmap bitmap, Bitmap bitmap2, Function0 function0, Modifier modifier, Function0 function1, Function0 function2, Composer composer, int i2) {
        boolean z;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "QRCode3DScreen");
        }
        bitmap.getClass();
        bitmap2.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1040451510);
        int i3 = i2 | (gapComposerH.y(bitmap) ? 4 : 2) | (gapComposerH.y(bitmap2) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | 3072 | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("QRCode3DScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScreenshotListenerKt.a(function2, gapComposerH, (i3 >> 15) & 14);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(new Lv3dCardViewerUiModel("models/card_scene", bitmap, bitmap2, null, null, false, false, 120, null));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Lv3dCardViewerUiModel lv3dCardViewerUiModel = (Lv3dCardViewerUiModel) mutableState.getF10755b();
            if (lv3dCardViewerUiModel.f58578c == null || lv3dCardViewerUiModel.f58577b == null) {
                gapComposerH.L(-683814900);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-687247592);
                Modifier modifierO = dTFunctionNameModifier.o(SizeKt.f5052c);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
                ComposeUiNode.b0.getClass();
                Function0 function3 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("QRCode3DScreen");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                Modifier modifierA = ZIndexModifierKt.a(boxScopeInstance.j(dTFunctionNameModifier2), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                Lv3dCardViewerUiModel lv3dCardViewerUiModel2 = (Lv3dCardViewerUiModel) mutableState.getF10755b();
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new yn0(14);
                    gapComposerH.q(objX3);
                }
                Function1 function4 = (Function1) objX3;
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new na(function1, mutableState2, 10);
                    gapComposerH.q(objX4);
                }
                Lv3dCardViewerComposableKt.a(modifierA, lv3dCardViewerUiModel2, false, function4, (Function0) objX4, new Scene3DConfiguration.BlossomConfiguration(), null, gapComposerH, 3072, 68);
                if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    gapComposerH.L(213678034);
                    Object objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        gapComposerH.q(objX5);
                    }
                    Animatable animatable = (Animatable) objX5;
                    Object objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX6);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) objX6;
                    Unit unit = Unit.f71739a;
                    boolean zY = gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
                    Object objX7 = gapComposerH.x();
                    if (zY || objX7 == composer$Companion$Empty$1) {
                        objX7 = new QRCode3DScreenKt$QRCode3DScreen$1$3$1(coroutineScope, animatable, null);
                        gapComposerH.q(objX7);
                    }
                    EffectsKt.e(gapComposerH, unit, (Function2) objX7);
                    Modifier modifierA2 = ZIndexModifierKt.a(boxScopeInstance.j(new DTFunctionNameModifier("QRCode3DScreen")), 1.0f);
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1936679498, new kn0(function0, 7), gapComposerH);
                    Color.f8866b.getClass();
                    ScaffoldKt.a(modifierA2, composableLambdaImplB, null, null, null, 0, Color.f8870h, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(180025025, new xe0(animatable, 9), gapComposerH), gapComposerH, 806879280, 188);
                    gapComposerH = gapComposerH;
                    z = false;
                    gapComposerH.Z(false);
                } else {
                    z = false;
                    gapComposerH.L(216531243);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(z);
            }
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(bitmap, bitmap2, function0, modifier2, function1, function2, i2, 26);
        }
    }
}
