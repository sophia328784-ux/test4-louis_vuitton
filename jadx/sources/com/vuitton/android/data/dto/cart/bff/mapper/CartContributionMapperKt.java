package com.vuitton.android.data.dto.cart.bff.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartContributionDto;
import com.vuitton.android.data.dto.cart.bff.GiftingContributionDto;
import com.vuitton.android.data.dto.cart.bff.PackagingContributionDto;
import com.vuitton.android.data.dto.cart.bff.ShoppingBagContributionDto;
import com.vuitton.foundation.model.domain.model.cart.CartContribution;
import com.vuitton.foundation.model.domain.model.cart.GiftingContribution;
import com.vuitton.foundation.model.domain.model.cart.PackagingContribution;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBagContribution;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartContributionMapperKt {
    public static final CartContribution a(CartContributionDto cartContributionDto) {
        cartContributionDto.getClass();
        GiftingContributionDto giftingContributionDto = cartContributionDto.f44970a;
        giftingContributionDto.getClass();
        GiftingContribution giftingContribution = new GiftingContribution(giftingContributionDto.f45046a, giftingContributionDto.f45047b, giftingContributionDto.f45048c);
        ShoppingBagContributionDto shoppingBagContributionDto = cartContributionDto.f44971b;
        shoppingBagContributionDto.getClass();
        ShoppingBagContribution shoppingBagContribution = new ShoppingBagContribution(shoppingBagContributionDto.f45061a, shoppingBagContributionDto.f45062b, shoppingBagContributionDto.f45063c);
        PackagingContributionDto packagingContributionDto = cartContributionDto.f44972c;
        packagingContributionDto.getClass();
        return new CartContribution(giftingContribution, shoppingBagContribution, new PackagingContribution(packagingContributionDto.f45055a, packagingContributionDto.f45056b, packagingContributionDto.f45057c, packagingContributionDto.d));
    }
}
