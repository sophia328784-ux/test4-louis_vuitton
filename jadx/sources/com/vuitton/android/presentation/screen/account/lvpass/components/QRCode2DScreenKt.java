package com.vuitton.android.presentation.screen.account.lvpass.components;

import android.graphics.Bitmap;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt;
import defpackage.a;
import defpackage.kn0;
import defpackage.ni0;
import defpackage.uv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QRCode2DScreenKt {
    public static final void a(Bitmap bitmap, Function0 function0, Modifier modifier, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "QRCode2DScreen");
        }
        bitmap.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(265906473);
        int i3 = i2 | (gapComposerH.y(bitmap) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("QRCode2DScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScreenshotListenerKt.a(function1, gapComposerH, (i3 >> 9) & 14);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(360839141, new kn0(function0, 6), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-992369478, new ni0(dTFunctionNameModifier, bitmap, 14), gapComposerH), gapComposer, 805306416, NSType.MAILB);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) bitmap, (Object) function0, (Object) modifier2, (Object) function1, i2, 28);
        }
    }
}
