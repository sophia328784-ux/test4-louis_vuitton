package com.vuitton.android.presentation.screen.repairs.list.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.f10;
import defpackage.ts0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairListEmptyScreenKt {
    public static final void a(ComposableLambdaImpl composableLambdaImpl, boolean z, Function0 function0, boolean z2, Function0 function1, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 23608468);
        if ((i2 & 6) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i3 = (gapComposerC.y(composableLambdaImpl2) ? 4 : 2) | i2;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerC.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerC.y(function1) ? 16384 : 8192;
        }
        if (gapComposerC.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerC;
            ScaffoldKt.a(null, composableLambdaImpl2, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-1242696667, new ts0(function0, function1, z, z2), gapComposerC), gapComposer, ((i3 << 3) & 112) | 805306368, NSType.MAILB);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f10(composableLambdaImpl, z, function0, z2, function1, i2);
        }
    }
}
