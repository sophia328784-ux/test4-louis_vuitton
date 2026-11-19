package com.vuitton.android.presentation.screen.account.addressbook.components;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookViewState;
import defpackage.n4;
import defpackage.o0;
import defpackage.u1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressBookScreenKt {
    public static final void a(Function2 function2, AddressBookViewState addressBookViewState, Function0 function0, Function2 function3, Function1 function1, Function0 function4, Composer composer, int i2) {
        GapComposer gapComposer;
        function2.getClass();
        addressBookViewState.getClass();
        function0.getClass();
        function3.getClass();
        function1.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-753612406);
        int i3 = i2 | (gapComposerH.y(addressBookViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function2, ComposableLambdaKt.b(383175717, new o0(function0, 5), gapComposerH), null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-285139429, new n4(1, addressBookViewState, function3, LVModalBottomSheetKt.f(0, 7, gapComposerH, null), function1, function4), gapComposerH), gapComposer, 805306800, 505);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(function2, addressBookViewState, function0, function3, function1, function4, i2, 3);
        }
    }
}
