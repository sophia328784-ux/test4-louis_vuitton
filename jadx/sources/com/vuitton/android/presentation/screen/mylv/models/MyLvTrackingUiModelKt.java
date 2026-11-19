package com.vuitton.android.presentation.screen.mylv.models;

import com.vuitton.android.presentation.screen.orders.models.OrderTrackingDataUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingDataUiModelKt;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyLvTrackingUiModelKt {
    public static final Hit a(MyLvTrackingUiModel myLvTrackingUiModel) {
        myLvTrackingUiModel.getClass();
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.MyLvScreen.f59431a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard", "mylv/my_overview", "mylv", null, 17, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.MyLvQrCodeScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "store_user_pass", "store_user_pass", "store_user_pass", CollectionsKt.O(new AdditionalProperty.ContentId(((MyLvTrackingUiModel.MyLvQrCodeScreen) myLvTrackingUiModel).f59430a ? "speedy_pass" : "lv_pass")), 1, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.CloseQrCodeScreenEvent) {
            return new Hit.EventHit.DefaultEventHit(HitType.CloseStore.f66509a, "profil_qr_code", "close_store", "store_user_pass", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentId(((MyLvTrackingUiModel.CloseQrCodeScreenEvent) myLvTrackingUiModel).f59428a ? "speedy_pass" : "lv_pass")), 32, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.ActivateStoreModeWithQrCodeEvent) {
            MyLvTrackingUiModel.ActivateStoreModeWithQrCodeEvent activateStoreModeWithQrCodeEvent = (MyLvTrackingUiModel.ActivateStoreModeWithQrCodeEvent) myLvTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(HitType.ActivateStore.f66504a, "store_user_pass", "store_mode_access", "store_user_pass", MvelScriptManager.VAR_EVENT, null, CollectionsKt.P(new AdditionalProperty.ContentId(activateStoreModeWithQrCodeEvent.f59425a ? "speedy_pass" : "lv_pass"), new AdditionalProperty.StoreMode(activateStoreModeWithQrCodeEvent.f59426b, true)), 32, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.ScreenShotIntentionEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "store_user_pass", "screenshot_store_user_pass", "store_user_pass", "screenshot", null, CollectionsKt.O(new AdditionalProperty.ContentId(((MyLvTrackingUiModel.ScreenShotIntentionEvent) myLvTrackingUiModel).f59446a ? "speedy_pass" : "lv_pass")), 33, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenProfileEvent.f59442a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "MyProfil", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenOrdersEvent.f59441a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "MyOrders", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenCareServiceEvent.f59433a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "MyCareService", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenAddressBookEvent.f59432a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "AdressBook", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenMyCertificatesEvent.f59437a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "my_certificates", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenConnectivityEvent.f59434a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "connectivity", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenMyIconsEvent.f59438a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/profil", "my_app_icons", "mylv", "navigation", null, null, 97, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.IconsConfirmEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Icons", "confirm", "mylv", "icons", null, CollectionsKt.O(new AdditionalProperty.ContentId(((MyLvTrackingUiModel.IconsConfirmEvent) myLvTrackingUiModel).f59429a)), 33, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.ClickOnQrCodeEvent.f59427a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/profil", "qr_code", "mylv", "store_mode", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenSettingsEvent.f59443a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "Settings", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenMyNotificationsEvent.f59440a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "my_notif", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenExclusiveSalesEvent.f59435a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "MyExclusiveSales", "mylv", "navigation", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenMyAppointmentsEvent.f59436a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard", "MyAppointments", "mylv", "navigation", null, null, 97, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.OrderItemClickEvent) {
            OrderTrackingDataUiModel orderTrackingDataUiModel = ((MyLvTrackingUiModel.OrderItemClickEvent) myLvTrackingUiModel).f59445a;
            return new Hit.EventHit.DefaultEventHit(null, "dashboard", orderTrackingDataUiModel.f60331c, "mylv", "navigation", null, CollectionsKt.O(OrderTrackingDataUiModelKt.a(orderTrackingDataUiModel)), 33, null);
        }
        if (myLvTrackingUiModel instanceof MyLvTrackingUiModel.OrderCarouselFirstSwipeEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "dashboard", "swipe_ongoing_orders", "mylv", "swipe", null, null, 97, null);
        }
        if (Intrinsics.c(myLvTrackingUiModel, MyLvTrackingUiModel.OpenMyLV.f59439a)) {
            return new Hit.EventHit.DefaultEventHit(null, "dashboard", "open_avatar_library", "MyLV", "click", null, null, 97, null);
        }
        v40.g();
        return null;
    }
}
