package com.vuitton.android.data.dto.pdp.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.PriceDto;
import com.vuitton.foundation.model.domain.model.product.universal.Price;
import com.vuitton.foundation.model.domain.model.product.universal.PriceSpecification;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PriceMapperKt {
    public static final Price a(PriceDto priceDto) {
        priceDto.getClass();
        return new Price(priceDto.f46233a, new PriceSpecification(priceDto.f46235c, priceDto.f46234b));
    }
}
