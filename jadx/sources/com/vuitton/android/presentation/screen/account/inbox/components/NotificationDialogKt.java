package com.vuitton.android.presentation.screen.account.inbox.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import defpackage.a;
import defpackage.ff;
import defpackage.i1;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationDialogKt {
    public static final void a(Modifier modifier, InboxNotificationUiModel inboxNotificationUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        InboxNotificationUiModel inboxNotificationUiModel2;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "NotificationDialog");
        }
        GapComposer gapComposerC = a.c(function0, function1, composer, 365121015);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            inboxNotificationUiModel2 = inboxNotificationUiModel;
            i3 |= gapComposerC.y(inboxNotificationUiModel2) ? 32 : 16;
        } else {
            inboxNotificationUiModel2 = inboxNotificationUiModel;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerC.y(function1) ? 2048 : 1024;
        }
        int i4 = i3;
        if (gapComposerC.p(i4 & 1, (i4 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NotificationDialog");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerC;
            AndroidDialog_androidKt.a(function0, new DialogProperties(false, false, false, 3, (DefaultConstructorMarker) null), ComposableLambdaKt.b(357996302, new ff(dTFunctionNameModifier, WindowInsetsKt.e(WindowInsets_androidKt.a(gapComposerC), gapComposerC).getD(), function1, function0, inboxNotificationUiModel2, ScrollKt.b(gapComposerC)), gapComposerC), gapComposer, ((i4 >> 6) & 14) | 432, 0);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1((Object) modifier2, (Object) inboxNotificationUiModel, function0, (Function) function1, i2, 28);
        }
    }
}
