package com.vuitton.android.presentation.screen.account.editavatar;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import defpackage.g1;
import defpackage.o0;
import defpackage.rs;
import defpackage.w;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditAvatarScreenKt {
    public static final void a(EditAvatarViewState editAvatarViewState, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        editAvatarViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1702884975);
        int i3 = i2 | (gapComposerH.K(editAvatarViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(630278229, new o0(function0, 27), gapComposerH), ComposableLambdaKt.b(-1455564586, new rs(editAvatarViewState, function1, 8), gapComposerH), null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(155280032, new g1(editAvatarViewState, function2, function3, 17), gapComposerH), gapComposer, 805306800, 505);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) editAvatarViewState, (Object) function0, function1, function2, function3, i2, 15);
        }
    }
}
