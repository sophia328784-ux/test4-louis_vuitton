package com.vuitton.android.data.dto.cart.bff.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartPriceMapperKt {
    public static final CartPrice a(CartPriceDto cartPriceDto) {
        cartPriceDto.getClass();
        return new CartPrice(cartPriceDto.f44997a, cartPriceDto.f44998b, cartPriceDto.f44999c);
    }
}
