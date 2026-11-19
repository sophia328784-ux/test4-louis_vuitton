package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationAction;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;", "Lcom/vuitton/android/presentation/notification/NotificationAction;", "GoToWishlist", "GoToCart", "NotifyItem", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyNotificationAction extends NotificationAction {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoToCart extends BeautyNotificationAction {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final GoToCart f62144b = new GoToCart(new StringResourceUiModel.ResId(R.string.see_cart, null, 2, null), null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToCart);
        }

        public final int hashCode() {
            return 1944027924;
        }

        public final String toString() {
            return "GoToCart";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoToWishlist extends BeautyNotificationAction {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final GoToWishlist f62145b = new GoToWishlist(new StringResourceUiModel.ResId(R.string.view_wishlist, null, 2, null), null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToWishlist);
        }

        public final int hashCode() {
            return 1770496953;
        }

        public final String toString() {
            return "GoToWishlist";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$NotifyItem;", "Lcom/vuitton/android/presentation/notification/NotificationAction;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;", "item", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyItem extends NotificationAction {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BeautyAddToCartUiModel f62146b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotifyItem(BeautyAddToCartUiModel beautyAddToCartUiModel) {
            super(new StringResourceUiModel.ResId(R.string.multiple_add_to_cart_one_product_out_of_stock_link, null, 2, null));
            beautyAddToCartUiModel.getClass();
            this.f62146b = beautyAddToCartUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotifyItem) && Intrinsics.c(this.f62146b, ((NotifyItem) obj).f62146b);
        }

        public final int hashCode() {
            return this.f62146b.hashCode();
        }

        public final String toString() {
            return "NotifyItem(item=" + this.f62146b + ")";
        }
    }

    public /* synthetic */ BeautyNotificationAction(StringResourceUiModel stringResourceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : stringResourceUiModel, null);
    }

    public BeautyNotificationAction(StringResourceUiModel stringResourceUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        super(stringResourceUiModel);
    }
}
