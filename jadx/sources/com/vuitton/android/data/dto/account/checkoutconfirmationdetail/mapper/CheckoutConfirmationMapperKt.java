package com.vuitton.android.data.dto.account.checkoutconfirmationdetail.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CartPriceInfoDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationDetailDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationUserDataDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutItemDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.ShippingMethodAdditionalInformationDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.ShippingMethodDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.TaxInfoDto;
import com.vuitton.android.data.dto.account.orders.DeliveryStateDto;
import com.vuitton.android.data.dto.account.orders.TimelineDto;
import com.vuitton.android.data.dto.account.orders.mapper.OrdersMapperKt;
import com.vuitton.android.data.dto.address.mapper.AddressDtoMapperKt;
import com.vuitton.android.data.dto.cart.bff.CartItemCustomizationDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleItemDto;
import com.vuitton.android.data.dto.cart.bff.ImageUrlDto;
import com.vuitton.android.data.dto.cart.bff.mapper.CartPriceMapperKt;
import com.vuitton.android.data.dto.pdp.CustomizationConfigurationDto;
import com.vuitton.android.data.dto.pdp.mapper.ProductCustomizationMapperKt;
import com.vuitton.foundation.model.domain.model.account.orders.Timeline;
import com.vuitton.foundation.model.domain.model.account.orders.Validation;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInfo;
import com.vuitton.foundation.model.domain.model.cart.CheckoutConfirmationDetail;
import com.vuitton.foundation.model.domain.model.cart.CheckoutItem;
import com.vuitton.foundation.model.domain.model.cart.PerfumeSample;
import com.vuitton.foundation.model.domain.model.cart.ShippingMethod;
import com.vuitton.foundation.model.domain.model.cart.ShippingMethodAdditionalInformation;
import com.vuitton.foundation.model.domain.model.cart.TaxInfo;
import com.vuitton.foundation.model.domain.model.product.ProductImage;
import com.vuitton.foundation.model.domain.model.profile.Address;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CheckoutConfirmationMapperKt {
    public static final CheckoutConfirmationDetail a(CheckoutConfirmationDetailDto checkoutConfirmationDetailDto) {
        String str;
        CustomizationConfigurationDto customizationConfigurationDto;
        checkoutConfirmationDetailDto.getClass();
        String str2 = checkoutConfirmationDetailDto.f44292a;
        String str3 = checkoutConfirmationDetailDto.f44293b;
        CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto = checkoutConfirmationDetailDto.r;
        if ((checkoutConfirmationUserDataDto == null || (str = checkoutConfirmationUserDataDto.f44303b) == null) && (str = checkoutConfirmationDetailDto.f44294c) == null) {
            str = "";
        }
        ShippingMethodDto shippingMethodDto = checkoutConfirmationDetailDto.d;
        shippingMethodDto.getClass();
        String str4 = shippingMethodDto.f44316a;
        String str5 = shippingMethodDto.f44317b;
        int i2 = shippingMethodDto.f44318c;
        String str6 = shippingMethodDto.d;
        ShippingMethodAdditionalInformationDto shippingMethodAdditionalInformationDto = shippingMethodDto.f44319e;
        ShippingMethod shippingMethod = new ShippingMethod(str4, str5, i2, str6, shippingMethodAdditionalInformationDto != null ? new ShippingMethodAdditionalInformation(shippingMethodAdditionalInformationDto.f44313a, shippingMethodAdditionalInformationDto.f44314b) : null);
        Address addressB = AddressDtoMapperKt.b(checkoutConfirmationDetailDto.f44295e);
        Address addressB2 = AddressDtoMapperKt.b(checkoutConfirmationDetailDto.f44296f);
        List<CheckoutItemDto> list = checkoutConfirmationDetailDto.g;
        String str7 = str;
        ShippingMethod shippingMethod2 = shippingMethod;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (CheckoutItemDto checkoutItemDto : list) {
            checkoutItemDto.getClass();
            String str8 = checkoutItemDto.f44305a;
            String str9 = checkoutItemDto.f44306b;
            int i3 = checkoutItemDto.f44307c;
            ImageUrlDto imageUrlDto = checkoutItemDto.d;
            imageUrlDto.getClass();
            String str10 = str2;
            String str11 = str3;
            ShippingMethod shippingMethod3 = shippingMethod2;
            ProductImage productImage = new ProductImage(imageUrlDto.f45050a, null, 2, null);
            CartPrice cartPriceA = CartPriceMapperKt.a(checkoutItemDto.f44308e);
            String str12 = checkoutItemDto.f44309f;
            String str13 = checkoutItemDto.g;
            String str14 = checkoutItemDto.f44310h;
            CartItemCustomizationDto cartItemCustomizationDto = checkoutItemDto.f44311i;
            arrayList.add(new CheckoutItem(str8, str9, i3, productImage, cartPriceA, str12, str13, str14, (cartItemCustomizationDto == null || (customizationConfigurationDto = cartItemCustomizationDto.f44985a) == null) ? null : ProductCustomizationMapperKt.b(customizationConfigurationDto), null));
            str2 = str10;
            str3 = str11;
            shippingMethod2 = shippingMethod3;
        }
        String str15 = str2;
        String str16 = str3;
        ShippingMethod shippingMethod4 = shippingMethod2;
        CartPriceInfoDto cartPriceInfoDto = checkoutConfirmationDetailDto.f44297h;
        cartPriceInfoDto.getClass();
        CartPrice cartPriceA2 = CartPriceMapperKt.a(cartPriceInfoDto.f44288a);
        CartPrice cartPriceA3 = CartPriceMapperKt.a(cartPriceInfoDto.f44289b);
        CartPrice cartPriceA4 = CartPriceMapperKt.a(cartPriceInfoDto.f44290c);
        List<TaxInfoDto> list2 = cartPriceInfoDto.d;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (TaxInfoDto taxInfoDto : list2) {
            taxInfoDto.getClass();
            arrayList2.add(new TaxInfo(taxInfoDto.f44321a, taxInfoDto.f44322b, CartPriceMapperKt.a(taxInfoDto.f44323c)));
        }
        CartPriceInfo cartPriceInfo = new CartPriceInfo(cartPriceA2, cartPriceA3, cartPriceA4, arrayList2);
        boolean z = checkoutConfirmationDetailDto.f44298i;
        String str17 = checkoutConfirmationDetailDto.f44299j;
        String str18 = checkoutConfirmationDetailDto.f44300k;
        TimelineDto timelineDto = checkoutConfirmationDetailDto.l;
        Validation validationB = OrdersMapperKt.b(timelineDto.f44435a);
        List list3 = timelineDto.f44436b;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            arrayList3.add(OrdersMapperKt.a((DeliveryStateDto) it.next()));
        }
        Timeline timeline = new Timeline(validationB, arrayList3);
        List<CartSampleItemDto> list4 = checkoutConfirmationDetailDto.m;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
        for (CartSampleItemDto cartSampleItemDto : list4) {
            cartSampleItemDto.getClass();
            String str19 = cartSampleItemDto.f45014a;
            arrayList4.add(new PerfumeSample(str19, str19, cartSampleItemDto.f45015b, cartSampleItemDto.f45016c, cartSampleItemDto.f45017e, cartSampleItemDto.d));
            cartPriceInfo = cartPriceInfo;
        }
        return new CheckoutConfirmationDetail(str15, str16, str7, shippingMethod4, addressB, addressB2, arrayList, cartPriceInfo, z, str17, str18, timeline, arrayList4, checkoutConfirmationDetailDto.n, checkoutConfirmationDetailDto.o, checkoutConfirmationDetailDto.p, checkoutConfirmationDetailDto.q, checkoutConfirmationUserDataDto != null ? checkoutConfirmationUserDataDto.f44302a : null);
    }
}
