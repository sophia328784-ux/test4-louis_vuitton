package com.vuitton.android.presentation.screen.authentication.login.legacy;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.foundation.logger.Logger;
import defpackage.fs0;
import defpackage.iq0;
import defpackage.n00;
import defpackage.p0;
import defpackage.p61;
import defpackage.q8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewLoginScreenKt {
    public static final void a(AuthenticationViewModel authenticationViewModel, AkamaiSecurityHelper akamaiSecurityHelper, AnalyticsWebInterface analyticsWebInterface, LinkHandler linkHandler, Logger logger, String str, String str2, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        Object webViewLoginScreenKt$WebViewLoginScreen$2$1;
        AppCompatActivity appCompatActivity;
        SnackbarHostState snackbarHostState;
        Context context;
        authenticationViewModel.getClass();
        akamaiSecurityHelper.getClass();
        analyticsWebInterface.getClass();
        linkHandler.getClass();
        logger.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1898403154);
        int i3 = i2 | (gapComposerH.K(authenticationViewModel) ? 4 : 2) | (gapComposerH.y(akamaiSecurityHelper) ? 32 : 16) | (gapComposerH.y(analyticsWebInterface) ? 256 : 128) | (gapComposerH.y(linkHandler) ? 2048 : 1024) | (gapComposerH.y(logger) ? 16384 : 8192) | (gapComposerH.K(str) ? 131072 : 65536) | (gapComposerH.K(str2) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (i3 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AppCompatActivity appCompatActivityB = ContextExtKt.b(context2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX2;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new WebViewLoginScreenKt$WebViewLoginScreen$1$1(authenticationViewModel, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean zY = ((i3 & 29360128) == 8388608) | (i4 == 4) | gapComposerH.y(coroutineScope) | gapComposerH.y(context2);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                appCompatActivity = appCompatActivityB;
                snackbarHostState = snackbarHostState2;
                context = context2;
                webViewLoginScreenKt$WebViewLoginScreen$2$1 = new WebViewLoginScreenKt$WebViewLoginScreen$2$1(authenticationViewModel, coroutineScope, function0, snackbarHostState, context, null);
                gapComposerH.q(webViewLoginScreenKt$WebViewLoginScreen$2$1);
            } else {
                appCompatActivity = appCompatActivityB;
                webViewLoginScreenKt$WebViewLoginScreen$2$1 = objX4;
                snackbarHostState = snackbarHostState2;
                context = context2;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) webViewLoginScreenKt$WebViewLoginScreen$2$1);
            boolean zY2 = (i4 == 4) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new WebViewLoginScreenKt$WebViewLoginScreen$3$1(authenticationViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            boolean zY3 = gapComposerH.y(linkHandler) | (i4 == 4) | gapComposerH.y(appCompatActivity) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new iq0(authenticationViewModel, linkHandler, appCompatActivity, str);
                gapComposerH.q(objX6);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(153964046, new p61(function0, 0), gapComposerH), null, ComposableLambdaKt.b(-118090548, new fs0(snackbarHostState, 10), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1347294819, new p0((Object) authenticationViewModel, (Object) akamaiSecurityHelper, (Object) analyticsWebInterface, (Object) logger, (Function1) objX6, (Object) str2, 24), gapComposerH), gapComposer, 805309488, 501);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, linkHandler, logger, str, str2, function0, i2);
        }
    }
}
