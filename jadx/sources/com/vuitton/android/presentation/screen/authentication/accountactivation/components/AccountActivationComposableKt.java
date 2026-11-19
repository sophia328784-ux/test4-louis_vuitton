package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import defpackage.c;
import defpackage.n00;
import defpackage.t2;
import defpackage.u;
import defpackage.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationComposableKt {
    public static final void a(AccountActivationViewModel accountActivationViewModel, Function0 function0, final Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Object accountActivationComposableKt$AccountActivationComposable$3$1;
        final CoroutineScope coroutineScope;
        final PagerState pagerState;
        SnackbarHostState snackbarHostState;
        boolean z;
        boolean z2;
        PagerState pagerState2;
        AccountActivationViewModel accountActivationViewModel2 = accountActivationViewModel;
        accountActivationViewModel2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1054502370);
        int i3 = i2 | (gapComposerH.K(accountActivationViewModel2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new v(13);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, KyberEngine.KyberPolyBytes, 3);
            MutableState mutableStateC = FlowExtKt.c(accountActivationViewModel2.getR(), null, gapComposerH, 0, 7);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX2;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX3;
            NotificationBuilder notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
            int i4 = i3 & 14;
            boolean zK = gapComposerH.K(pagerStateB) | (i4 == 4);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new AccountActivationComposableKt$AccountActivationComposable$1$1(pagerStateB, accountActivationViewModel2, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX4);
            Unit unit = Unit.f71739a;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new AccountActivationComposableKt$AccountActivationComposable$2$1(accountActivationViewModel2, snackbarHostState2, context, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            boolean zK2 = (i4 == 4) | gapComposerH.K(pagerStateB) | gapComposerH.y(context) | gapComposerH.y(notificationBuilderA);
            Object objX6 = gapComposerH.x();
            if (zK2 || objX6 == composer$Companion$Empty$1) {
                coroutineScope = coroutineScope2;
                accountActivationComposableKt$AccountActivationComposable$3$1 = new AccountActivationComposableKt$AccountActivationComposable$3$1(accountActivationViewModel, pagerStateB, context, snackbarHostState2, notificationBuilderA, null);
                accountActivationViewModel2 = accountActivationViewModel;
                pagerState = pagerStateB;
                snackbarHostState = snackbarHostState2;
                gapComposerH.q(accountActivationComposableKt$AccountActivationComposable$3$1);
            } else {
                pagerState = pagerStateB;
                accountActivationComposableKt$AccountActivationComposable$3$1 = objX6;
                coroutineScope = coroutineScope2;
                snackbarHostState = snackbarHostState2;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) accountActivationComposableKt$AccountActivationComposable$3$1);
            int i5 = i3 & 896;
            boolean zY2 = gapComposerH.y(coroutineScope) | gapComposerH.K(pagerState) | (i5 == 256);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new Function0() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.components.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        BuildersKt.c(coroutineScope, null, null, new AccountActivationComposableKt$AccountActivationComposable$4$1$1(pagerState, function1, null), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            BackHandlerKt.a(false, (Function0) objX7, gapComposerH, 0, 1);
            AccountActivationViewState accountActivationViewState = (AccountActivationViewState) mutableStateC.getF10755b();
            boolean z3 = i4 == 4;
            Object objX8 = gapComposerH.x();
            if (z3 || objX8 == composer$Companion$Empty$1) {
                z = true;
                objX8 = new c(accountActivationViewModel2, 1);
                gapComposerH.q(objX8);
            } else {
                z = true;
            }
            Function2 function2 = (Function2) objX8;
            boolean z4 = i4 != 4 ? false : z;
            Object objX9 = gapComposerH.x();
            if (z4 || objX9 == composer$Companion$Empty$1) {
                z2 = z;
                pagerState2 = pagerState;
                AccountActivationComposableKt$AccountActivationComposable$6$1 accountActivationComposableKt$AccountActivationComposable$6$1 = new AccountActivationComposableKt$AccountActivationComposable$6$1(0, accountActivationViewModel2, AccountActivationViewModel.class, "confirmPassword", "confirmPassword()V", 0);
                gapComposerH.q(accountActivationComposableKt$AccountActivationComposable$6$1);
                objX9 = accountActivationComposableKt$AccountActivationComposable$6$1;
            } else {
                z2 = z;
                pagerState2 = pagerState;
            }
            Function0 function3 = (Function0) ((KFunction) objX9);
            boolean z5 = i4 != 4 ? false : z2;
            Object objX10 = gapComposerH.x();
            if (z5 || objX10 == composer$Companion$Empty$1) {
                AccountActivationComposableKt$AccountActivationComposable$7$1 accountActivationComposableKt$AccountActivationComposable$7$1 = new AccountActivationComposableKt$AccountActivationComposable$7$1(1, accountActivationViewModel, AccountActivationViewModel.class, "updateOtpCode", "updateOtpCode(Ljava/lang/String;)V", 0);
                gapComposerH.q(accountActivationComposableKt$AccountActivationComposable$7$1);
                objX10 = accountActivationComposableKt$AccountActivationComposable$7$1;
            }
            Function1 function4 = (Function1) ((KFunction) objX10);
            boolean z6 = i4 != 4 ? false : z2;
            Object objX11 = gapComposerH.x();
            if (z6 || objX11 == composer$Companion$Empty$1) {
                AccountActivationComposableKt$AccountActivationComposable$8$1 accountActivationComposableKt$AccountActivationComposable$8$1 = new AccountActivationComposableKt$AccountActivationComposable$8$1(0, accountActivationViewModel, AccountActivationViewModel.class, "resendCode", "resendCode()V", 0);
                gapComposerH.q(accountActivationComposableKt$AccountActivationComposable$8$1);
                objX11 = accountActivationComposableKt$AccountActivationComposable$8$1;
            }
            Function0 function5 = (Function0) ((KFunction) objX11);
            boolean z7 = i4 != 4 ? false : z2;
            Object objX12 = gapComposerH.x();
            if (z7 || objX12 == composer$Companion$Empty$1) {
                AccountActivationComposableKt$AccountActivationComposable$9$1 accountActivationComposableKt$AccountActivationComposable$9$1 = new AccountActivationComposableKt$AccountActivationComposable$9$1(0, accountActivationViewModel, AccountActivationViewModel.class, "confirmActivation", "confirmActivation()V", 0);
                gapComposerH.q(accountActivationComposableKt$AccountActivationComposable$9$1);
                objX12 = accountActivationComposableKt$AccountActivationComposable$9$1;
            }
            Function0 function6 = (Function0) ((KFunction) objX12);
            Object objX13 = gapComposerH.x();
            if (objX13 == composer$Companion$Empty$1) {
                objX13 = new v(14);
                gapComposerH.q(objX13);
            }
            Function0 function7 = (Function0) objX13;
            PagerState pagerState3 = pagerState2;
            boolean zK3 = gapComposerH.K(pagerState3) | (i5 == 256 ? z2 : false);
            Object objX14 = gapComposerH.x();
            if (zK3 || objX14 == composer$Companion$Empty$1) {
                objX14 = new t2(function1, pagerState3, 0);
                gapComposerH.q(objX14);
            }
            gapComposer = gapComposerH;
            AccountActivationScreenKt.a(accountActivationViewState, pagerState3, snackbarHostState, function2, function3, function4, function5, function6, function0, function7, (Function0) objX14, gapComposer, ((i3 << 21) & 234881024) | 805306752);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(accountActivationViewModel, function0, function1, i2, 3);
        }
    }
}
