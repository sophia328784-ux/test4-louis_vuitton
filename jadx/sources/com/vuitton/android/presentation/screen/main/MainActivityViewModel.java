package com.vuitton.android.presentation.screen.main;

import com.vuitton.android.presentation.applink.AppLinkTrackingUiModel;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.main.models.BottomBarTrackingUiModel;
import com.vuitton.android.presentation.screen.main.models.MainActivityUiEvent;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MainActivityViewModel extends ContactUsDelegate {
    boolean A4();

    SharedFlow C5();

    void F6(MainActivityUiEvent mainActivityUiEvent);

    void N8(Integer num);

    SharedFlow O3();

    void S1(FeedTab feedTab);

    void S2();

    StateFlow a();

    void f0();

    void gb(AppLinkTrackingUiModel appLinkTrackingUiModel);

    Flow h();

    void h2(boolean z);

    void k2(boolean z);

    void k8();

    void lb(String str);

    void p2(BottomBarTrackingUiModel bottomBarTrackingUiModel);

    void q();

    Flow qb();
}
