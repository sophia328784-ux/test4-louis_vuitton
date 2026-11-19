package com.vuitton.android.presentation.screen.account.addressbook.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import defpackage.a3;
import defpackage.g2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressEmptyScreenKt {
    public static final void a(Function2 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1663835300);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function2) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScaffoldKt.a(null, function2, null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-905057293, new a3(function0, 2), gapComposerH), gapComposerH, ((i3 << 3) & 112) | 805306368, NSType.MAILB);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(function2, function0, i2, 2);
        }
    }
}
