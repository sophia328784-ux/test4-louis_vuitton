package com.vuitton.android.presentation.screen.personalselections.detail.instore;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsInStoreViewModel extends ContactUsDelegate {
    void E(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel);

    void F8();

    void H(PlpProductUiModel plpProductUiModel);

    void K(PlpProductUiModel plpProductUiModel);

    void Na();

    StateFlow a();

    void c();

    Flow f2();

    SharedFlowImpl g();

    void p1(PersonalSelectionsInStoreTrackingUiModel personalSelectionsInStoreTrackingUiModel);

    void t8();
}
