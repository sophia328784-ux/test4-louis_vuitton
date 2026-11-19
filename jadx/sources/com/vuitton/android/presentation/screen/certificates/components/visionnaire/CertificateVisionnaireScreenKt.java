package com.vuitton.android.presentation.screen.certificates.components.visionnaire;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import defpackage.p0;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateVisionnaireScreenKt {
    public static final void a(CertificateVisionnaireUiModel certificateVisionnaireUiModel, String str, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Composer composer, int i2) {
        int i3;
        Object obj;
        Function1 function4;
        Object obj2;
        Object obj3;
        Object obj4;
        GapComposer gapComposer;
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1055693421);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(certificateVisionnaireUiModel) : gapComposerH.y(certificateVisionnaireUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            obj = str;
            i3 |= gapComposerH.K(obj) ? 32 : 16;
        } else {
            obj = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function4 = function1;
            i3 |= gapComposerH.y(function4) ? 256 : 128;
        } else {
            function4 = function1;
        }
        if ((i2 & 3072) == 0) {
            obj2 = function0;
            i3 |= gapComposerH.y(obj2) ? 2048 : 1024;
        } else {
            obj2 = function0;
        }
        if ((i2 & 24576) == 0) {
            obj3 = function2;
            i3 |= gapComposerH.y(obj3) ? 16384 : 8192;
        } else {
            obj3 = function2;
        }
        if ((196608 & i2) == 0) {
            obj4 = function3;
            i3 |= gapComposerH.y(obj4) ? 131072 : 65536;
        } else {
            obj4 = function3;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Function1 function5 = function4;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, null, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-1186745668, new p0((Object) certificateVisionnaireUiModel, obj2, obj, obj3, obj4, function5, 9), gapComposerH), gapComposer, 805306368, 255);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(certificateVisionnaireUiModel, str, function1, function0, function2, function3, i2);
        }
    }
}
