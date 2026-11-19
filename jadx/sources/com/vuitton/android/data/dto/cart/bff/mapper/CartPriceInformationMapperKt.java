package com.vuitton.android.data.dto.cart.bff.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto;
import com.vuitton.android.data.dto.cart.bff.CartPriceInformationDto;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInformation;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartPriceInformationMapperKt {
    public static final CartPriceInformation a(CartPriceInformationDto cartPriceInformationDto) {
        cartPriceInformationDto.getClass();
        CartPrice cartPriceA = CartPriceMapperKt.a(cartPriceInformationDto.f45001a);
        CartPrice cartPriceA2 = CartPriceMapperKt.a(cartPriceInformationDto.f45002b);
        CartPriceDto cartPriceDto = cartPriceInformationDto.f45003c;
        CartPrice cartPriceA3 = cartPriceDto != null ? CartPriceMapperKt.a(cartPriceDto) : null;
        CartPriceDto cartPriceDto2 = cartPriceInformationDto.d;
        CartPrice cartPriceA4 = cartPriceDto2 != null ? CartPriceMapperKt.a(cartPriceDto2) : null;
        CartPriceDto cartPriceDto3 = cartPriceInformationDto.f45004e;
        return new CartPriceInformation(cartPriceA, cartPriceA2, cartPriceA3, cartPriceA4, cartPriceDto3 != null ? CartPriceMapperKt.a(cartPriceDto3) : null, null, 32, null);
    }
}
