package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceDetailMapperKt {
    public static final CareServiceAddressDto a(CareServiceAddress careServiceAddress) {
        careServiceAddress.getClass();
        String str = careServiceAddress.f66825a;
        if (str == null) {
            str = null;
        }
        return new CareServiceAddressDto(str, careServiceAddress.f66826b, careServiceAddress.f66827c, careServiceAddress.d, careServiceAddress.f66828e, careServiceAddress.f66829f, careServiceAddress.g, careServiceAddress.f66830h, careServiceAddress.f66831i, careServiceAddress.f66832j, careServiceAddress.f66833k, careServiceAddress.l, careServiceAddress.m);
    }
}
