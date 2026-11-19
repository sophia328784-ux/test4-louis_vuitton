package com.vuitton.android.presentation.screen.account.addressbook.components;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.z4;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressLoadingScreenKt {
    public static final void a(Function2 function2, Composer composer, int i2) {
        function2.getClass();
        GapComposer gapComposerH = composer.h(1984107858);
        boolean z = false;
        if (gapComposerH.p(i2 & 1, (i2 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableSingletons$AddressLoadingScreenKt.f52179a.getClass();
            ScaffoldKt.a(null, function2, null, null, null, 0, 0L, 0L, windowInsetsA, ComposableSingletons$AddressLoadingScreenKt.f52180b, gapComposerH, 805306416, NSType.MAILB);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z4(function2, i2, z);
        }
    }
}
