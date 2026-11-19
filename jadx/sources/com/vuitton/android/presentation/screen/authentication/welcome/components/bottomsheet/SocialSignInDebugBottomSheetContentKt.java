package com.vuitton.android.presentation.screen.authentication.welcome.components.bottomsheet;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import defpackage.gi0;
import defpackage.yj0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SocialSignInDebugBottomSheetContentKt {
    public static final void a(SocialLoginUiModel socialLoginUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        socialLoginUiModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-2105435378);
        int i3 = i2 | (gapComposerH.K(socialLoginUiModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, "Debug Social Sign In", null, null, null, null, false, null, null, ComposableLambdaKt.b(-1828552989, new yj0(socialLoginUiModel, function0, function1, 11), gapComposerH), gapComposer, KyberEngine.KyberPolyBytes, 48, 2043);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 27, socialLoginUiModel, function0, function1);
        }
    }
}
