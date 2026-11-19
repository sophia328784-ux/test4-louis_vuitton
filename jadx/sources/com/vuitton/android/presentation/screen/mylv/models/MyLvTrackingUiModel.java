package com.vuitton.android.presentation.screen.mylv.models;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.presentation.screen.orders.models.OrderTrackingDataUiModel;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0015\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0082\u0001\u0015\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+¨\u0006,À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "", "MyLvScreen", "MyLvQrCodeScreen", "ActivateStoreModeWithQrCodeEvent", "CloseQrCodeScreenEvent", "ScreenShotIntentionEvent", "OpenProfileEvent", "OpenOrdersEvent", "OpenCareServiceEvent", "OpenAddressBookEvent", "OpenMyCertificatesEvent", "OpenConnectivityEvent", "OpenMyIconsEvent", "OpenSettingsEvent", "OpenMyNotificationsEvent", "OpenExclusiveSalesEvent", "OpenMyAppointmentsEvent", "IconsConfirmEvent", "ClickOnQrCodeEvent", "OrderItemClickEvent", "OrderCarouselFirstSwipeEvent", "OpenMyLV", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ClickOnQrCodeEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvQrCodeScreen;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvScreen;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenAddressBookEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenCareServiceEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenConnectivityEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenExclusiveSalesEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyAppointmentsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyCertificatesEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyIconsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyLV;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyNotificationsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenOrdersEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenProfileEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenSettingsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderCarouselFirstSwipeEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderItemClickEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ScreenShotIntentionEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MyLvTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "", "isVvip", "", "storeId", "<init>", "(ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateStoreModeWithQrCodeEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59425a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f59426b;

        public ActivateStoreModeWithQrCodeEvent(boolean z, String str) {
            str.getClass();
            this.f59425a = z;
            this.f59426b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ActivateStoreModeWithQrCodeEvent)) {
                return false;
            }
            ActivateStoreModeWithQrCodeEvent activateStoreModeWithQrCodeEvent = (ActivateStoreModeWithQrCodeEvent) obj;
            return this.f59425a == activateStoreModeWithQrCodeEvent.f59425a && Intrinsics.c(this.f59426b, activateStoreModeWithQrCodeEvent.f59426b);
        }

        public final int hashCode() {
            return this.f59426b.hashCode() + (Boolean.hashCode(this.f59425a) * 31);
        }

        public final String toString() {
            return "ActivateStoreModeWithQrCodeEvent(isVvip=" + this.f59425a + ", storeId=" + this.f59426b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ClickOnQrCodeEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnQrCodeEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ClickOnQrCodeEvent f59427a = new ClickOnQrCodeEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClickOnQrCodeEvent);
        }

        public final int hashCode() {
            return -1204657482;
        }

        public final String toString() {
            return "ClickOnQrCodeEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "", "isVvip", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseQrCodeScreenEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59428a;

        public CloseQrCodeScreenEvent(boolean z) {
            this.f59428a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CloseQrCodeScreenEvent) && this.f59428a == ((CloseQrCodeScreenEvent) obj).f59428a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59428a);
        }

        public final String toString() {
            return tr.i("CloseQrCodeScreenEvent(isVvip=", ")", this.f59428a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "", "iconId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class IconsConfirmEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59429a;

        public IconsConfirmEvent(String str) {
            str.getClass();
            this.f59429a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof IconsConfirmEvent) && Intrinsics.c(this.f59429a, ((IconsConfirmEvent) obj).f59429a);
        }

        public final int hashCode() {
            return this.f59429a.hashCode();
        }

        public final String toString() {
            return fc.h("IconsConfirmEvent(iconId=", this.f59429a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvQrCodeScreen;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "", "isVvip", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyLvQrCodeScreen implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59430a;

        public MyLvQrCodeScreen(boolean z) {
            this.f59430a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MyLvQrCodeScreen) && this.f59430a == ((MyLvQrCodeScreen) obj).f59430a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59430a);
        }

        public final String toString() {
            return tr.i("MyLvQrCodeScreen(isVvip=", ")", this.f59430a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvScreen;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MyLvScreen implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final MyLvScreen f59431a = new MyLvScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof MyLvScreen);
        }

        public final int hashCode() {
            return -1079772013;
        }

        public final String toString() {
            return "MyLvScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenAddressBookEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenAddressBookEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenAddressBookEvent f59432a = new OpenAddressBookEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenAddressBookEvent);
        }

        public final int hashCode() {
            return -2069085960;
        }

        public final String toString() {
            return "OpenAddressBookEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenCareServiceEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenCareServiceEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenCareServiceEvent f59433a = new OpenCareServiceEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenCareServiceEvent);
        }

        public final int hashCode() {
            return -33145871;
        }

        public final String toString() {
            return "OpenCareServiceEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenConnectivityEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenConnectivityEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenConnectivityEvent f59434a = new OpenConnectivityEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenConnectivityEvent);
        }

        public final int hashCode() {
            return -2142575320;
        }

        public final String toString() {
            return "OpenConnectivityEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenExclusiveSalesEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenExclusiveSalesEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenExclusiveSalesEvent f59435a = new OpenExclusiveSalesEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenExclusiveSalesEvent);
        }

        public final int hashCode() {
            return 805917425;
        }

        public final String toString() {
            return "OpenExclusiveSalesEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyAppointmentsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyAppointmentsEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyAppointmentsEvent f59436a = new OpenMyAppointmentsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyAppointmentsEvent);
        }

        public final int hashCode() {
            return 1854299839;
        }

        public final String toString() {
            return "OpenMyAppointmentsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyCertificatesEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyCertificatesEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyCertificatesEvent f59437a = new OpenMyCertificatesEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyCertificatesEvent);
        }

        public final int hashCode() {
            return 1377430199;
        }

        public final String toString() {
            return "OpenMyCertificatesEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyIconsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyIconsEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyIconsEvent f59438a = new OpenMyIconsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyIconsEvent);
        }

        public final int hashCode() {
            return -1658416825;
        }

        public final String toString() {
            return "OpenMyIconsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyLV;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyLV implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyLV f59439a = new OpenMyLV();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyLV);
        }

        public final int hashCode() {
            return -961337839;
        }

        public final String toString() {
            return "OpenMyLV";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyNotificationsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyNotificationsEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyNotificationsEvent f59440a = new OpenMyNotificationsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyNotificationsEvent);
        }

        public final int hashCode() {
            return 1398843705;
        }

        public final String toString() {
            return "OpenMyNotificationsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenOrdersEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenOrdersEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenOrdersEvent f59441a = new OpenOrdersEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenOrdersEvent);
        }

        public final int hashCode() {
            return -72048518;
        }

        public final String toString() {
            return "OpenOrdersEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenProfileEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenProfileEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenProfileEvent f59442a = new OpenProfileEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenProfileEvent);
        }

        public final int hashCode() {
            return -1330161332;
        }

        public final String toString() {
            return "OpenProfileEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenSettingsEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenSettingsEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenSettingsEvent f59443a = new OpenSettingsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenSettingsEvent);
        }

        public final int hashCode() {
            return -1751777092;
        }

        public final String toString() {
            return "OpenSettingsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderCarouselFirstSwipeEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderCarouselFirstSwipeEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OrderCarouselFirstSwipeEvent f59444a = new OrderCarouselFirstSwipeEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OrderCarouselFirstSwipeEvent);
        }

        public final int hashCode() {
            return -1790316653;
        }

        public final String toString() {
            return "OrderCarouselFirstSwipeEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderItemClickEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderItemClickEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OrderTrackingDataUiModel f59445a;

        public OrderItemClickEvent(OrderTrackingDataUiModel orderTrackingDataUiModel) {
            orderTrackingDataUiModel.getClass();
            this.f59445a = orderTrackingDataUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OrderItemClickEvent) && Intrinsics.c(this.f59445a, ((OrderItemClickEvent) obj).f59445a);
        }

        public final int hashCode() {
            return this.f59445a.hashCode();
        }

        public final String toString() {
            return "OrderItemClickEvent(data=" + this.f59445a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ScreenShotIntentionEvent;", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;", "", "isVvip", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ScreenShotIntentionEvent implements MyLvTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f59446a;

        public ScreenShotIntentionEvent(boolean z) {
            this.f59446a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ScreenShotIntentionEvent) && this.f59446a == ((ScreenShotIntentionEvent) obj).f59446a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f59446a);
        }

        public final String toString() {
            return tr.i("ScreenShotIntentionEvent(isVvip=", ")", this.f59446a);
        }
    }
}
