package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.c4;
import defpackage.d4;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddToCartBottomSheetKt {
    public static final void a(String str, String str2, ProductBackground productBackground, String str3, ArrayList arrayList, String str4, boolean z, String str5, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        str.getClass();
        productBackground.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-807481032);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(productBackground.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(arrayList) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(str4) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.K(str5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVCustomBottomSheetContentKt.a(PaddingKt.k(new DTFunctionNameModifier("AddToCartContentBottomSheet"), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, str, null, null, null, null, false, null, null, ComposableLambdaKt.b(-788267251, new c4(str2, productBackground, str3, arrayList, str5, z, function0, str4), gapComposerH), gapComposer, (i3 << 6) & 896, 48, 2042);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d4(str, str2, productBackground, str3, arrayList, str4, z, str5, function0, i2);
        }
    }
}
