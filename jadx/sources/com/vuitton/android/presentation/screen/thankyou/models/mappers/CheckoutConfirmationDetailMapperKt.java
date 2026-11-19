package com.vuitton.android.presentation.screen.thankyou.models.mappers;

import com.vuitton.android.presentation.screen.cart.models.CartMapperKt;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import com.vuitton.android.presentation.screen.orders.models.mappers.OrderMapperKt;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductCustomizationMapperKt;
import com.vuitton.android.presentation.screen.thankyou.models.CartPriceInfoUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutItemUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ShippingMethodAdditionalInformationUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ShippingMethodUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.TaxInfoUiModel;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInfo;
import com.vuitton.foundation.model.domain.model.cart.CheckoutConfirmationDetail;
import com.vuitton.foundation.model.domain.model.cart.CheckoutItem;
import com.vuitton.foundation.model.domain.model.cart.PerfumeSample;
import com.vuitton.foundation.model.domain.model.cart.ShippingMethod;
import com.vuitton.foundation.model.domain.model.cart.ShippingMethodAdditionalInformation;
import com.vuitton.foundation.model.domain.model.cart.TaxInfo;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationConfiguration;
import com.vuitton.foundation.model.domain.model.profile.Address;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CheckoutConfirmationDetailMapperKt {
    public static final CheckoutConfirmationDetailUiModel a(CheckoutConfirmationDetail checkoutConfirmationDetail) {
        checkoutConfirmationDetail.getClass();
        String str = checkoutConfirmationDetail.f66930a;
        List list = checkoutConfirmationDetail.g;
        String str2 = checkoutConfirmationDetail.f66931b;
        String str3 = checkoutConfirmationDetail.f66932c;
        ShippingMethod shippingMethod = checkoutConfirmationDetail.d;
        String str4 = shippingMethod.f66993a;
        String str5 = shippingMethod.f66994b;
        int i2 = shippingMethod.f66995c;
        String str6 = shippingMethod.d;
        ShippingMethodAdditionalInformation shippingMethodAdditionalInformation = shippingMethod.f66996e;
        ShippingMethodUiModel shippingMethodUiModel = new ShippingMethodUiModel(str4, str5, i2, str6, shippingMethodAdditionalInformation != null ? new ShippingMethodAdditionalInformationUiModel(shippingMethodAdditionalInformation.f66997a, shippingMethodAdditionalInformation.f66998b) : null);
        List list2 = checkoutConfirmationDetail.p;
        List list3 = checkoutConfirmationDetail.q;
        Address address = checkoutConfirmationDetail.f66933e;
        String str7 = address.t;
        String str8 = address.r;
        List<CheckoutItem> list4 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list4, 10));
        for (CheckoutItem checkoutItem : list4) {
            String str9 = checkoutItem.f66941a;
            String str10 = checkoutItem.f66942b;
            int i3 = checkoutItem.f66943c;
            String str11 = str;
            String str12 = checkoutItem.d.f67907a;
            CartPriceUiModel cartPriceUiModelB = CartMapperKt.b(checkoutItem.f66944e);
            String str13 = checkoutItem.f66945f;
            String str14 = str2;
            String str15 = checkoutItem.g;
            String str16 = str3;
            String str17 = checkoutItem.f66946h;
            ArrayList arrayListV = ArraysKt.v(new String[]{str13, str15, str17});
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayListV) {
                String str18 = str15;
                if (!StringsKt.w((String) obj)) {
                    arrayList2.add(obj);
                }
                str15 = str18;
            }
            String str19 = str15;
            CustomizationConfiguration customizationConfiguration = checkoutItem.f66947i;
            arrayList.add(new CheckoutItemUiModel(str9, str10, i3, str12, cartPriceUiModelB, str13, str19, str17, arrayList2, customizationConfiguration != null ? ProductCustomizationMapperKt.c(customizationConfiguration) : null, null));
            str = str11;
            str2 = str14;
            str3 = str16;
        }
        String str20 = str;
        String str21 = str2;
        String str22 = str3;
        Iterator it = list4.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            i4 += ((CheckoutItem) it.next()).f66943c;
        }
        CartPriceInfo cartPriceInfo = checkoutConfirmationDetail.f66935h;
        CartPriceUiModel cartPriceUiModelB2 = CartMapperKt.b(cartPriceInfo.f66917a);
        CartPriceUiModel cartPriceUiModelB3 = CartMapperKt.b(cartPriceInfo.f66918b);
        CartPriceUiModel cartPriceUiModelB4 = CartMapperKt.b(cartPriceInfo.f66919c);
        List list5 = cartPriceInfo.d;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
        for (Iterator it2 = list5.iterator(); it2.hasNext(); it2 = it2) {
            TaxInfo taxInfo = (TaxInfo) it2.next();
            arrayList3.add(new TaxInfoUiModel(taxInfo.f67004a, taxInfo.f67005b, CartMapperKt.b(taxInfo.f67006c)));
        }
        CartPriceInfoUiModel cartPriceInfoUiModel = new CartPriceInfoUiModel(cartPriceUiModelB2, cartPriceUiModelB3, cartPriceUiModelB4, arrayList3);
        boolean z = checkoutConfirmationDetail.f66936i;
        String str23 = checkoutConfirmationDetail.f66937j;
        String str24 = checkoutConfirmationDetail.f66938k;
        TimelineUiModel timelineUiModelC = OrderMapperKt.c(checkoutConfirmationDetail.l);
        List list6 = checkoutConfirmationDetail.m;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list6, 10));
        Iterator it3 = list6.iterator();
        while (it3.hasNext()) {
            arrayList4.add(CartMapperKt.d((PerfumeSample) it3.next()));
        }
        return new CheckoutConfirmationDetailUiModel(str20, str21, str22, shippingMethodUiModel, list2, list3, str7, str8, arrayList, i4, cartPriceInfoUiModel, z, str23, str24, timelineUiModelC, arrayList4, checkoutConfirmationDetail.n, checkoutConfirmationDetail.r);
    }
}
