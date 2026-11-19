package com.vuitton.android.presentation.screen.wishlist;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistTrackingUiModel;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WishlistViewModel extends ContactUsDelegate {
    void D5(String str, String str2);

    void D8(String str);

    void E3();

    boolean F();

    void G();

    void K9(String str);

    Flow W7();

    void X4(String str, String str2);

    StateFlow a();

    Flow b();

    void c();

    void h1(WishlistTrackingUiModel wishlistTrackingUiModel);

    Flow hc();

    void ub(ArrayList arrayList);

    void z2();
}
