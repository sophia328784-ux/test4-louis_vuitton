package com.vuitton.android.presentation.screen.cart.models;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CartUiModelKt {
    public static final boolean a(CartUiModel cartUiModel) {
        cartUiModel.getClass();
        List list = cartUiModel.f55183c;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((CartItemUiModel) it.next()).p) {
                return true;
            }
        }
        return false;
    }
}
