package com.vuitton.android.presentation.screen.authentication.register.legacy;

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
import defpackage.f3;
import defpackage.fs0;
import defpackage.g4;
import defpackage.n00;
import defpackage.n4;
import defpackage.p61;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewRegisterScreenKt {
    public static final void a(AuthenticationViewModel authenticationViewModel, AkamaiSecurityHelper akamaiSecurityHelper, AnalyticsWebInterface analyticsWebInterface, LinkHandler linkHandler, Logger logger, String str, String str2, String str3, Function0 function0, Function1 function1, Function0 function2, Composer composer, int i2, int i3) {
        int i4;
        Function1 function3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        SnackbarHostState snackbarHostState;
        Function0 function4;
        boolean z;
        authenticationViewModel.getClass();
        akamaiSecurityHelper.getClass();
        analyticsWebInterface.getClass();
        linkHandler.getClass();
        logger.getClass();
        GapComposer gapComposerC = defpackage.a.c(function0, function2, composer, 1996245492);
        int i5 = i2 | (gapComposerC.K(authenticationViewModel) ? 4 : 2) | (gapComposerC.y(akamaiSecurityHelper) ? 32 : 16) | (gapComposerC.y(analyticsWebInterface) ? 256 : 128) | (gapComposerC.y(linkHandler) ? 2048 : 1024) | (gapComposerC.y(logger) ? 16384 : 8192) | (gapComposerC.K(str) ? 131072 : 65536) | (gapComposerC.K(str2) ? 1048576 : 524288) | (gapComposerC.K(str3) ? 8388608 : 4194304) | (gapComposerC.y(function0) ? 67108864 : 33554432);
        int i6 = i3 & 512;
        if (i6 != 0) {
            i4 = i5 | 805306368;
        } else {
            i4 = i5 | (gapComposerC.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456);
        }
        int i7 = i4;
        char c2 = gapComposerC.y(function2) ? (char) 4 : (char) 2;
        if (gapComposerC.p(i7 & 1, ((i7 & 306783379) == 306783378 && (c2 & 3) == 2) ? false : true)) {
            Function1 function5 = i6 != 0 ? null : function1;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b);
            AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerC);
                gapComposerC.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            char c3 = c2;
            Object objX2 = gapComposerC.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerC);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX2;
            Unit unit = Unit.f71739a;
            int i8 = i7 & 14;
            int i9 = i7 & 29360128;
            Function1 function6 = function5;
            boolean z2 = (i8 == 4) | (i9 == 8388608);
            Object objX3 = gapComposerC.x();
            if (z2 || objX3 == composer$Companion$Empty$2) {
                objX3 = new WebViewRegisterScreenKt$WebViewRegisterScreen$1$1(authenticationViewModel, str3, null);
                gapComposerC.q(objX3);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX3);
            int i10 = c3 & 14;
            boolean zY = (i9 == 8388608) | (i8 == 4) | gapComposerC.y(coroutineScope) | gapComposerC.y(context) | (i10 == 4);
            Object objX4 = gapComposerC.x();
            if (zY || objX4 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                snackbarHostState = snackbarHostState2;
                WebViewRegisterScreenKt$WebViewRegisterScreen$2$1 webViewRegisterScreenKt$WebViewRegisterScreen$2$1 = new WebViewRegisterScreenKt$WebViewRegisterScreen$2$1(authenticationViewModel, coroutineScope, str3, function2, snackbarHostState, context, null);
                function4 = function2;
                gapComposerC.q(webViewRegisterScreenKt$WebViewRegisterScreen$2$1);
                objX4 = webViewRegisterScreenKt$WebViewRegisterScreen$2$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                snackbarHostState = snackbarHostState2;
                function4 = function2;
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX4);
            boolean z3 = (i10 == 4) | (i8 == 4);
            Object objX5 = gapComposerC.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new WebViewRegisterScreenKt$WebViewRegisterScreen$3$1(authenticationViewModel, function4, null);
                gapComposerC.q(objX5);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX5);
            if (function6 != 0) {
                gapComposerC.L(2034208545);
                boolean z4 = ((i7 & 1879048192) == 536870912) | (i8 == 4);
                Object objX6 = gapComposerC.x();
                if (z4 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new WebViewRegisterScreenKt$WebViewRegisterScreen$4$1(authenticationViewModel, function6, null);
                    gapComposerC.q(objX6);
                }
                EffectsKt.e(gapComposerC, unit, (Function2) objX6);
                z = false;
                gapComposerC.Z(false);
            } else {
                z = false;
                gapComposerC.L(2034374798);
                gapComposerC.Z(false);
            }
            boolean zY2 = gapComposerC.y(linkHandler) | (i8 != 4 ? z : true) | gapComposerC.y(appCompatActivityB) | ((i7 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072 ? true : z) | ((i7 & 3670016) == 1048576 ? true : z) | ((i7 & 234881024) == 67108864 ? true : z);
            Object objX7 = gapComposerC.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                g4 g4Var = new g4(authenticationViewModel, linkHandler, appCompatActivityB, str, str2, function0, 10);
                gapComposerC.q(g4Var);
                objX7 = g4Var;
            }
            ScaffoldKt.a(null, ComposableLambdaKt.b(883266736, new p61(function4, 1), gapComposerC), null, ComposableLambdaKt.b(1150440558, new fs0(snackbarHostState, 11), gapComposerC), null, 0, 0L, 0L, null, ComposableLambdaKt.b(263952005, new n4(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, logger, (Function1) objX7, 22), gapComposerC), gapComposerC, 805309488, 501);
            function3 = function6;
        } else {
            gapComposerC.D();
            function3 = function1;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f3(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, linkHandler, logger, str, str2, str3, function0, function3, function2, i2, i3);
        }
    }
}
