package com.vuitton.android.presentation.screen.mylv.components;

import android.content.Context;
import android.content.Intent;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult;
import androidx.lifecycle.compose.LifecycleResumePauseEffectScope;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import defpackage.ae0;
import defpackage.dd0;
import defpackage.n00;
import defpackage.n4;
import defpackage.od;
import defpackage.vd;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyLvComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59397a;

        static {
            int[] iArr = new int[CareServiceAction.values().length];
            try {
                iArr[CareServiceAction.ConfirmEstimate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CareServiceAction.ConfirmAddress.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CareServiceAction.AwaitingPayment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f59397a = iArr;
        }
    }

    public static final void a(final MyLvViewModel myLvViewModel, boolean z, Function0 function0, Composer composer, int i2) {
        Function0 function1;
        GapComposer gapComposer;
        myLvViewModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-627365083);
        int i3 = (gapComposerH.K(myLvViewModel) ? 4 : 2) | i2;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        } else {
            function1 = function0;
        }
        final int i4 = 0;
        final int i5 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateC = FlowExtKt.c(myLvViewModel.getS(), null, gapComposerH, 0, 7);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            final SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            int i6 = i3 & 14;
            boolean z2 = i6 == 4;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new MyLvComposableKt$MyLvComposable$1$1(myLvViewModel, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean z3 = i6 == 4;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new Function1() { // from class: yd0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i7 = i4;
                        MyLvViewModel myLvViewModel2 = myLvViewModel;
                        switch (i7) {
                            case 0:
                                LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) obj;
                                lifecycleResumePauseEffectScope.getClass();
                                myLvViewModel2.G0();
                                return new LifecyclePauseOrDisposeEffectResult(lifecycleResumePauseEffectScope) { // from class: com.vuitton.android.presentation.screen.mylv.components.MyLvComposableKt$MyLvComposable$lambda$3$0$$inlined$onPauseOrDispose$1
                                };
                            default:
                                ActivityResult activityResult = (ActivityResult) obj;
                                activityResult.getClass();
                                Intent intent = activityResult.f732c;
                                if (intent != null && intent.getBooleanExtra("EXTRA_RELOAD_ORDERS", false)) {
                                    myLvViewModel2.Pa();
                                }
                                return Unit.f71739a;
                        }
                    }
                };
                gapComposerH.q(objX3);
            }
            LifecycleEffectKt.b(unit, null, (Function1) objX3, gapComposerH, 6);
            boolean zY = (i6 == 4) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new MyLvComposableKt$MyLvComposable$3$1(myLvViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX5);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX5;
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean z4 = i6 == 4;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new Function1() { // from class: yd0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i7 = i5;
                        MyLvViewModel myLvViewModel2 = myLvViewModel;
                        switch (i7) {
                            case 0:
                                LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) obj;
                                lifecycleResumePauseEffectScope.getClass();
                                myLvViewModel2.G0();
                                return new LifecyclePauseOrDisposeEffectResult(lifecycleResumePauseEffectScope) { // from class: com.vuitton.android.presentation.screen.mylv.components.MyLvComposableKt$MyLvComposable$lambda$3$0$$inlined$onPauseOrDispose$1
                                };
                            default:
                                ActivityResult activityResult = (ActivityResult) obj;
                                activityResult.getClass();
                                Intent intent = activityResult.f732c;
                                if (intent != null && intent.getBooleanExtra("EXTRA_RELOAD_ORDERS", false)) {
                                    myLvViewModel2.Pa();
                                }
                                return Unit.f71739a;
                        }
                    }
                };
                gapComposerH.q(objX6);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX6, gapComposerH, 0);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult2 = new ActivityResultContracts$StartActivityForResult();
            boolean zY2 = gapComposerH.y(coroutineScope);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new Function1() { // from class: com.vuitton.android.presentation.screen.mylv.components.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Intent intent;
                        String stringExtra;
                        ActivityResult activityResult = (ActivityResult) obj;
                        activityResult.getClass();
                        if (activityResult.f731b == -1 && (intent = activityResult.f732c) != null && (stringExtra = intent.getStringExtra("extra_success_message")) != null) {
                            BuildersKt.c(coroutineScope, null, null, new MyLvComposableKt$MyLvComposable$editAvatarActivityResult$1$1$1$1(snackbarHostState, stringExtra, null), 3);
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA2 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult2, (Function1) objX7, gapComposerH, 0);
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new dd0(11);
                gapComposerH.q(objX8);
            }
            ScreenshotListenerKt.a((Function0) objX8, gapComposerH, 6);
            ScaffoldKt.a(null, ComposableLambdaKt.b(1812591329, new od(z, mutableStateC, myLvViewModel, context, function1), gapComposerH), null, ComposableLambdaKt.b(1201322271, new ae0(snackbarHostState, 0), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1226147958, new n4(myLvViewModel, context, mutableStateC, managedActivityResultLauncherA, managedActivityResultLauncherA2, 13), gapComposerH), gapComposerH, 805309488, 245);
            gapComposer = gapComposerH;
            if (((MyLvViewState) mutableStateC.getF10755b()).f59448b) {
                gapComposer.L(1875634683);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(1875667357);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(myLvViewModel, z, function0, i2, 2);
        }
    }
}
