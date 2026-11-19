package com.vuitton.android.presentation.screen.options.notifications.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationPermissionBottomSheetKt {
    public static final void a(String str, StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, StringResourceUiModel stringResourceUiModel3, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        Function0 function2;
        Function0 function3;
        GapComposer gapComposer;
        str.getClass();
        stringResourceUiModel.getClass();
        stringResourceUiModel3.getClass();
        GapComposer gapComposerH = composer.h(-161958640);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(stringResourceUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(stringResourceUiModel2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(stringResourceUiModel3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function2 = function0;
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        } else {
            function2 = function0;
        }
        if ((196608 & i2) == 0) {
            function3 = function1;
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        } else {
            function3 = function1;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, str, null, null, StringResourceUiModelKt.a(stringResourceUiModel, context), null, StringResourceUiModelKt.a(stringResourceUiModel3, context), null, false, null, function2, null, false, null, null, stringResourceUiModel2 != null ? StringResourceUiModelKt.a(stringResourceUiModel2, context) : null, false, function3, gapComposer, (i3 << 6) & 896, ((i3 >> 9) & 112) | ((i3 << 12) & 1879048192), 391003);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(str, stringResourceUiModel, stringResourceUiModel2, stringResourceUiModel3, function0, function1, i2);
        }
    }
}
