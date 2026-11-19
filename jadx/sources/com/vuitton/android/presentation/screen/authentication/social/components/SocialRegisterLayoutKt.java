package com.vuitton.android.presentation.screen.authentication.social.components;

import android.content.Context;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import defpackage.a;
import defpackage.fs0;
import defpackage.n00;
import defpackage.p0;
import defpackage.we;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SocialRegisterLayoutKt {
    public static final void a(SocialRegisterViewModel socialRegisterViewModel, Modifier modifier, Function2 function2, Function0 function0, Function0 function1, Function0 function3, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "SocialRegisterLayout");
        }
        Modifier modifier2 = modifierE;
        socialRegisterViewModel.getClass();
        GapComposer gapComposerH = composer.h(-1951648841);
        int i3 = i2 | (gapComposerH.K(socialRegisterViewModel) ? 4 : 2) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            MutableState mutableStateA = FlowExtKt.a(socialRegisterViewModel.a(), new SocialRegisterViewState(null, null, null, false, false, null, 63, null), gapComposerH);
            Unit unit = Unit.f71739a;
            boolean zY = ((i3 & 14) == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new SocialRegisterLayoutKt$SocialRegisterLayout$5$1(socialRegisterViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean zY2 = gapComposerH.y(focusManager);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.authentication.social.components.SocialRegisterLayoutKt$SocialRegisterLayout$6$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 8), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            }
            Modifier modifierA = WindowInsetsPadding_androidKt.a(SuspendingPointerInputFilterKt.a(modifier2, unit, (PointerInputEventHandler) objX3));
            WindowInsets windowInsetsB = WindowInsetsKt.b(0, 14);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1876102705, new fs0(snackbarHostState, 7), gapComposerH);
            p0 p0Var = new p0(modifier2, function2, mutableStateA, function0, function1, function3, 23);
            modifier2 = modifier2;
            ScaffoldKt.a(modifierA, null, null, composableLambdaImplB, null, 0, 0L, 0L, windowInsetsB, ComposableLambdaKt.b(-1483175864, p0Var, gapComposerH), gapComposerH, 805309440, 246);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(socialRegisterViewModel, modifier2, function2, function0, function1, function3, i2, 5);
        }
    }
}
