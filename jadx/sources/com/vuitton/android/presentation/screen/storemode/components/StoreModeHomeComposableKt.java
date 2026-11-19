package com.vuitton.android.presentation.screen.storemode.components;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.BackHandlerKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import defpackage.l11;
import defpackage.m11;
import defpackage.nw0;
import defpackage.o;
import defpackage.p01;
import defpackage.qk;
import defpackage.rp0;
import defpackage.sm0;
import defpackage.z2;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeHomeComposableKt {
    public static final void a(StoreModeViewState storeModeViewState, Function0 function0, Function0 function1, Function0 function2, ComposableLambdaImpl composableLambdaImpl, Function0 function3, Composer composer, int i2) {
        int i3;
        storeModeViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(416722913);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(storeModeViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(storeModeViewState) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new p01(storeModeViewState, function0, 3);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerH, 0, 1);
            composableLambdaImpl.invoke(gapComposerH, Integer.valueOf((i3 >> 12) & 14));
            Modifier modifierO = new DTFunctionNameModifier("StoreModeExploreScreen").o(SizeKt.f5052c);
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierO, Color.b(0.85f, Color.f8867c), RectangleShapeKt.f8913a);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new nw0(29);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierB, false, null, null, (Function0) objX2, 27);
            AnimatedVisibilityKt.e(storeModeViewState.f65084e, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(686013113, new l11(modifierC, function1, function2), gapComposerH), gapComposerH, 200064, 18);
            AnimatedVisibilityKt.e(!storeModeViewState.g, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(1803988528, new l11(function3, modifierC, function1), gapComposerH), gapComposerH, 200064, 18);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(storeModeViewState, function0, function1, function2, composableLambdaImpl, function3, i2);
        }
    }

    public static final void b(StoreModeViewModel storeModeViewModel, PSPStoreModeViewModel pSPStoreModeViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Composer composer, int i2) {
        storeModeViewModel.getClass();
        pSPStoreModeViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1552186595);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.K(pSPStoreModeViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(storeModeViewModel.getB(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            int i4 = i3 & 14;
            boolean z = (i4 == 4) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new rp0(storeModeViewModel, pSPStoreModeViewModel, 27);
                gapComposerH.q(objX);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX, gapComposerH, 0);
            Unit unit = Unit.f71739a;
            boolean z2 = i4 == 4;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new StoreModeHomeComposableKt$StoreModeHomeComposable$1$1(storeModeViewModel, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            StoreModeViewState storeModeViewState = (StoreModeViewState) mutableStateB.getF10755b();
            boolean zK = ((i3 & 896) == 256) | gapComposerH.K(mutableStateB) | (i4 == 4);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new sm0(19, mutableStateB, storeModeViewModel, function0);
                gapComposerH.q(objX3);
            }
            Function0 function4 = (Function0) objX3;
            boolean zK2 = gapComposerH.K(mutableStateB) | (i4 == 4);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new m11(storeModeViewModel, mutableStateB);
                gapComposerH.q(objX4);
            }
            Function0 function5 = (Function0) objX4;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(105762743, new o(storeModeViewModel, pSPStoreModeViewModel, managedActivityResultLauncherA, context, function2, function3, mutableStateB), gapComposerH);
            boolean z3 = i4 == 4;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new qk(storeModeViewModel, 2);
                gapComposerH.q(objX5);
            }
            a(storeModeViewState, function1, function4, function5, composableLambdaImplB, (Function0) objX5, gapComposerH, ((i3 >> 6) & 112) | 24576);
            boolean z4 = i4 == 4;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new StoreModeHomeComposableKt$StoreModeHomeComposable$6$1(storeModeViewModel, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(storeModeViewModel, pSPStoreModeViewModel, function0, function1, function2, function3, i2);
        }
    }
}
