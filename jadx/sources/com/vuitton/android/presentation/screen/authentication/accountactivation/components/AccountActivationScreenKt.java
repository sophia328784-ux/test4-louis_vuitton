package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutContext;
import com.vuitton.android.presentation.screen.authentication.common.components.NativeAuthenticationLayoutKt;
import defpackage.e3;
import defpackage.f3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationScreenKt {
    public static final void a(AccountActivationViewState accountActivationViewState, PagerState pagerState, SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, Function1 function1, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Composer composer, int i2) {
        int i3;
        Function2 function8;
        Function0 function9;
        Function1 function10;
        Function0 function11;
        Function0 function12;
        Function0 function13;
        GapComposer gapComposer;
        accountActivationViewState.getClass();
        pagerState.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(580223194);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(accountActivationViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(pagerState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function8 = function2;
            i3 |= gapComposerH.y(function8) ? 2048 : 1024;
        } else {
            function8 = function2;
        }
        if ((i2 & 24576) == 0) {
            function9 = function0;
            i3 |= gapComposerH.y(function9) ? 16384 : 8192;
        } else {
            function9 = function0;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            function10 = function1;
            i3 |= gapComposerH.y(function10) ? 131072 : 65536;
        } else {
            function10 = function1;
        }
        if ((1572864 & i2) == 0) {
            function11 = function3;
            i3 |= gapComposerH.y(function11) ? 1048576 : 524288;
        } else {
            function11 = function3;
        }
        if ((12582912 & i2) == 0) {
            function12 = function4;
            i3 |= gapComposerH.y(function12) ? 8388608 : 4194304;
        } else {
            function12 = function4;
        }
        if ((100663296 & i2) == 0) {
            function13 = function5;
            i3 |= gapComposerH.y(function13) ? 67108864 : 33554432;
        } else {
            function13 = function5;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i4 = i3;
        int i5 = gapComposerH.y(function7) ? 4 : 2;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            NativeAuthenticationLayoutKt.a(null, NativeAuthenticationLayoutContext.ACCOUNT_ACTIVATION, pagerState, (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i), null, null, accountActivationViewState.f53393a, null, snackbarHostState, null, null, null, function6, function7, false, ComposableLambdaKt.b(-434653169, new e3(accountActivationViewState, function8, function13, (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r), function9, function10, function11, function12), gapComposerH), gapComposer, ((i4 << 3) & 896) | 48 | ((i4 << 18) & 234881024), ((i4 >> 21) & 896) | ImageMetadata.EDGE_MODE | ((i5 << 9) & 7168), 20145);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f3(accountActivationViewState, pagerState, snackbarHostState, function2, function0, function1, function3, function4, function5, function6, function7, i2);
        }
    }
}
