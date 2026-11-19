package com.vuitton.android.presentation.screen.authentication.base;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import defpackage.a;
import defpackage.iq0;
import defpackage.ku0;
import defpackage.pq0;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "isLoading", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewAuthContentKt {
    public static final void a(AuthenticationViewModel authenticationViewModel, AkamaiSecurityHelper akamaiSecurityHelper, AnalyticsWebInterface analyticsWebInterface, Function0 function0, Function0 function1, Modifier modifier, Composer composer, int i2) {
        MutableState mutableState;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "WebViewAuthContent");
        }
        authenticationViewModel.getClass();
        akamaiSecurityHelper.getClass();
        analyticsWebInterface.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-142668746);
        int i3 = i2 | (gapComposerH.K(authenticationViewModel) ? 4 : 2) | (gapComposerH.y(akamaiSecurityHelper) ? 32 : 16) | (gapComposerH.y(analyticsWebInterface) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.K(modifierE) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState2 = (MutableState) objX;
            MutableState mutableStateC = FlowExtKt.c(authenticationViewModel.getY(), null, gapComposerH, 0, 7);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new WebViewAuthContentKt$WebViewAuthContent$1$1(authenticationViewModel, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean zY = (i4 == 4) | gapComposerH.y(akamaiSecurityHelper);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new WebViewAuthContentKt$WebViewAuthContent$2$1(authenticationViewModel, akamaiSecurityHelper, mutableState2, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = modifierE.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean zY2 = ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | gapComposerH.y(analyticsWebInterface);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                mutableState = mutableState2;
                iq0 iq0Var = new iq0(mutableState, function0, function1, analyticsWebInterface, 2);
                gapComposerH.q(iq0Var);
                objX4 = iq0Var;
            } else {
                mutableState = mutableState2;
            }
            AndroidView_androidKt.a((Function1) objX4, pq0.i("WebViewAuthContent", fillElement), null, gapComposerH, 48, 4);
            if (((Boolean) mutableStateC.getF10755b()).booleanValue()) {
                gapComposerH.L(-306141058);
                ProgressViewKt.a(BackgroundKt.b(new DTFunctionNameModifier("WebViewAuthContent").o(fillElement), Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), RectangleShapeKt.f8913a), 0L, true, gapComposerH, KyberEngine.KyberPolyBytes, 2);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-305752814);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new ku0(16, mutableState);
                gapComposerH.q(objX5);
            }
            EffectsKt.c(unit, (Function1) objX5, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, function0, function1, modifierE, i2, 9);
        }
    }
}
