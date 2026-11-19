package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import com.vuitton.android.presentation.screen.cart.components.giftmessage.models.GiftTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface GiftMessageViewModel {
    SharedFlow C9();

    void F5();

    StateFlow a();

    void i3(GiftTrackingUiModel giftTrackingUiModel);

    void m2(boolean z);

    void y9(String str);
}
