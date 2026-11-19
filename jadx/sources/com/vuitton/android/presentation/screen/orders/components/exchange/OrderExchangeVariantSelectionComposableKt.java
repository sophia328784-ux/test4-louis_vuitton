package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import defpackage.n00;
import defpackage.u1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderExchangeVariantSelectionComposableKt {
    public static final void a(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, Function1 function1, Function3 function3, Function0 function0, Function1 function2, Function0 function4, Composer composer, int i2) {
        orderReturnOrExchangeViewModel.getClass();
        function1.getClass();
        function3.getClass();
        function0.getClass();
        function2.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1871560934);
        int i3 = i2 | (gapComposerH.K(orderReturnOrExchangeViewModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(orderReturnOrExchangeViewModel.getH(), gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            boolean zK = gapComposerH.K(mutableStateB) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new OrderExchangeVariantSelectionComposableKt$OrderExchangeVariantSelectionComposable$1$1(mutableStateB, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            int i4 = i3 << 3;
            OrderExchangeVariantSelectionScreenKt.b((OrderReturnOrExchangeViewState) mutableStateB.getF10755b(), snackbarHostState, function1, function3, function0, function2, function4, gapComposerH, (i4 & 896) | 48 | (i4 & 7168) | (57344 & i4) | (458752 & i4) | (i4 & 3670016));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(orderReturnOrExchangeViewModel, function1, function3, function0, function2, function4, i2, 19);
        }
    }
}
