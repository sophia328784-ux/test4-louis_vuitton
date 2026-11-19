package com.vuitton.android.data.dto.cart.bff.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.BundleDto;
import com.vuitton.android.data.dto.cart.bff.CartDto;
import com.vuitton.android.data.dto.cart.bff.CartItemCustomizationDto;
import com.vuitton.android.data.dto.cart.bff.CartItemDto;
import com.vuitton.android.data.dto.cart.bff.CartPriceInformationDto;
import com.vuitton.android.data.dto.cart.bff.CartResponseMultipleDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleItemDto;
import com.vuitton.android.data.dto.cart.bff.ImageUrlDto;
import com.vuitton.android.data.dto.cart.bff.ShoppingBagDto;
import com.vuitton.android.data.dto.cart.common.CartErrorCodeDto;
import com.vuitton.android.data.dto.cart.common.CartErrorDto;
import com.vuitton.android.data.dto.pdp.CustomizationConfigurationDto;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.android.data.dto.pdp.mapper.ProductCustomizationMapperKt;
import com.vuitton.android.data.dto.pdp.mapper.ProductDisclaimersMapperKt;
import com.vuitton.foundation.model.domain.error.cart.CartError;
import com.vuitton.foundation.model.domain.error.cart.CartMultipleError;
import com.vuitton.foundation.model.domain.error.cart.GenericCartError;
import com.vuitton.foundation.model.domain.error.cart.MaxPersonalizationQuantityReached;
import com.vuitton.foundation.model.domain.error.cart.MaxQuantityReached;
import com.vuitton.foundation.model.domain.error.cart.MaxSkuQuantityReached;
import com.vuitton.foundation.model.domain.error.cart.OutOfStockError;
import com.vuitton.foundation.model.domain.model.cart.Cart;
import com.vuitton.foundation.model.domain.model.cart.CartItem;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInformation;
import com.vuitton.foundation.model.domain.model.cart.CartResponse;
import com.vuitton.foundation.model.domain.model.cart.CartSample;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.cart.PerfumeSample;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBag;
import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.ProductImage;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45078a;

        static {
            int[] iArr = new int[CartErrorCodeDto.values().length];
            try {
                iArr[CartErrorCodeDto.MAX_QUANTITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CartErrorCodeDto.MAX_QUANTITY_BY_SKU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CartErrorCodeDto.MAX_QUANTITY_PERSONALIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CartErrorCodeDto.OUT_OF_STOCK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f45078a = iArr;
        }
    }

    public static final CartMultipleError a(CartErrorDto cartErrorDto) {
        CartError maxQuantityReached;
        cartErrorDto.getClass();
        String str = cartErrorDto.f45082c;
        String str2 = cartErrorDto.f45081b;
        CartErrorCodeDto cartErrorCodeDto = cartErrorDto.f45080a;
        int i2 = cartErrorCodeDto == null ? -1 : WhenMappings.f45078a[cartErrorCodeDto.ordinal()];
        if (i2 == 1) {
            if (str2 == null) {
                str2 = "";
            }
            maxQuantityReached = new MaxQuantityReached(str2);
        } else if (i2 == 2) {
            if (str2 == null) {
                str2 = "";
            }
            maxQuantityReached = new MaxSkuQuantityReached(str2);
        } else if (i2 == 3) {
            if (str2 == null) {
                str2 = "";
            }
            maxQuantityReached = new MaxPersonalizationQuantityReached(str2);
        } else if (i2 != 4) {
            if (str2 == null) {
                str2 = "";
            }
            maxQuantityReached = new GenericCartError(str2);
        } else {
            if (str2 == null) {
                str2 = "";
            }
            maxQuantityReached = new OutOfStockError(str2);
        }
        return new CartMultipleError(str, maxQuantityReached, null);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0130  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Cart b(CartDto cartDto) {
        int i2;
        CartPriceInformation cartPriceInformation;
        ArrayList arrayList;
        CartSample cartSample;
        List list;
        int i3;
        String str;
        ArrayList arrayList2;
        boolean z;
        CustomizationConfigurationDto customizationConfigurationDto;
        cartDto.getClass();
        String str2 = cartDto.f44977a;
        CartSampleDto cartSampleDto = cartDto.f44982h;
        String str3 = cartDto.f44980e;
        String str4 = "";
        String str5 = str2 == null ? "" : str2;
        int i4 = cartDto.f44978b;
        List list2 = cartDto.f44979c;
        if (list2 != null) {
            List list3 = list2;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                CartItemDto cartItemDto = (CartItemDto) it.next();
                cartItemDto.getClass();
                Boolean bool = cartItemDto.o;
                Boolean bool2 = Boolean.FALSE;
                Boolean bool3 = cartItemDto.p;
                Boolean bool4 = Boolean.TRUE;
                boolean z2 = Intrinsics.c(bool3, bool4) || (Intrinsics.c(bool, bool4) && bool2.equals(bool4));
                boolean z3 = (Intrinsics.c(bool3, bool4) || (Intrinsics.c(bool, bool4) && bool2.equals(bool4)) || !Intrinsics.c(bool, bool4)) ? false : true;
                String str6 = cartItemDto.f44987a;
                String str7 = str6 == null ? str4 : str6;
                ProductId.Companion companion = ProductId.INSTANCE;
                String str8 = cartItemDto.f44988b;
                companion.getClass();
                if (str8 == null) {
                    str8 = ProductId.f67904b;
                }
                String str9 = str8;
                SkuId.Companion companion2 = SkuId.INSTANCE;
                String str10 = cartItemDto.f44989c;
                companion2.getClass();
                if (str10 == null) {
                    str10 = SkuId.f67932b;
                }
                String str11 = str10;
                CartPriceInformation cartPriceInformationA = CartPriceInformationMapperKt.a(cartItemDto.n);
                boolean z4 = cartItemDto.f44993i;
                int i5 = cartItemDto.m;
                String str12 = cartItemDto.f44991f;
                String str13 = cartItemDto.g;
                String str14 = cartItemDto.f44994j;
                Iterator it2 = it;
                String str15 = cartItemDto.d;
                String str16 = str15 == null ? str4 : str15;
                String str17 = cartItemDto.f44992h;
                String str18 = str17 == null ? str4 : str17;
                List list4 = cartItemDto.f44995k;
                if (list4 != null) {
                    List list5 = list4;
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list5, 10));
                    Iterator it3 = list5.iterator();
                    while (it3.hasNext()) {
                        arrayList4.add(new ProductImage(((ImageUrlDto) it3.next()).f45050a, null, 2, null));
                        it3 = it3;
                        i4 = i4;
                    }
                    i3 = i4;
                    str = null;
                    arrayList2 = arrayList4;
                } else {
                    i3 = i4;
                    str = null;
                    arrayList2 = null;
                }
                String str19 = cartItemDto.f44990e;
                if (cartItemDto.l) {
                    z = true;
                } else {
                    Boolean bool5 = Boolean.TRUE;
                    if (Intrinsics.c(bool, bool5) || Intrinsics.c(bool3, bool5)) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                BundleDto bundleDto = cartItemDto.s;
                boolean z5 = bundleDto != null;
                boolean z6 = bundleDto == null;
                String str20 = bundleDto != null ? bundleDto.f44967a : str;
                String str21 = str20 == null ? str4 : str20;
                EmptyList emptyList = EmptyList.f71768b;
                ProductDisclaimerDto productDisclaimerDto = cartItemDto.q;
                ProductDisclaimer productDisclaimerA = productDisclaimerDto != null ? ProductDisclaimersMapperKt.a(productDisclaimerDto) : str;
                CartItemCustomizationDto cartItemCustomizationDto = cartItemDto.t;
                arrayList3.add(new CartItem(str11, cartPriceInformationA, z4, i5, str12, str13, str14, str16, str18, str7, str9, arrayList2, str19, true, false, z, z5, z6, false, str21, emptyList, "", null, null, null, z2, z3, productDisclaimerA, (cartItemCustomizationDto == null || (customizationConfigurationDto = cartItemCustomizationDto.f44985a) == null) ? str : ProductCustomizationMapperKt.b(customizationConfigurationDto), cartItemDto.u, cartItemDto.v, 29376512, null));
                it = it2;
                str4 = str4;
                str5 = str5;
                i4 = i3;
            }
            i2 = i4;
            cartPriceInformation = null;
            arrayList = arrayList3;
        } else {
            i2 = i4;
            cartPriceInformation = null;
            arrayList = null;
        }
        String str22 = str5;
        List list6 = arrayList;
        if (arrayList == null) {
            list6 = EmptyList.f71768b;
        }
        List list7 = list6;
        CartPriceInformationDto cartPriceInformationDto = cartDto.d;
        CartPriceInformation cartPriceInformationA2 = cartPriceInformationDto != null ? CartPriceInformationMapperKt.a(cartPriceInformationDto) : cartPriceInformation;
        GiftOption message = (str3 == null || !(!StringsKt.w(str3))) ? Intrinsics.c(cartDto.f44981f, Boolean.TRUE) ? GiftOption.Blank.f66976a : GiftOption.None.f66980a : new GiftOption.Message(str3);
        ShoppingBagDto shoppingBagDto = cartDto.g;
        shoppingBagDto.getClass();
        Boolean bool6 = shoppingBagDto.f45065a;
        Boolean bool7 = Boolean.TRUE;
        ShoppingBag shoppingBag = new ShoppingBag(Intrinsics.c(bool6, bool7), Intrinsics.c(shoppingBagDto.f45066b, bool7));
        boolean z7 = (cartSampleDto == null || (list = cartSampleDto.f45012b) == null || !(list.isEmpty() ^ true)) ? false : true;
        if (cartSampleDto != null) {
            List list8 = cartSampleDto.f45012b;
            List<CartSampleItemDto> list9 = list8;
            ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list9, 10));
            for (CartSampleItemDto cartSampleItemDto : list9) {
                cartSampleItemDto.getClass();
                String str23 = cartSampleItemDto.f45014a;
                arrayList5.add(new PerfumeSample(str23, str23, cartSampleItemDto.f45015b, cartSampleItemDto.f45016c, cartSampleItemDto.f45017e, cartSampleItemDto.d));
            }
            cartSample = new CartSample(arrayList5, cartSampleDto.f45011a, !list8.isEmpty());
        } else {
            cartSample = cartPriceInformation;
        }
        return new Cart(str22, i2, list7, cartPriceInformationA2, message, Intrinsics.c(cartDto.f44983i, Boolean.TRUE), shoppingBag, z7, cartSample);
    }

    public static final CartResponse c(CartResponseMultipleDto cartResponseMultipleDto) {
        List arrayList;
        cartResponseMultipleDto.getClass();
        Cart cartB = b(cartResponseMultipleDto.f45007a);
        List list = cartResponseMultipleDto.f45008b;
        if (list != null) {
            List list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(a((CartErrorDto) it.next()));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        return new CartResponse(cartB, arrayList);
    }
}
