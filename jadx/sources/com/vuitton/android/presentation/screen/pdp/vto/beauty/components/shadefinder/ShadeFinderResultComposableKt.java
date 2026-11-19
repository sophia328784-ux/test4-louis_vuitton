package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVShadeFinderLocalProviderKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import defpackage.kj0;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "permissionsState", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "bottomSheet", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "itemToNotify", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderResultComposableKt {
    public static final void a(BeautyVtoViewModel beautyVtoViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        beautyVtoViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-498941265);
        int i3 = i2 | (gapComposerH.K(beautyVtoViewModel) ? 4 : 2) | (gapComposerH.K(permissionsViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVShadeFinderLocalProviderKt.a(ComposableLambdaKt.b(1049737743, new b(beautyVtoViewModel, permissionsViewModel, function0, function1, function2), gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) beautyVtoViewModel, (Object) permissionsViewModel, function0, function1, (Function) function2, i2, 18);
        }
    }
}
