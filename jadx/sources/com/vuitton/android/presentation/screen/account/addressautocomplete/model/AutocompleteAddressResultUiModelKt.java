package com.vuitton.android.presentation.screen.account.addressautocomplete.model;

import com.vuitton.foundation.model.domain.model.account.address.AddressDetails;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AutocompleteAddressResultUiModelKt {
    public static final AutocompleteAddressResultUiModel a(AddressDetails addressDetails) {
        addressDetails.getClass();
        return new AutocompleteAddressResultUiModel(addressDetails.f66245a, addressDetails.f66246b, addressDetails.f66247c, addressDetails.d, addressDetails.f66248e, addressDetails.f66249f);
    }
}
