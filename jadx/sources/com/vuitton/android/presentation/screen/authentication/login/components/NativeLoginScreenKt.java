package com.vuitton.android.presentation.screen.authentication.login.components;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import defpackage.ae0;
import defpackage.n4;
import defpackage.we;
import defpackage.z2;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeLoginScreenKt {
    public static final void a(NativeLoginViewState nativeLoginViewState, SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, Function1 function1, Function0 function3, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        nativeLoginViewState.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-20292371);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(nativeLoginViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeLoginScreen");
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(focusManager);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginScreenKt$NativeLoginScreen$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 7), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, unit, (PointerInputEventHandler) objX), null, null, ComposableLambdaKt.b(1904298803, new ae0(snackbarHostState, 4), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-559369668, new n4((Object) nativeLoginViewState, function3, function0, (Object) function2, (Function) function1, 14), gapComposerH), gapComposer, 805309440, 502);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(nativeLoginViewState, snackbarHostState, function2, function0, function1, function3, i2);
        }
    }
}
