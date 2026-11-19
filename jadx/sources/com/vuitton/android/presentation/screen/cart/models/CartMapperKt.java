package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.foundation.model.domain.model.cart.Cart;
import com.vuitton.foundation.model.domain.model.cart.CartItem;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInformation;
import com.vuitton.foundation.model.domain.model.cart.CartSample;
import com.vuitton.foundation.model.domain.model.cart.FormattedTaxDetails;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.cart.PerfumeSample;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartMapperKt {
    public static final CartPriceInformationUiModel a(CartPriceInformation cartPriceInformation) {
        cartPriceInformation.getClass();
        CartPriceUiModel cartPriceUiModelB = b(cartPriceInformation.f66920a);
        CartPriceUiModel cartPriceUiModelB2 = b(cartPriceInformation.f66921b);
        CartPrice cartPrice = cartPriceInformation.f66922c;
        CartPriceUiModel cartPriceUiModelB3 = cartPrice != null ? b(cartPrice) : null;
        CartPrice cartPrice2 = cartPriceInformation.d;
        CartPriceUiModel cartPriceUiModelB4 = cartPrice2 != null ? b(cartPrice2) : null;
        CartPrice cartPrice3 = cartPriceInformation.f66923e;
        CartPriceUiModel cartPriceUiModelB5 = cartPrice3 != null ? b(cartPrice3) : null;
        FormattedTaxDetails formattedTaxDetails = cartPriceInformation.f66924f;
        return new CartPriceInformationUiModel(cartPriceUiModelB, cartPriceUiModelB2, cartPriceUiModelB3, cartPriceUiModelB4, cartPriceUiModelB5, formattedTaxDetails != null ? new FormattedTaxDetailsUiModel(formattedTaxDetails.f66969a, formattedTaxDetails.f66970b, formattedTaxDetails.f66971c, formattedTaxDetails.d) : null);
    }

    public static final CartPriceUiModel b(CartPrice cartPrice) {
        cartPrice.getClass();
        return new CartPriceUiModel(cartPrice.f66914a, cartPrice.f66915b, cartPrice.f66916c);
    }

    public static final CartUiModel c(Cart cart, boolean z, boolean z2) {
        CartSampleUiModel cartSampleUiModel;
        cart.getClass();
        String str = cart.f66895a;
        int i2 = cart.f66896b;
        List list = cart.f66897c;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(CartItemMapperKt.b((CartItem) it.next(), z, z2));
        }
        CartPriceInformation cartPriceInformation = cart.d;
        CartPriceInformationUiModel cartPriceInformationUiModelA = cartPriceInformation != null ? a(cartPriceInformation) : null;
        GiftOption giftOption = cart.f66898e;
        boolean z3 = cart.f66899f;
        ShoppingBag shoppingBag = cart.g;
        boolean z4 = cart.f66900h;
        CartSample cartSample = cart.f66901i;
        if (cartSample != null) {
            int i3 = cartSample.f66928b;
            boolean z5 = cartSample.f66929c;
            List list2 = cartSample.f66927a;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(d((PerfumeSample) it2.next()));
            }
            cartSampleUiModel = new CartSampleUiModel(arrayList2, i3, z5);
        } else {
            cartSampleUiModel = null;
        }
        return new CartUiModel(str, i2, arrayList, cartPriceInformationUiModelA, giftOption, z3, shoppingBag, z4, cartSampleUiModel);
    }

    public static final PerfumeSampleUiModel d(PerfumeSample perfumeSample) {
        perfumeSample.getClass();
        return new PerfumeSampleUiModel(perfumeSample.f66987a, perfumeSample.f66988b, perfumeSample.f66989c, perfumeSample.d, perfumeSample.f66990e, PerfumeSampleState.NORMAL);
    }
}
