package com.vuitton.android.presentation.screen.options.notifications.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.compose.components.LVTopShadowKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import defpackage.jx;
import defpackage.sw;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationPreferencesKt {
    public static final void a(Modifier modifier, NotificationsPreferencesViewState notificationsPreferencesViewState, Function2 function2, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "NotificationPreferences");
        }
        notificationsPreferencesViewState.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1096307652);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(notificationsPreferencesViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("NotificationPreferences");
            }
            Modifier modifier3 = dTFunctionNameModifier;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = i4 & 14;
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier3);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean zY = gapComposerH.y(notificationsPreferencesViewState) | ((i4 & 896) == 256) | ((i4 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new jx(notificationsPreferencesViewState, function2, function0, 23);
                gapComposerH.q(objX);
            }
            LazyDslKt.a(modifier3, null, null, null, null, null, false, null, (Function1) objX, gapComposerH, i6, 510);
            gapComposer = gapComposerH;
            LVTopShadowKt.a(BoxScopeInstance.f4938a.g(AlphaKt.a(SizeKt.d(new DTFunctionNameModifier("NotificationPreferences"), 1.0f), 0.5f), Alignment.Companion.f8589i), gapComposer, 0);
            gapComposer.Z(true);
            modifier2 = modifier3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sw(modifier2, notificationsPreferencesViewState, function2, function0, i2, i3);
        }
    }
}
