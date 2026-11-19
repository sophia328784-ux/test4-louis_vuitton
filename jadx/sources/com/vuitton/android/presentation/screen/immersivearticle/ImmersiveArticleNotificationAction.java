package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationAction;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction;", "Lcom/vuitton/android/presentation/notification/NotificationAction;", "GoToWishlist", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction$GoToWishlist;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleNotificationAction extends NotificationAction {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction$GoToWishlist;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoToWishlist extends ImmersiveArticleNotificationAction {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final GoToWishlist f58271b = new GoToWishlist(new StringResourceUiModel.ResId(R.string.view_wishlist, null, 2, null), null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToWishlist);
        }

        public final int hashCode() {
            return 968443558;
        }

        public final String toString() {
            return "GoToWishlist";
        }
    }

    public /* synthetic */ ImmersiveArticleNotificationAction(StringResourceUiModel stringResourceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : stringResourceUiModel, null);
    }

    public ImmersiveArticleNotificationAction(StringResourceUiModel stringResourceUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        super(stringResourceUiModel);
    }
}
