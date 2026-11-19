package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import android.content.Context;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import defpackage.g0;
import defpackage.i1;
import defpackage.k0;
import defpackage.n00;
import defpackage.n4;
import defpackage.o0;
import defpackage.uv;
import defpackage.w;
import defpackage.we;
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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;", "viewState", "", "newPassword", "", "newPasswordError", "currentPassword", "currentPasswordError", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditPasswordComposableKt {
    public static final void a(MyInformationViewModel myInformationViewModel, Function0 function0, Function2 function2, Function1 function1, Composer composer, int i2) {
        myInformationViewModel.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-829453319);
        int i3 = i2 | (gapComposerH.K(myInformationViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(myInformationViewModel.getI(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new EditPasswordComposableKt$EditPasswordComposable$1$1(myInformationViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new EditPasswordComposableKt$EditPasswordComposable$2$1(myInformationViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean z2 = (i4 == 4) | ((i3 & 112) == 32);
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new EditPasswordComposableKt$EditPasswordComposable$3$1(myInformationViewModel, function0, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            boolean z3 = (i3 & 7168) == 2048;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new k0(function1, 8);
                gapComposerH.q(objX5);
            }
            EffectsKt.c(unit, (Function1) objX5, gapComposerH);
            int i5 = i3 << 3;
            b((MyInformationViewState) mutableStateB.getF10755b(), snackbarHostState, function0, function2, gapComposerH, (i5 & 896) | 48 | (i5 & 7168));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(myInformationViewModel, function0, function2, function1, i2, 0);
        }
    }

    public static final void b(MyInformationViewState myInformationViewState, SnackbarHostState snackbarHostState, Function0 function0, Function2 function2, Composer composer, int i2) {
        MyInformationViewState myInformationViewState2;
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1456781861);
        if ((i2 & 6) == 0) {
            myInformationViewState2 = myInformationViewState;
            i3 = (gapComposerH.K(myInformationViewState2) ? 4 : 2) | i2;
        } else {
            myInformationViewState2 = myInformationViewState;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(null);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(null);
                gapComposerH.q(objX4);
            }
            MutableState mutableState4 = (MutableState) objX4;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("EditPasswordScreen");
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(focusManager);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt$EditPasswordScreen$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 5), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, unit, (PointerInputEventHandler) objX5), ComposableLambdaKt.b(-1643339039, new o0(function0, 28), gapComposerH), ComposableLambdaKt.b(1763590720, new w(function2, mutableState3, mutableState4, mutableState, mutableState2), gapComposerH), ComposableLambdaKt.b(875553183, new g0(snackbarHostState, 24), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(284950326, new n4(myInformationViewState2, mutableState3, mutableState4, mutableState, mutableState2, 10), gapComposerH), gapComposer, 805309872, 496);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1((Object) myInformationViewState, (Object) snackbarHostState, function0, (Function) function2, i2, 15);
        }
    }
}
