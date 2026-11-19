package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import defpackage.dt;
import defpackage.n00;
import defpackage.rs;
import defpackage.tx;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ForgetPasswordComposableKt {
    public static final void a(ForgetPasswordViewModel forgetPasswordViewModel, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        Object forgetPasswordComposableKt$ForgetPasswordComposable$1$1;
        Context context;
        SnackbarHostState snackbarHostState;
        CoroutineScope coroutineScope;
        NotificationBuilder notificationBuilder;
        PagerState pagerState;
        SnackbarHostState snackbarHostState2;
        final ForgetPasswordViewModel forgetPasswordViewModel2;
        boolean z;
        CoroutineScope coroutineScope2;
        final ForgetPasswordViewModel forgetPasswordViewModel3 = forgetPasswordViewModel;
        forgetPasswordViewModel3.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-434249643);
        int i3 = (gapComposerH.K(forgetPasswordViewModel3) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new tx(13);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, KyberEngine.KyberPolyBytes, 3);
            MutableState mutableStateB = SnapshotStateKt.b(forgetPasswordViewModel3.getS(), gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            CoroutineScope coroutineScope3 = (CoroutineScope) objX2;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState3 = (SnackbarHostState) objX3;
            NotificationBuilder notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zK = (i4 == 4) | gapComposerH.K(pagerStateB) | gapComposerH.y(coroutineScope3) | gapComposerH.y(context2) | gapComposerH.y(notificationBuilderA);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                context = context2;
                snackbarHostState = snackbarHostState3;
                forgetPasswordComposableKt$ForgetPasswordComposable$1$1 = new ForgetPasswordComposableKt$ForgetPasswordComposable$1$1(forgetPasswordViewModel, pagerStateB, coroutineScope3, context, snackbarHostState, notificationBuilderA, null);
                coroutineScope = coroutineScope3;
                notificationBuilder = notificationBuilderA;
                pagerState = pagerStateB;
                gapComposerH.q(forgetPasswordComposableKt$ForgetPasswordComposable$1$1);
            } else {
                pagerState = pagerStateB;
                forgetPasswordComposableKt$ForgetPasswordComposable$1$1 = objX4;
                notificationBuilder = notificationBuilderA;
                coroutineScope = coroutineScope3;
                context = context2;
                snackbarHostState = snackbarHostState3;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) forgetPasswordComposableKt$ForgetPasswordComposable$1$1);
            boolean zY = (i4 == 4) | gapComposerH.y(notificationBuilder) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                SnackbarHostState snackbarHostState4 = snackbarHostState;
                ForgetPasswordComposableKt$ForgetPasswordComposable$2$1 forgetPasswordComposableKt$ForgetPasswordComposable$2$1 = new ForgetPasswordComposableKt$ForgetPasswordComposable$2$1(forgetPasswordViewModel, snackbarHostState4, notificationBuilder, context, null);
                snackbarHostState2 = snackbarHostState4;
                forgetPasswordViewModel2 = forgetPasswordViewModel;
                gapComposerH.q(forgetPasswordComposableKt$ForgetPasswordComposable$2$1);
                objX5 = forgetPasswordComposableKt$ForgetPasswordComposable$2$1;
            } else {
                forgetPasswordViewModel2 = forgetPasswordViewModel;
                snackbarHostState2 = snackbarHostState;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            int i5 = i3 & 112;
            boolean zY2 = gapComposerH.y(coroutineScope) | gapComposerH.K(pagerState) | (i5 == 32);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                objX6 = new a(coroutineScope, pagerState, function0);
                gapComposerH.q(objX6);
            }
            final int i6 = 0;
            BackHandlerKt.a(false, (Function0) objX6, gapComposerH, 0, 1);
            ForgetPasswordViewState forgetPasswordViewState = (ForgetPasswordViewState) mutableStateB.getF10755b();
            boolean z2 = ((ForgetPasswordViewState) mutableStateB.getF10755b()).d;
            boolean z3 = i4 == 4;
            Object objX7 = gapComposerH.x();
            if (z3 || objX7 == composer$Companion$Empty$1) {
                objX7 = new Function1() { // from class: rz
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i7 = i6;
                        ForgetPasswordViewModel forgetPasswordViewModel4 = forgetPasswordViewModel2;
                        switch (i7) {
                            case 0:
                                String str = (String) obj;
                                str.getClass();
                                forgetPasswordViewModel4.q3(str);
                                break;
                            default:
                                ForgetPasswordTrackingUiModel forgetPasswordTrackingUiModel = (ForgetPasswordTrackingUiModel) obj;
                                forgetPasswordTrackingUiModel.getClass();
                                forgetPasswordViewModel4.y4(forgetPasswordTrackingUiModel);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            Function1 function1 = (Function1) objX7;
            boolean z4 = i4 == 4;
            Object objX8 = gapComposerH.x();
            if (z4 || objX8 == composer$Companion$Empty$1) {
                objX8 = new Function0() { // from class: sz
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i7 = i6;
                        ForgetPasswordViewModel forgetPasswordViewModel4 = forgetPasswordViewModel2;
                        switch (i7) {
                            case 0:
                                forgetPasswordViewModel4.T7();
                                break;
                            default:
                                forgetPasswordViewModel4.tc();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            }
            Function0 function2 = (Function0) objX8;
            boolean z5 = i4 == 4;
            Object objX9 = gapComposerH.x();
            if (z5 || objX9 == composer$Companion$Empty$1) {
                final int i7 = 1;
                objX9 = new Function0() { // from class: sz
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i8 = i7;
                        ForgetPasswordViewModel forgetPasswordViewModel4 = forgetPasswordViewModel2;
                        switch (i8) {
                            case 0:
                                forgetPasswordViewModel4.T7();
                                break;
                            default:
                                forgetPasswordViewModel4.tc();
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX9);
            }
            Function0 function3 = (Function0) objX9;
            boolean z6 = i4 == 4;
            Object objX10 = gapComposerH.x();
            if (z6 || objX10 == composer$Companion$Empty$1) {
                z = z2;
                coroutineScope2 = coroutineScope;
                ForgetPasswordComposableKt$ForgetPasswordComposable$7$1 forgetPasswordComposableKt$ForgetPasswordComposable$7$1 = new ForgetPasswordComposableKt$ForgetPasswordComposable$7$1(1, forgetPasswordViewModel2, ForgetPasswordViewModel.class, "updateOtpCode", "updateOtpCode(Ljava/lang/String;)V", 0);
                gapComposerH.q(forgetPasswordComposableKt$ForgetPasswordComposable$7$1);
                objX10 = forgetPasswordComposableKt$ForgetPasswordComposable$7$1;
            } else {
                z = z2;
                coroutineScope2 = coroutineScope;
            }
            Function1 function4 = (Function1) ((KFunction) objX10);
            boolean z7 = i4 == 4;
            Object objX11 = gapComposerH.x();
            if (z7 || objX11 == composer$Companion$Empty$1) {
                objX11 = new ForgetPasswordComposableKt$ForgetPasswordComposable$8$1(2, forgetPasswordViewModel, ForgetPasswordViewModel.class, "onFieldUpdated", "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V", 0);
                gapComposerH.q(objX11);
            }
            Function2 function5 = (Function2) ((KFunction) objX11);
            SnackbarHostState snackbarHostState5 = snackbarHostState2;
            boolean zH3 = forgetPasswordViewModel.H3();
            boolean z8 = i4 == 4;
            Object objX12 = gapComposerH.x();
            if (z8 || objX12 == composer$Companion$Empty$1) {
                forgetPasswordViewModel3 = forgetPasswordViewModel;
                objX12 = new ForgetPasswordComposableKt$ForgetPasswordComposable$9$1(0, forgetPasswordViewModel3, ForgetPasswordViewModel.class, "validatePassword", "validatePassword()V", 0);
                gapComposerH.q(objX12);
            } else {
                forgetPasswordViewModel3 = forgetPasswordViewModel;
            }
            Function0 function6 = (Function0) ((KFunction) objX12);
            boolean zY3 = gapComposerH.y(coroutineScope2) | (i4 == 4) | gapComposerH.K(pagerState);
            Object objX13 = gapComposerH.x();
            if (zY3 || objX13 == composer$Companion$Empty$1) {
                objX13 = new a(forgetPasswordViewModel3, coroutineScope2, pagerState);
                gapComposerH.q(objX13);
            }
            Function0 function7 = (Function0) objX13;
            boolean z9 = (i4 == 4) | (i5 == 32);
            Object objX14 = gapComposerH.x();
            if (z9 || objX14 == composer$Companion$Empty$1) {
                objX14 = new dt(forgetPasswordViewModel3, function0, 16);
                gapComposerH.q(objX14);
            }
            Function0 function8 = (Function0) objX14;
            boolean z10 = i4 == 4;
            Object objX15 = gapComposerH.x();
            if (z10 || objX15 == composer$Companion$Empty$1) {
                final int i8 = 1;
                objX15 = new Function1() { // from class: rz
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i9 = i8;
                        ForgetPasswordViewModel forgetPasswordViewModel4 = forgetPasswordViewModel3;
                        switch (i9) {
                            case 0:
                                String str = (String) obj;
                                str.getClass();
                                forgetPasswordViewModel4.q3(str);
                                break;
                            default:
                                ForgetPasswordTrackingUiModel forgetPasswordTrackingUiModel = (ForgetPasswordTrackingUiModel) obj;
                                forgetPasswordTrackingUiModel.getClass();
                                forgetPasswordViewModel4.y4(forgetPasswordTrackingUiModel);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX15);
            }
            boolean z11 = z;
            gapComposer = gapComposerH;
            ForgetPasswordScreenKt.a(forgetPasswordViewState, pagerState, snackbarHostState5, z11, function1, function2, function3, function4, function5, zH3, function6, function7, function8, (Function1) objX15, gapComposer, KyberEngine.KyberPolyBytes);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(forgetPasswordViewModel3, function0, i2, 15);
        }
    }
}
