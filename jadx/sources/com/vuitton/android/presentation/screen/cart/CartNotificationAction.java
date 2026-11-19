package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationAction;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/CartNotificationAction;", "Lcom/vuitton/android/presentation/notification/NotificationAction;", "GoToWishlist", "Lcom/vuitton/android/presentation/screen/cart/CartNotificationAction$GoToWishlist;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CartNotificationAction extends NotificationAction {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/CartNotificationAction$GoToWishlist;", "Lcom/vuitton/android/presentation/screen/cart/CartNotificationAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoToWishlist extends CartNotificationAction {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final GoToWishlist f54835b = new GoToWishlist(new StringResourceUiModel.ResId(R.string.view_wishlist, null, 2, null), null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToWishlist);
        }

        public final int hashCode() {
            return -484799514;
        }

        public final String toString() {
            return "GoToWishlist";
        }
    }

    public /* synthetic */ CartNotificationAction(StringResourceUiModel stringResourceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : stringResourceUiModel, null);
    }

    public CartNotificationAction(StringResourceUiModel stringResourceUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        super(stringResourceUiModel);
    }
}
