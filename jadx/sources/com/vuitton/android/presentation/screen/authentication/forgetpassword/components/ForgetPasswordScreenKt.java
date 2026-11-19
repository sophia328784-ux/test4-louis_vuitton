package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutContext;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordEmailKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordResetCodeKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordResetKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import defpackage.uz;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ForgetPasswordScreenKt {
    public static final void a(final ForgetPasswordViewState forgetPasswordViewState, final PagerState pagerState, SnackbarHostState snackbarHostState, final boolean z, final Function1 function1, final Function0 function0, final Function0 function2, final Function1 function3, final Function2 function4, final boolean z2, final Function0 function5, Function0 function6, Function0 function7, final Function1 function8, Composer composer, int i2) {
        GapComposer gapComposer;
        forgetPasswordViewState.getClass();
        pagerState.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        GapComposer gapComposerH = composer.h(-106487716);
        int i3 = i2 | (gapComposerH.y(forgetPasswordViewState) ? 4 : 2) | (gapComposerH.K(pagerState) ? 32 : 16) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.b(z2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            final SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX;
            int i5 = i4 << 3;
            gapComposer = gapComposerH;
            NativeAuthenticationLayoutKt.a(null, NativeAuthenticationLayoutContext.FORGET_PASSWORD, pagerState, focusManager, null, null, forgetPasswordViewState.f53588c, null, snackbarHostState, null, null, null, function6, function7, false, ComposableLambdaKt.b(803870417, new Function4() { // from class: tz
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int i6;
                    ColumnScope columnScope = (ColumnScope) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Composer composer2 = (Composer) obj3;
                    int iIntValue2 = ((Integer) obj4).intValue();
                    columnScope.getClass();
                    if ((iIntValue2 & 6) == 0) {
                        i6 = (composer2.K(columnScope) ? 4 : 2) | iIntValue2;
                    } else {
                        i6 = iIntValue2;
                    }
                    if ((iIntValue2 & 48) == 0) {
                        i6 |= composer2.d(iIntValue) ? 32 : 16;
                    }
                    final int i7 = 0;
                    final int i8 = 1;
                    if (composer2.p(i6 & 1, (i6 & 147) != 146)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        ForgetPasswordViewState forgetPasswordViewState2 = forgetPasswordViewState;
                        final Function1 function9 = function8;
                        final SoftwareKeyboardController softwareKeyboardController2 = softwareKeyboardController;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (iIntValue == 0) {
                            composer2.L(-574640132);
                            String str = forgetPasswordViewState2.f53586a;
                            boolean z3 = forgetPasswordViewState2.f53588c;
                            boolean zK = composer2.K(function9) | composer2.K(softwareKeyboardController2);
                            final Function0 function10 = function0;
                            boolean zK2 = zK | composer2.K(function10);
                            Object objX2 = composer2.x();
                            if (zK2 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new Function0() { // from class: vz
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i9 = i7;
                                        Function0 function11 = function10;
                                        SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController2;
                                        Function1 function12 = function9;
                                        switch (i9) {
                                            case 0:
                                                function12.invoke(ForgetPasswordTrackingUiModel.OnSendCodeCtaEvent.f53580a);
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                function11.mo47invoke();
                                                break;
                                            default:
                                                function12.invoke(ForgetPasswordTrackingUiModel.OnForgetPasswordConfirmEvent.f53577a);
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                function11.mo47invoke();
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX2);
                            }
                            ForgetPasswordEmailKt.a(columnScope, str, z, z3, function1, (Function0) objX2, function9, composer2, i6 & 14);
                            composer2.F();
                        } else if (iIntValue == 1) {
                            composer2.L(-633419107);
                            String str2 = forgetPasswordViewState2.f53587b;
                            boolean z4 = forgetPasswordViewState2.f53588c;
                            String str3 = forgetPasswordViewState2.f53589e;
                            boolean zK3 = composer2.K(function9);
                            Function0 function11 = function2;
                            boolean zK4 = zK3 | composer2.K(function11);
                            Object objX3 = composer2.x();
                            if (zK4 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new wz(function9, function11, 0);
                                composer2.q(objX3);
                            }
                            Function0 function12 = (Function0) objX3;
                            final PagerState pagerState2 = pagerState;
                            boolean zK5 = composer2.K(pagerState2);
                            final CoroutineScope coroutineScope2 = coroutineScope;
                            boolean zY = zK5 | composer2.y(coroutineScope2) | composer2.K(function9) | composer2.K(softwareKeyboardController2);
                            Object objX4 = composer2.x();
                            if (zY || objX4 == composer$Companion$Empty$1) {
                                objX4 = new Function0() { // from class: com.vuitton.android.presentation.screen.authentication.forgetpassword.components.b
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        PagerState pagerState3 = pagerState2;
                                        if (pagerState3.k() < 2) {
                                            BuildersKt.c(coroutineScope2, null, null, new ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1(function9, softwareKeyboardController2, pagerState3, null), 3);
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX4);
                            }
                            ForgetPasswordResetCodeKt.a(columnScope, str2, z4, str3, function12, function3, (Function0) objX4, function9, composer2, i6 & 14);
                            composer2.F();
                        } else if (iIntValue != 2) {
                            composer2.L(-631900975);
                            composer2.F();
                        } else {
                            composer2.L(-574590543);
                            boolean z5 = forgetPasswordViewState2.f53588c;
                            boolean zK6 = composer2.K(function9) | composer2.K(softwareKeyboardController2);
                            final Function0 function13 = function5;
                            boolean zK7 = zK6 | composer2.K(function13);
                            Object objX5 = composer2.x();
                            if (zK7 || objX5 == composer$Companion$Empty$1) {
                                objX5 = new Function0() { // from class: vz
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i9 = i8;
                                        Function0 function14 = function13;
                                        SoftwareKeyboardController softwareKeyboardController3 = softwareKeyboardController2;
                                        Function1 function15 = function9;
                                        switch (i9) {
                                            case 0:
                                                function15.invoke(ForgetPasswordTrackingUiModel.OnSendCodeCtaEvent.f53580a);
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                function14.mo47invoke();
                                                break;
                                            default:
                                                function15.invoke(ForgetPasswordTrackingUiModel.OnForgetPasswordConfirmEvent.f53577a);
                                                if (softwareKeyboardController3 != null) {
                                                    softwareKeyboardController3.b();
                                                }
                                                function14.mo47invoke();
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX5);
                            }
                            ForgetPasswordResetKt.a(columnScope, forgetPasswordViewState2, z2, z5, function4, (Function0) objX5, function9, composer2, i6 & 14);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, ((i3 << 3) & 896) | 100663344, (i5 & 896) | ImageMetadata.EDGE_MODE | (i5 & 7168), 20145);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uz(forgetPasswordViewState, pagerState, snackbarHostState, z, function1, function0, function2, function3, function4, z2, function5, function6, function7, function8, i2);
        }
    }
}
