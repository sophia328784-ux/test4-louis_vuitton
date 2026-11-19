package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.android.core.extensions.NumberExtKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.ECommerceValues;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.jh;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartTrackingUiModelKt {
    public static final CartInfo a(CartUiModel cartUiModel) {
        String str;
        Object next;
        CartPriceUiModel cartPriceUiModel;
        CartPriceUiModel cartPriceUiModel2;
        List list = cartUiModel.f55183c;
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Boolean.valueOf(((CartItemUiModel) it.next()).z));
        }
        Iterator it2 = arrayList.iterator();
        do {
            str = null;
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!((Boolean) next).booleanValue());
        Boolean bool = (Boolean) next;
        List<CartItemUiModel> list3 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList2.add(String.valueOf(((CartItemUiModel) it3.next()).d));
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it4 = list3.iterator();
        while (it4.hasNext()) {
            CartPriceInformationUiModel cartPriceInformationUiModel = ((CartItemUiModel) it4.next()).f55145b;
            arrayList3.add(NumberExtKt.b((cartPriceInformationUiModel == null || (cartPriceUiModel2 = cartPriceInformationUiModel.f55153a) == null) ? 0.0d : cartPriceUiModel2.f55158a));
        }
        String strK = CollectionsKt.K(arrayList2, ",", null, null, null, 62);
        String strK2 = CollectionsKt.K(arrayList3, ",", null, null, null, 62);
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list3, 10));
        for (CartItemUiModel cartItemUiModel : list3) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str2 = cartItemUiModel.f55144a;
            companion.getClass();
            SkuIdUiModel.Companion.b(str2);
            arrayList4.add(new SkuId(str2));
        }
        CartPriceInformationUiModel cartPriceInformationUiModel2 = cartUiModel.d;
        if (cartPriceInformationUiModel2 != null && (cartPriceUiModel = cartPriceInformationUiModel2.f55153a) != null) {
            str = cartPriceUiModel.f55160c;
        }
        if (str == null) {
            str = "";
        }
        return new CartInfo(bool, strK, strK2, arrayList4, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r21v1, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r22v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v20, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [java.util.ArrayList] */
    public static final Hit b(CartTrackingUiModel cartTrackingUiModel, CartUiModel cartUiModel) {
        CartPriceUiModel cartPriceUiModel;
        CartPriceUiModel cartPriceUiModel2;
        ?? arrayList;
        List list;
        CartPriceUiModel cartPriceUiModel3;
        CartPriceUiModel cartPriceUiModel4;
        List list2;
        cartTrackingUiModel.getClass();
        Object obj = null;
        if (cartTrackingUiModel instanceof CartTrackingUiModel.FullScreen) {
            if (cartUiModel != null) {
                CartInfo cartInfoA = a(cartUiModel);
                return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/cart", "cart", null, CollectionsKt.P(new AdditionalProperty.ProductSku(cartInfoA.d), new AdditionalProperty.Currency(cartInfoA.f55142e), new AdditionalProperty.BackOrderStatus(cartInfoA.f55139a), new AdditionalProperty.Quantity(cartInfoA.f55140b), new AdditionalProperty.Price(cartInfoA.f55141c)), 1, null);
            }
        } else if (cartTrackingUiModel instanceof CartTrackingUiModel.SamplesSectionClick) {
            if (cartUiModel != null) {
                CartInfo cartInfoA2 = a(cartUiModel);
                return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", null, "cart_page", "open_perfumes_samples", null, CollectionsKt.P(new AdditionalProperty.ProductSku(cartInfoA2.d), new AdditionalProperty.Currency(cartInfoA2.f55142e), new AdditionalProperty.BackOrderStatus(cartInfoA2.f55139a), new AdditionalProperty.Quantity(cartInfoA2.f55140b), new AdditionalProperty.Price(cartInfoA2.f55141c)), 33, null);
            }
        } else if (!(cartTrackingUiModel instanceof CartTrackingUiModel.SamplesSelected)) {
            if (cartTrackingUiModel instanceof CartTrackingUiModel.ProceedToCheckoutClick) {
                CartInfo cartInfoA3 = cartUiModel != null ? a(cartUiModel) : null;
                String strK = (cartUiModel == null || (list2 = cartUiModel.f55183c) == null) ? null : CollectionsKt.K(list2, ",", null, null, new jh(12), 30);
                if (cartUiModel == null || (list = cartUiModel.f55183c) == null) {
                    arrayList = EmptyList.f71768b;
                } else {
                    List<CartItemUiModel> list3 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                    for (CartItemUiModel cartItemUiModel : list3) {
                        String str = cartItemUiModel.f55144a;
                        CartPriceInformationUiModel cartPriceInformationUiModel = cartItemUiModel.f55145b;
                        SkuId.Companion companion = SkuId.INSTANCE;
                        str.getClass();
                        arrayList.add(new ECommerceValues(str, cartItemUiModel.f55149h, null, (cartPriceInformationUiModel == null || (cartPriceUiModel4 = cartPriceInformationUiModel.f55153a) == null) ? null : Double.valueOf(cartPriceUiModel4.f55158a), (cartPriceInformationUiModel == null || (cartPriceUiModel3 = cartPriceInformationUiModel.f55153a) == null) ? null : cartPriceUiModel3.f55160c, Double.valueOf(cartItemUiModel.d), null));
                    }
                }
                ?? r22 = arrayList;
                String str2 = cartInfoA3 != null ? cartInfoA3.f55142e : null;
                return new Hit.EventHit.BeginCheckoutEventHit("buypath/myshoppingbag", null, "cart_page", "proceed_checkout", null, strK, str2 == null ? "" : str2, cartInfoA3 != null ? cartInfoA3.f55140b : null, cartInfoA3 != null ? cartInfoA3.f55141c : null, cartInfoA3 != null ? cartInfoA3.f55139a : null, r22, 16, null);
            }
            if (cartTrackingUiModel instanceof CartTrackingUiModel.OOSItemClick) {
                if (cartUiModel != null) {
                    CartInfo cartInfoA4 = a(cartUiModel);
                    return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", ((CartTrackingUiModel.OOSItemClick) cartTrackingUiModel).f55169a.f55144a, "cart_page", "out_of_stock", null, CollectionsKt.P(new AdditionalProperty.Currency(cartInfoA4.f55142e), new AdditionalProperty.BackOrderStatus(cartInfoA4.f55139a), new AdditionalProperty.Quantity(cartInfoA4.f55140b), new AdditionalProperty.Price(cartInfoA4.f55141c)), 33, null);
                }
            } else if (cartTrackingUiModel instanceof CartTrackingUiModel.SimpleClickWithCart) {
                CartTrackingUiModel.SimpleClickWithCart simpleClickWithCart = (CartTrackingUiModel.SimpleClickWithCart) cartTrackingUiModel;
                if (cartUiModel != null) {
                    CartInfo cartInfoA5 = a(cartUiModel);
                    return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", null, "cart_page", simpleClickWithCart.f55177a, null, CollectionsKt.P(new AdditionalProperty.ProductSku(cartInfoA5.d), new AdditionalProperty.Currency(cartInfoA5.f55142e), new AdditionalProperty.BackOrderStatus(cartInfoA5.f55139a), new AdditionalProperty.Quantity(cartInfoA5.f55140b), new AdditionalProperty.Price(cartInfoA5.f55141c)), 33, null);
                }
            } else {
                if (cartTrackingUiModel instanceof CartTrackingUiModel.SimpleItem) {
                    CartTrackingUiModel.SimpleItem simpleItem = (CartTrackingUiModel.SimpleItem) cartTrackingUiModel;
                    CartItemUiModel cartItemUiModel2 = simpleItem.f55178a;
                    String str3 = cartItemUiModel2.f55144a;
                    CartPriceInformationUiModel cartPriceInformationUiModel2 = cartItemUiModel2.f55145b;
                    String str4 = simpleItem.f55179b;
                    SkuIdUiModel.f61763c.getClass();
                    SkuIdUiModel.Companion.b(str3);
                    AdditionalProperty.ProductSku productSku = new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str3)));
                    if (cartPriceInformationUiModel2 != null && (cartPriceUiModel2 = cartPriceInformationUiModel2.f55153a) != null) {
                        obj = cartPriceUiModel2.f55160c;
                    }
                    AdditionalProperty.Currency currency = new AdditionalProperty.Currency(obj != null ? obj : "");
                    AdditionalProperty.Price price = new AdditionalProperty.Price(NumberExtKt.b((cartPriceInformationUiModel2 == null || (cartPriceUiModel = cartPriceInformationUiModel2.f55153a) == null) ? 0.0d : cartPriceUiModel.f55158a));
                    String strValueOf = simpleItem.f55180c;
                    if (strValueOf == null) {
                        strValueOf = String.valueOf(cartItemUiModel2.d);
                    }
                    return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", str3, "cart_page", str4, null, CollectionsKt.P(productSku, currency, price, new AdditionalProperty.Quantity(strValueOf), new AdditionalProperty.BackOrderStatus(Boolean.valueOf(cartItemUiModel2.z))), 33, null);
                }
                if (!(cartTrackingUiModel instanceof CartTrackingUiModel.ShoppingBagToggle)) {
                    if (cartTrackingUiModel instanceof CartTrackingUiModel.AddToWishlistEvent) {
                        return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", "AddToWishlist", "cart_page", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((CartTrackingUiModel.AddToWishlistEvent) cartTrackingUiModel).f55164a))), 33, null);
                    }
                    if (cartTrackingUiModel instanceof CartTrackingUiModel.AddToWishlistSuccessEvent) {
                        return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", "AddToWishlist/Success", "cart_page", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((CartTrackingUiModel.AddToWishlistSuccessEvent) cartTrackingUiModel).f55165a))), 33, null);
                    }
                    if (cartTrackingUiModel.equals(CartTrackingUiModel.OpenMyLV.f55171a)) {
                        return new Hit.EventHit.DefaultEventHit(null, "cart", "open_myLV", "cart_page", "click", null, null, 97, null);
                    }
                    if (cartTrackingUiModel.equals(CartTrackingUiModel.OpenContactUs.f55170a)) {
                        return new Hit.EventHit.DefaultEventHit(null, "cart", "open_contact_us", "cart_page", "click", null, null, 97, null);
                    }
                    v40.g();
                    return null;
                }
                if (cartUiModel != null) {
                    CartInfo cartInfoA6 = a(cartUiModel);
                    return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", null, "cart_page", ((CartTrackingUiModel.ShoppingBagToggle) cartTrackingUiModel).f55175a ? "add_shopping_bag" : "remove_shopping_bag", null, CollectionsKt.P(new AdditionalProperty.ProductSku(cartInfoA6.d), new AdditionalProperty.Currency(cartInfoA6.f55142e), new AdditionalProperty.BackOrderStatus(cartInfoA6.f55139a), new AdditionalProperty.Quantity(cartInfoA6.f55140b), new AdditionalProperty.Price(cartInfoA6.f55141c)), 33, null);
                }
            }
        } else if (cartUiModel != null) {
            CartInfo cartInfoA7 = a(cartUiModel);
            return new Hit.EventHit.DefaultEventHit(null, "buypath/myshoppingbag", null, "cart_page", "perfume_sample_selection", null, CollectionsKt.P(new AdditionalProperty.ProductSku(cartInfoA7.d), new AdditionalProperty.Currency(cartInfoA7.f55142e), new AdditionalProperty.BackOrderStatus(cartInfoA7.f55139a), new AdditionalProperty.Quantity(cartInfoA7.f55140b), new AdditionalProperty.Price(cartInfoA7.f55141c), new AdditionalProperty.ContentId(((CartTrackingUiModel.SamplesSelected) cartTrackingUiModel).f55174a)), 33, null);
        }
        return null;
    }
}
