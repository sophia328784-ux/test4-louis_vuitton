package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import defpackage.a3;
import defpackage.b3;
import defpackage.f1;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationPasswordStepKt {
    public static final void a(ColumnScope columnScope, AccountActivationViewState accountActivationViewState, Function2 function2, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        columnScope.getClass();
        accountActivationViewState.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1751147047);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(columnScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(accountActivationViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = i3 << 9;
            DynamicFormComposableKt.a(null, LVColorScheme.INVERT, accountActivationViewState.f53396e, false, LVAppDesignKitTheme.l(gapComposerH).f48416e, function2, null, function1, null, null, false, false, false, new a3(function0, 0), new a3(function0, 1), null, ComposableLambdaKt.b(33974883, new f1(columnScope, accountActivationViewState, i4), gapComposerH), null, false, gapComposerH, (458752 & i5) | 48 | (i5 & 29360128), 1572864, 433993);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("AccountActivationPasswordStep"), 1.0f, true));
            LVButtonKt.b((i3 << 15) & 1879048192, 376, gapComposerH, ModifierExtKt.e(PaddingKt.k(tr.d("AccountActivationPasswordStep", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "account_activation_continue"), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.cta_continue), function1, false, accountActivationViewState.f53397f, false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3((Object) columnScope, (Object) accountActivationViewState, (Object) function2, (Object) function0, (Object) function1, i2, 0);
        }
    }
}
