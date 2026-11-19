package com.vuitton.android.presentation.screen.account.addressbook;

import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddressBookViewModel {
    void B3(String str);

    void Z4(AddressBookTrackingUiModel addressBookTrackingUiModel);

    StateFlow a();

    void h8();

    void x0();
}
