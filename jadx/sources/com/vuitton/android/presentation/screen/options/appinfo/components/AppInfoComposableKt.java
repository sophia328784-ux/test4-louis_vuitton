package com.vuitton.android.presentation.screen.options.appinfo.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfoViewState;
import defpackage.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AppInfoComposableKt {
    public static final void a(AppInfoViewModel appInfoViewModel, Function0 function0, Function1 function1, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(168205580);
        int i3 = (gapComposerH.K(appInfoViewModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AppInfoScreenKt.b((AppInfoViewState) SnapshotStateKt.b(appInfoViewModel.getF59742e(), gapComposerH).getF10755b(), function0, function1, gapComposerH, i3 & 1008);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(appInfoViewModel, function0, function1, i2, 6);
        }
    }
}
