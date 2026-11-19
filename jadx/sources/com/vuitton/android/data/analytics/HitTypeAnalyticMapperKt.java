package com.vuitton.android.data.analytics;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HitTypeAnalyticMapperKt {
    public static final String a(HitType hitType) {
        hitType.getClass();
        if (Intrinsics.c(hitType, HitType.AddToCart.f66505a)) {
            return "add_to_cart";
        }
        if (Intrinsics.c(hitType, HitType.AddToWishlist.f66506a)) {
            return "add_to_wishlist";
        }
        if (Intrinsics.c(hitType, HitType.BeginCheckout.f66508a)) {
            return "begin_checkout";
        }
        if (Intrinsics.c(hitType, HitType.Purchase.f66516a)) {
            return "purchase";
        }
        if (Intrinsics.c(hitType, HitType.Screen.f66519a)) {
            return "screen_view";
        }
        if (Intrinsics.c(hitType, HitType.SelectItem.f66521a)) {
            return "select_item";
        }
        if (Intrinsics.c(hitType, HitType.ViewItem.f66522a)) {
            return "view_item";
        }
        if (Intrinsics.c(hitType, HitType.ViewItemList.f66523a)) {
            return "view_item_list";
        }
        if (Intrinsics.c(hitType, HitType.ViewSearchResults.f66524a)) {
            return "view_search_results";
        }
        if (Intrinsics.c(hitType, HitType.ABTest.f66503a)) {
            return "abTest";
        }
        if (Intrinsics.c(hitType, HitType.ActivateStore.f66504a)) {
            return "activate_store";
        }
        if (hitType instanceof HitType.Anomaly) {
            return ((HitType.Anomaly) hitType).f66507a;
        }
        if (Intrinsics.c(hitType, HitType.CloseStore.f66509a)) {
            return "close_store";
        }
        if (hitType instanceof HitType.Custom) {
            return ((HitType.Custom) hitType).f66510a;
        }
        if (Intrinsics.c(hitType, HitType.Interaction.f66511a)) {
            return "interaction";
        }
        if (Intrinsics.c(hitType, HitType.Scroll.f66520a)) {
            return "scroll";
        }
        if (Intrinsics.c(hitType, HitType.LegalConsents.f66512a)) {
            return "legal_consents";
        }
        if (Intrinsics.c(hitType, HitType.LiveChat.f66513a)) {
            return "live_chat";
        }
        if (Intrinsics.c(hitType, HitType.Login.f66514a)) {
            return "login";
        }
        if (Intrinsics.c(hitType, HitType.PasswordResetSuccess.f66515a)) {
            return "password_reset";
        }
        if (Intrinsics.c(hitType, HitType.RemoveFromWishlist.f66518a)) {
            return "delete_from_wishlist";
        }
        if (Intrinsics.c(hitType, HitType.Register.f66517a)) {
            return "sign_up";
        }
        if (Intrinsics.c(hitType, HitType.Vto.f66525a)) {
            return "vto_cta_click";
        }
        if (Intrinsics.c(hitType, HitType.VtoLaunch.f66526a)) {
            return "vto_launch";
        }
        v40.g();
        return null;
    }
}
