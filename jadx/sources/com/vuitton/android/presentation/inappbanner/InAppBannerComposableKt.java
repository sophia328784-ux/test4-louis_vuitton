package com.vuitton.android.presentation.inappbanner;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SnackbarDuration;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.FlowExtKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarConfiguration;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import defpackage.jo0;
import defpackage.jx;
import defpackage.n00;
import defpackage.p01;
import defpackage.py;
import defpackage.u4;
import defpackage.uv;
import defpackage.x20;
import defpackage.y30;
import defpackage.z30;
import defpackage.zt0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.StateFlow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;", "inAppBannerNullable", "", "heightInPx", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class InAppBannerComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(StateFlow stateFlow, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        Object obj;
        InAppBanner inAppBanner;
        Animatable animatable;
        int i3;
        int i4;
        Object obj2;
        stateFlow.getClass();
        GapComposer gapComposerH = composer.h(-868502546);
        int i5 = i2 | (gapComposerH.y(stateFlow) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            InAppBanner inAppBanner2 = (InAppBanner) FlowExtKt.c(stateFlow, Lifecycle.State.RESUMED, gapComposerH, (i5 & 14) | KyberEngine.KyberPolyBytes, 5).getF10755b();
            if (inAppBanner2 == null) {
                gapComposerH.L(-675847575);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-675847574);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    obj = objX;
                    Object objA = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    gapComposerH.q(objA);
                    obj = objA;
                }
                obj = objX;
                Animatable animatable2 = (Animatable) obj;
                Object objX2 = gapComposerH.x();
                Object obj3 = objX2;
                if (objX2 == composer$Companion$Empty$1) {
                    Object objA2 = AnimatableKt.a(-1.0f);
                    gapComposerH.q(objA2);
                    obj3 = objA2;
                }
                Animatable animatable3 = (Animatable) obj3;
                boolean zY = ((i5 & 112) == 32) | gapComposerH.y(inAppBanner2) | gapComposerH.y(animatable2) | gapComposerH.y(animatable3);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    inAppBanner = inAppBanner2;
                    animatable = animatable2;
                    i3 = 0;
                    i4 = 1;
                    Object inAppBannerComposableKt$InAppBannerComposable$4$1$1 = new InAppBannerComposableKt$InAppBannerComposable$4$1$1(inAppBanner, animatable, animatable3, function0, null);
                    gapComposerH.q(inAppBannerComposableKt$InAppBannerComposable$4$1$1);
                    obj2 = inAppBannerComposableKt$InAppBannerComposable$4$1$1;
                } else {
                    inAppBanner = inAppBanner2;
                    animatable = animatable2;
                    i3 = 0;
                    i4 = 1;
                    obj2 = objX3;
                }
                EffectsKt.e(gapComposerH, inAppBanner, (Function2) obj2);
                int i6 = ((i5 & 896) == 256 ? i4 : i3) | (gapComposerH.y(inAppBanner) ? 1 : 0) | (gapComposerH.y(animatable) ? 1 : 0) | (gapComposerH.y(animatable3) ? 1 : 0);
                Object objX4 = gapComposerH.x();
                Object obj4 = objX4;
                if (i6 != 0 || objX4 == composer$Companion$Empty$1) {
                    Object inAppBannerComposableKt$InAppBannerComposable$4$2$1 = new InAppBannerComposableKt$InAppBannerComposable$4$2$1(inAppBanner, animatable, animatable3, function1, null);
                    gapComposerH.q(inAppBannerComposableKt$InAppBannerComposable$4$2$1);
                    obj4 = inAppBannerComposableKt$InAppBannerComposable$4$2$1;
                }
                EffectsKt.e(gapComposerH, inAppBanner, (Function2) obj4);
                boolean zY2 = gapComposerH.y(animatable);
                Object objX5 = gapComposerH.x();
                Object obj5 = objX5;
                if (zY2 || objX5 == composer$Companion$Empty$1) {
                    Object y30Var = new y30(animatable, i3);
                    gapComposerH.q(y30Var);
                    obj5 = y30Var;
                }
                Function0 function3 = (Function0) obj5;
                boolean zY3 = gapComposerH.y(animatable3);
                Object objX6 = gapComposerH.x();
                Object obj6 = objX6;
                if (zY3 || objX6 == composer$Companion$Empty$1) {
                    Object y30Var2 = new y30(animatable3, i4);
                    gapComposerH.q(y30Var2);
                    obj6 = y30Var2;
                }
                Function0 function4 = (Function0) obj6;
                if ((i5 & 7168) != 2048) {
                    i4 = i3;
                }
                Object objX7 = gapComposerH.x();
                Object obj7 = objX7;
                if (i4 != 0 || objX7 == composer$Companion$Empty$1) {
                    Object pyVar = new py(function2, 10);
                    gapComposerH.q(pyVar);
                    obj7 = pyVar;
                }
                b(inAppBanner, function3, function4, (Function0) obj7, gapComposerH, 0);
                gapComposerH.Z(i3);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) stateFlow, (Object) function0, (Object) function1, (Object) function2, i2, 4);
        }
    }

    public static final void b(InAppBanner inAppBanner, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        SnackbarHostState snackbarHostState;
        boolean z;
        GapComposer gapComposerH = composer.h(-929953585);
        int i3 = i2 | (gapComposerH.y(inAppBanner) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX);
            }
            MutableFloatState mutableFloatState = (MutableFloatState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new x20(8);
                gapComposerH.q(objX2);
            }
            Function1 function3 = (Function1) objX2;
            float f2 = SwipeToDismissBoxKt.f7342a;
            SwipeToDismissBoxValue swipeToDismissBoxValue = SwipeToDismissBoxValue.Settled;
            Object[] objArr = new Object[0];
            SwipeToDismissBoxState.f7345c.getClass();
            SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new zt0(24), new jo0(function3, 8));
            boolean zD = gapComposerH.d(swipeToDismissBoxValue.ordinal());
            Object objX3 = gapComposerH.x();
            if (zD || objX3 == composer$Companion$Empty$1) {
                objX3 = new p01(swipeToDismissBoxValue, function3, 11);
                gapComposerH.q(objX3);
            }
            SwipeToDismissBoxState swipeToDismissBoxState = (SwipeToDismissBoxState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX3, gapComposerH, 0);
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX4;
            int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getF5031b());
            int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getD());
            SwipeToDismissBoxValue swipeToDismissBoxValue2 = (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) swipeToDismissBoxState.f7346a.g).getF10755b();
            boolean zY = gapComposerH.y(swipeToDismissBoxState) | ((i3 & 7168) == 2048) | gapComposerH.y(hapticFeedback);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new InAppBannerComposableKt$InAppBannerContent$1$1(swipeToDismissBoxState, function2, hapticFeedback, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, swipeToDismissBoxValue2, (Function2) objX5);
            LVSnackbarVisuals lVSnackbarVisuals = new LVSnackbarVisuals(inAppBanner.f67754a, SnackbarDuration.Indefinite, false, inAppBanner.f67755b, false, LVSnackbarConfiguration.CHAT, 20, null);
            Integer numValueOf = Integer.valueOf(iB);
            Integer numValueOf2 = Integer.valueOf(iB2);
            boolean zK = gapComposerH.K(lVSnackbarVisuals) | gapComposerH.y(inAppBanner) | gapComposerH.d(iB) | gapComposerH.d(iB2);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$1) {
                snackbarHostState = snackbarHostState2;
                objX6 = new InAppBannerComposableKt$InAppBannerContent$2$1(snackbarHostState, lVSnackbarVisuals, inAppBanner, iB, iB2, null);
                gapComposerH.q(objX6);
            } else {
                snackbarHostState = snackbarHostState2;
            }
            EffectsKt.g(numValueOf, numValueOf2, (Function2) objX6, gapComposerH);
            Modifier modifierD = WindowInsetsPadding_androidKt.d(SizeKt.d(new DTFunctionNameModifier("InAppBannerContent"), 1.0f));
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                z = false;
                objX7 = new z30(mutableFloatState, 0);
                gapComposerH.q(objX7);
            } else {
                z = false;
            }
            Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierD, (Function1) objX7);
            boolean z2 = ((i3 & 112) == 32 ? true : z) | ((i3 & 896) == 256 ? true : z);
            Object objX8 = gapComposerH.x();
            if (z2 || objX8 == composer$Companion$Empty$1) {
                objX8 = new jx(function0, function1, r18, 7);
                gapComposerH.q(objX8);
            }
            Modifier modifierA2 = GraphicsLayerModifierKt.a(modifierA, (Function1) objX8);
            ComposableSingletons$InAppBannerComposableKt.f51535a.getClass();
            gapComposer = gapComposerH;
            SwipeToDismissBoxKt.a(swipeToDismissBoxState, ComposableSingletons$InAppBannerComposableKt.f51536b, modifierA2, false, false, null, ComposableLambdaKt.b(1407873779, new u4(snackbarHostState, 1), gapComposerH), gapComposer, SwipeToDismissBoxState.d | 12610608);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) inAppBanner, (Object) function0, (Object) function1, (Object) function2, i2, 5);
        }
    }
}
