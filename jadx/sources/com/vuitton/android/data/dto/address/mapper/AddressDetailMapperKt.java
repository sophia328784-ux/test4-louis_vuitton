package com.vuitton.android.data.dto.address.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.address.AddressDetailDto;
import com.vuitton.foundation.model.domain.model.account.address.AddressDetails;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressDetailMapperKt {
    public static final AddressDetails a(AddressDetailDto addressDetailDto) {
        addressDetailDto.getClass();
        return new AddressDetails(addressDetailDto.f44454a, addressDetailDto.f44455b, addressDetailDto.f44456c, addressDetailDto.d, addressDetailDto.f44457e, addressDetailDto.f44458f);
    }
}
