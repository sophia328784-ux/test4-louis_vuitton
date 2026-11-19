package com.vuitton.android.presentation.screen.wishlist.model;

import com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/EmptyWishlistAction;", "Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EmptyWishlistAction implements AutomationTagsAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EmptyWishlistAction f65733a = new EmptyWishlistAction();

    @Override // com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction
    public final String a() {
        return "wishlist_startWishlist_button";
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof EmptyWishlistAction);
    }

    public final int hashCode() {
        return 1585333689;
    }

    public final String toString() {
        return "EmptyWishlistAction";
    }
}
