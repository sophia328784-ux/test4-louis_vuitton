package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import defpackage.q8;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderReturnOrExchangeReasonComposableKt {
    public static final void a(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, Function2 function2, Function2 function3, Function0 function0, Function0 function1, Function0 function4, Function0 function5, Function0 function6, Composer composer, int i2) {
        orderReturnOrExchangeViewModel.getClass();
        function2.getClass();
        function3.getClass();
        function1.getClass();
        function4.getClass();
        GapComposer gapComposerC = defpackage.a.c(function5, function6, composer, 1129552721);
        int i3 = i2 | (gapComposerC.K(orderReturnOrExchangeViewModel) ? 4 : 2) | (gapComposerC.y(function2) ? 32 : 16) | (gapComposerC.y(function3) ? 256 : 128) | (gapComposerC.y(function0) ? 2048 : 1024) | (gapComposerC.y(function1) ? 16384 : 8192) | (gapComposerC.y(function4) ? 131072 : 65536) | (gapComposerC.y(function5) ? 1048576 : 524288) | (gapComposerC.y(function6) ? 8388608 : 4194304);
        if (gapComposerC.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OrderReturnOrExchangeReasonScreenKt.d((OrderReturnOrExchangeViewState) SnapshotStateKt.b(orderReturnOrExchangeViewModel.getH(), gapComposerC).getF10755b(), function2, function3, function0, function1, function4, function5, function6, gapComposerC, i3 & 33554416);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(orderReturnOrExchangeViewModel, function2, function3, function0, function1, function4, function5, function6, i2);
        }
    }
}
