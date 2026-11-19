package com.vuitton.foundation.model.domain.model.dynamicyield;

import com.vuitton.foundation.model.domain.model.cart.CartItem;
import com.vuitton.foundation.model.domain.model.cart.CartPrice;
import com.vuitton.foundation.model.domain.model.cart.CartPriceInformation;
import kotlin.Metadata;
import kotlin.UInt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DYCartItemKt {
    public static final DYCartItem a(CartItem cartItem) {
        CartPrice cartPrice;
        cartItem.getClass();
        String str = cartItem.f66905a;
        int i2 = cartItem.d;
        UInt.Companion companion = UInt.INSTANCE;
        CartPriceInformation cartPriceInformation = cartItem.f66906b;
        return new DYCartItem(str, i2, (cartPriceInformation == null || (cartPrice = cartPriceInformation.d) == null) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : (float) cartPrice.f66914a, null);
    }
}
