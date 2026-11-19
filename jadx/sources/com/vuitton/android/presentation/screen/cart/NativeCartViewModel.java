package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeCartViewModel extends ContactUsDelegate {
    void Bb();

    Flow D2();

    void F1();

    SharedFlow G8();

    void H8();

    void J6(String str);

    void M5(CartItemUiModel cartItemUiModel, int i2);

    SharedFlowImpl O9();

    void P4(boolean z, CartItemUiModel cartItemUiModel);

    void W9(CartTrackingUiModel cartTrackingUiModel);

    void Za();

    StateFlow a();

    void a9(CartItemUiModel cartItemUiModel);

    Flow b();

    void c();

    void fa(GiftOption giftOption);

    void g1(String str);

    Flow i9();

    void mc();

    Flow o4();

    void ra(PerfumeSampleUiModel perfumeSampleUiModel, boolean z);

    void uc();

    void v4(PerfumeSampleUiModel perfumeSampleUiModel);

    void v8();

    void vb(boolean z, CartItemUiModel cartItemUiModel);

    Flow y2();
}
