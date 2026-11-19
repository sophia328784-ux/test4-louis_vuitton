package com.vuitton.android.presentation.screen.cart;

import android.content.Context;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/OutOfStockNotification;", "Lcom/vuitton/android/presentation/screen/cart/GenericNotification;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OutOfStockNotification implements GenericNotification {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OutOfStockNotification f54981a = new OutOfStockNotification();

    @Override // com.vuitton.android.presentation.screen.cart.GenericNotification
    public final String a(Context context) {
        context.getClass();
        String string = context.getString(R.string.shoppingcart_outofstock_notification_info);
        string.getClass();
        return string;
    }

    @Override // com.vuitton.android.presentation.screen.cart.GenericNotification
    public final int getPriority() {
        return 1;
    }
}
