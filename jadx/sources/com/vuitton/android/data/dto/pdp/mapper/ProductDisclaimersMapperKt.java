package com.vuitton.android.data.dto.pdp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductDisclaimersMapperKt {
    public static final ProductDisclaimer a(ProductDisclaimerDto productDisclaimerDto) {
        String str;
        String strH;
        if (productDisclaimerDto == null || (str = productDisclaimerDto.f46272a) == null || (strH = StringKtExtKt.h(str)) == null) {
            return null;
        }
        return new ProductDisclaimer(strH, productDisclaimerDto.f46274c, productDisclaimerDto.f46273b);
    }
}
