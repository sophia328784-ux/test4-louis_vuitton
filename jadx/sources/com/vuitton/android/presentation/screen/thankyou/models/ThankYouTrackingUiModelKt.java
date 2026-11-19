package com.vuitton.android.presentation.screen.thankyou.models;

import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThankYouTrackingUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65297a;

        static {
            int[] iArr = new int[CartPreviousScreen.values().length];
            try {
                iArr[CartPreviousScreen.MAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CartPreviousScreen.PDP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f65297a = iArr;
        }
    }

    public static final List a(CartPreviousScreen cartPreviousScreen, CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel) {
        String str;
        if (checkoutConfirmationDetailUiModel == null) {
            return EmptyList.f71768b;
        }
        List list = checkoutConfirmationDetailUiModel.f65261i;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new SkuId(((CheckoutItemUiModel) it.next()).f65264a));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Double.valueOf(((CheckoutItemUiModel) it2.next()).f65267e.f55158a));
        }
        CartPriceUiModel cartPriceUiModel = checkoutConfirmationDetailUiModel.f65263k.f65253b;
        double d = cartPriceUiModel.f55158a;
        String str2 = cartPriceUiModel.f55160c;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Integer.valueOf(((CheckoutItemUiModel) it3.next()).f65266c));
        }
        ShippingMethodUiModel shippingMethodUiModel = checkoutConfirmationDetailUiModel.d;
        String str3 = shippingMethodUiModel.f65274a;
        String str4 = checkoutConfirmationDetailUiModel.g;
        String str5 = checkoutConfirmationDetailUiModel.f65260h;
        if (str5 == null) {
            str5 = "";
        }
        String str6 = str5;
        int i2 = shippingMethodUiModel.f65276c;
        int i3 = WhenMappings.f65297a[cartPreviousScreen.ordinal()];
        if (i3 == 1) {
            str = "cart";
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            str = "pdp";
        }
        return CollectionsKt.O(new AdditionalProperty.OrderConfirmation(arrayList, arrayList2, d, str2, arrayList3, str3, str4, str6, i2, str, checkoutConfirmationDetailUiModel.f65255a, checkoutConfirmationDetailUiModel.f65256b));
    }
}
