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
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import defpackage.ji0;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderExchangeReviewComposableKt {
    public static final void a(OrderReturnOrExchangeViewModel orderReturnOrExchangeViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        orderReturnOrExchangeViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1411034509);
        int i3 = i2 | (gapComposerH.K(orderReturnOrExchangeViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(orderReturnOrExchangeViewModel.getH(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            ExchangeSetupResponseUiModel exchangeSetupResponseUiModel = ((OrderReturnOrExchangeViewState) mutableStateB.getF10755b()).m;
            boolean zK = gapComposerH.K(mutableStateB);
            int i4 = i3 & ImageMetadata.JPEG_GPS_COORDINATES;
            boolean z = zK | (i4 == 131072);
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$1$1(mutableStateB, null, function4);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, exchangeSetupResponseUiModel, (Function2) objX2);
            ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel = ((OrderReturnOrExchangeViewState) mutableStateB.getF10755b()).n;
            boolean zK2 = gapComposerH.K(mutableStateB) | (i4 == 131072);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$2$1(mutableStateB, null, function4);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, exchangeSubmitResponseUiModel, (Function2) objX3);
            ExchangeSetupResponseUiModel exchangeSetupResponseUiModel2 = ((OrderReturnOrExchangeViewState) mutableStateB.getF10755b()).m;
            ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel2 = ((OrderReturnOrExchangeViewState) mutableStateB.getF10755b()).n;
            boolean zK3 = gapComposerH.K(mutableStateB) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zK3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1(context, snackbarHostState, mutableStateB, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.g(exchangeSetupResponseUiModel2, exchangeSubmitResponseUiModel2, (Function2) objX4, gapComposerH);
            int i5 = i3 << 3;
            OrderExchangeReviewScreenKt.d((OrderReturnOrExchangeViewState) mutableStateB.getF10755b(), snackbarHostState, function0, function1, function2, function3, gapComposerH, (i5 & 896) | 48 | (i5 & 7168) | (57344 & i5) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ji0(orderReturnOrExchangeViewModel, function0, function1, function2, function3, function4, i2, 0);
        }
    }
}
