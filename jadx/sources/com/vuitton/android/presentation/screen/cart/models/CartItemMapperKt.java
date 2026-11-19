package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductCustomizationMapperKt;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductDisclaimerMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.cart.CartItem;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInformation;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.ProductImage;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationConfiguration;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartItemMapperKt {
    public static final ChatProductModel a(CartItemUiModel cartItemUiModel) {
        CartPriceUiModel cartPriceUiModel;
        CartPriceUiModel cartPriceUiModel2;
        cartItemUiModel.getClass();
        String str = cartItemUiModel.f55149h;
        String str2 = cartItemUiModel.g;
        CartPriceInformationUiModel cartPriceInformationUiModel = cartItemUiModel.f55145b;
        String str3 = null;
        BigDecimal bigDecimal = (cartPriceInformationUiModel == null || (cartPriceUiModel2 = cartPriceInformationUiModel.d) == null) ? null : new BigDecimal(String.valueOf(cartPriceUiModel2.f55158a));
        String str4 = cartItemUiModel.f55144a;
        SkuId.Companion companion = SkuId.INSTANCE;
        str4.getClass();
        int i2 = cartItemUiModel.d;
        if (cartPriceInformationUiModel != null && (cartPriceUiModel = cartPriceInformationUiModel.f55153a) != null) {
            str3 = cartPriceUiModel.f55160c;
        }
        return new ChatProductModel(str, str2, "", bigDecimal, null, str4, i2, str3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final CartItemUiModel b(CartItem cartItem, boolean z, boolean z2) {
        String str;
        ArrayList arrayList;
        boolean z3;
        CustomizationConfigurationUiModel customizationConfigurationUiModelC;
        StringResourceUiModel.ResId resId;
        ProductDisclaimerUiModel productDisclaimerUiModel;
        ProductDisclaimerUiModel productDisclaimerUiModelA;
        ProductImage productImage;
        cartItem.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str2 = cartItem.f66905a;
        CustomizationConfiguration customizationConfiguration = cartItem.C;
        companion.getClass();
        SkuIdUiModel.Companion.c(str2);
        CartPriceInformation cartPriceInformation = cartItem.f66906b;
        CartPriceInformationUiModel cartPriceInformationUiModelA = cartPriceInformation != null ? CartMapperKt.a(cartPriceInformation) : null;
        boolean z4 = cartItem.f66907c;
        int i2 = cartItem.d;
        String str3 = cartItem.f66908e;
        String str4 = cartItem.f66909f;
        List list = cartItem.l;
        if (list == null || (productImage = (ProductImage) CollectionsKt.firstOrNull(list)) == null || (str = productImage.f67907a) == null) {
            str = cartItem.g;
        }
        String str5 = cartItem.f66910h;
        String str6 = cartItem.f66911i;
        String str7 = cartItem.f66912j;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        String str8 = cartItem.f66913k;
        companion2.getClass();
        str8.getClass();
        List list2 = cartItem.l;
        String str9 = cartItem.m;
        boolean z5 = cartItem.n;
        boolean z6 = cartItem.o;
        CartPriceInformationUiModel cartPriceInformationUiModel = cartPriceInformationUiModelA;
        boolean z7 = cartItem.p;
        boolean z8 = cartItem.q;
        boolean z9 = cartItem.r;
        boolean z10 = cartItem.s;
        String str10 = cartItem.t;
        List list3 = cartItem.u;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
        for (Iterator it = list3.iterator(); it.hasNext(); it = it) {
            String str11 = ((SkuId) it.next()).f67933a;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.c(str11);
            arrayList2.add(new SkuIdUiModel(str11));
        }
        String str12 = cartItem.v;
        boolean z11 = cartItem.A;
        boolean z12 = cartItem.z;
        if (z11 || z12 || customizationConfiguration != null) {
            arrayList = arrayList2;
            ProductDisclaimer productDisclaimer = cartItem.B;
            if (productDisclaimer != null) {
                z3 = z6;
                productDisclaimerUiModelA = ProductDisclaimerMapperKt.d(productDisclaimer, z11, z12, customizationConfiguration != null);
            } else {
                z3 = z6;
                Integer num = cartItem.w;
                Integer num2 = cartItem.x;
                if (num == null || num2 == null) {
                    if (z11) {
                        customizationConfigurationUiModelC = null;
                        resId = new StringResourceUiModel.ResId(R.string.global_backorder_delay_message, null, 2, null);
                    } else {
                        customizationConfigurationUiModelC = null;
                        resId = z12 ? new StringResourceUiModel.ResId(R.string.pre_order_disclaimer, null, 2, null) : null;
                    }
                    if (resId == null) {
                        productDisclaimerUiModel = customizationConfigurationUiModelC;
                    } else {
                        StringResourceUiModel.Empty empty = StringResourceUiModel.Empty.f51825b;
                        productDisclaimerUiModel = new ProductDisclaimerUiModel(resId, empty, empty);
                    }
                } else {
                    productDisclaimerUiModelA = ProductDisclaimerMapperKt.a(z, z2, z11, z12, productDisclaimer, num, num2, cartItem.y, null, null);
                }
            }
            productDisclaimerUiModel = productDisclaimerUiModelA;
            customizationConfigurationUiModelC = null;
        } else {
            arrayList = arrayList2;
            z3 = z6;
            customizationConfigurationUiModelC = null;
            productDisclaimerUiModel = 0;
        }
        boolean z13 = cartItem.A;
        boolean z14 = cartItem.z;
        if (customizationConfiguration != null) {
            customizationConfigurationUiModelC = ProductCustomizationMapperKt.c(customizationConfiguration);
        }
        return new CartItemUiModel(str2, cartPriceInformationUiModel, z4, i2, str3, str4, str, str5, str6, str7, str8, list2, z5, str9, z3, z7, z8, z9, z10, str10, arrayList, str12, false, false, z14, z13, productDisclaimerUiModel, customizationConfigurationUiModelC, cartItem.D, cartItem.E, 12582912, null);
    }
}
