package com.vuitton.android.presentation.screen.feed.models.tracking;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.a;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0018\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u0082\u0001\u0017\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0¨\u00061À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "", "Companion", "FeedDiscoverScreen", "FeedForYouScreen", "NotifyMeBottomSheetScreen", "PermissionsBottomSheetScreen", "OnHitLoginEvent", "OnHitRegisterEvent", "OnHitOnOrderEvent", "OnSwipeOnOngoingOrdersEvent", "CardClickEvent", "OnHitSlideShowItemEvent", "OnSlideShowPageChangeEvent", "OnHitCarouselItemEvent", "CarouselSwipeEvent", "OnHitAddToCalendarEvent", "OnHitRemoveFromCalendarEvent", "OnAuthorizeCalendarPermissionEvent", "OnRefuseCalendarPermissionEvent", "OnNotifyMeClickEvent", "OnNotifyMeSuccessEvent", "OnNotifyMeAlreadyNotifiedEvent", "ScrollPercentageReachedEvent", "OpenMyLVEvent", "OpenLVPassEvent", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedDiscoverScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedForYouScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$PermissionsBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FeedTrackingUiModel {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", ConfigurationName.KEY, "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;", "type", "", "position", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CardClickEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final EditorialModuleCardTypeUiModel f57937c;
        public final int d;

        public CardClickEvent(FeedTab feedTab, String str, EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel, int i2) {
            feedTab.getClass();
            str.getClass();
            editorialModuleCardTypeUiModel.getClass();
            this.f57935a = feedTab;
            this.f57936b = str;
            this.f57937c = editorialModuleCardTypeUiModel;
            this.d = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CardClickEvent)) {
                return false;
            }
            CardClickEvent cardClickEvent = (CardClickEvent) obj;
            return this.f57935a == cardClickEvent.f57935a && Intrinsics.c(this.f57936b, cardClickEvent.f57936b) && Intrinsics.c(this.f57937c, cardClickEvent.f57937c) && this.d == cardClickEvent.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + ((this.f57937c.hashCode() + fc.b(this.f57935a.hashCode() * 31, 31, this.f57936b)) * 31);
        }

        public final String toString() {
            return "CardClickEvent(currentTab=" + this.f57935a + ", key=" + this.f57936b + ", type=" + this.f57937c + ", position=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "carouselType", ConfigurationName.KEY, "", "position", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselSwipeEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f57940c;
        public final int d;

        public CarouselSwipeEvent(FeedTab feedTab, String str, String str2, int i2) {
            feedTab.getClass();
            str.getClass();
            str2.getClass();
            this.f57938a = feedTab;
            this.f57939b = str;
            this.f57940c = str2;
            this.d = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselSwipeEvent)) {
                return false;
            }
            CarouselSwipeEvent carouselSwipeEvent = (CarouselSwipeEvent) obj;
            return this.f57938a == carouselSwipeEvent.f57938a && Intrinsics.c(this.f57939b, carouselSwipeEvent.f57939b) && Intrinsics.c(this.f57940c, carouselSwipeEvent.f57940c) && this.d == carouselSwipeEvent.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + fc.b(fc.b(this.f57938a.hashCode() * 31, 31, this.f57939b), 31, this.f57940c);
        }

        public final String toString() {
            return "CarouselSwipeEvent(currentTab=" + this.f57938a + ", carouselType=" + this.f57939b + ", key=" + this.f57940c + ", position=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f57941a;

            static {
                int[] iArr = new int[FeedTab.values().length];
                try {
                    iArr[FeedTab.DISCOVER.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FeedTab.FOR_YOU.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f57941a = iArr;
            }
        }

        public static String a(FeedTab feedTab) {
            int i2 = feedTab == null ? -1 : WhenMappings.f57941a[feedTab.ordinal()];
            if (i2 != 1) {
                return i2 != 2 ? "feed" : "feed_foryou";
            }
            return "feed_discover";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedDiscoverScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FeedDiscoverScreen implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FeedDiscoverScreen f57942a = new FeedDiscoverScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FeedDiscoverScreen);
        }

        public final int hashCode() {
            return 1109437925;
        }

        public final String toString() {
            return "FeedDiscoverScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedForYouScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FeedForYouScreen implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FeedForYouScreen f57943a = new FeedForYouScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FeedForYouScreen);
        }

        public final int hashCode() {
            return 1081522898;
        }

        public final String toString() {
            return "FeedForYouScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "", "calendarEventKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotifyMeBottomSheetScreen implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57944a;

        public NotifyMeBottomSheetScreen(String str) {
            this.f57944a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotifyMeBottomSheetScreen) && Intrinsics.c(this.f57944a, ((NotifyMeBottomSheetScreen) obj).f57944a);
        }

        public final int hashCode() {
            String str = this.f57944a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("NotifyMeBottomSheetScreen(calendarEventKey=", this.f57944a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "eventKey", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAuthorizeCalendarPermissionEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57946b;

        public OnAuthorizeCalendarPermissionEvent(FeedTab feedTab, String str) {
            str.getClass();
            this.f57945a = feedTab;
            this.f57946b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAuthorizeCalendarPermissionEvent)) {
                return false;
            }
            OnAuthorizeCalendarPermissionEvent onAuthorizeCalendarPermissionEvent = (OnAuthorizeCalendarPermissionEvent) obj;
            return this.f57945a == onAuthorizeCalendarPermissionEvent.f57945a && Intrinsics.c(this.f57946b, onAuthorizeCalendarPermissionEvent.f57946b);
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57945a;
            return this.f57946b.hashCode() + ((feedTab == null ? 0 : feedTab.hashCode()) * 31);
        }

        public final String toString() {
            return "OnAuthorizeCalendarPermissionEvent(currentTab=" + this.f57945a + ", eventKey=" + this.f57946b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "calendarEventKey", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitAddToCalendarEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57948b;

        public OnHitAddToCalendarEvent(FeedTab feedTab, String str) {
            this.f57947a = feedTab;
            this.f57948b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitAddToCalendarEvent)) {
                return false;
            }
            OnHitAddToCalendarEvent onHitAddToCalendarEvent = (OnHitAddToCalendarEvent) obj;
            return this.f57947a == onHitAddToCalendarEvent.f57947a && Intrinsics.c(this.f57948b, onHitAddToCalendarEvent.f57948b);
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57947a;
            int iHashCode = (feedTab == null ? 0 : feedTab.hashCode()) * 31;
            String str = this.f57948b;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            return "OnHitAddToCalendarEvent(currentTab=" + this.f57947a + ", calendarEventKey=" + this.f57948b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "carouselType", ConfigurationName.KEY, "", "position", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCarouselItemEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57950b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f57951c;
        public final int d;

        public OnHitCarouselItemEvent(FeedTab feedTab, String str, String str2, int i2) {
            feedTab.getClass();
            str.getClass();
            str2.getClass();
            this.f57949a = feedTab;
            this.f57950b = str;
            this.f57951c = str2;
            this.d = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitCarouselItemEvent)) {
                return false;
            }
            OnHitCarouselItemEvent onHitCarouselItemEvent = (OnHitCarouselItemEvent) obj;
            return this.f57949a == onHitCarouselItemEvent.f57949a && Intrinsics.c(this.f57950b, onHitCarouselItemEvent.f57950b) && Intrinsics.c(this.f57951c, onHitCarouselItemEvent.f57951c) && this.d == onHitCarouselItemEvent.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + fc.b(fc.b(this.f57949a.hashCode() * 31, 31, this.f57950b), 31, this.f57951c);
        }

        public final String toString() {
            return "OnHitCarouselItemEvent(currentTab=" + this.f57949a + ", carouselType=" + this.f57950b + ", key=" + this.f57951c + ", position=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitLoginEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitLoginEvent f57952a = new OnHitLoginEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitLoginEvent);
        }

        public final int hashCode() {
            return 1207329619;
        }

        public final String toString() {
            return "OnHitLoginEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitOnOrderEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57953a;

        public OnHitOnOrderEvent(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57953a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitOnOrderEvent)) {
                return false;
            }
            String str = ((OnHitOnOrderEvent) obj).f57953a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57953a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57953a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnHitOnOrderEvent(sku=", this.f57953a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitRegisterEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitRegisterEvent f57954a = new OnHitRegisterEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitRegisterEvent);
        }

        public final int hashCode() {
            return 736448469;
        }

        public final String toString() {
            return "OnHitRegisterEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "calendarEventKey", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitRemoveFromCalendarEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57955a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57956b;

        public OnHitRemoveFromCalendarEvent(FeedTab feedTab, String str) {
            this.f57955a = feedTab;
            this.f57956b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitRemoveFromCalendarEvent)) {
                return false;
            }
            OnHitRemoveFromCalendarEvent onHitRemoveFromCalendarEvent = (OnHitRemoveFromCalendarEvent) obj;
            return this.f57955a == onHitRemoveFromCalendarEvent.f57955a && Intrinsics.c(this.f57956b, onHitRemoveFromCalendarEvent.f57956b);
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57955a;
            int iHashCode = (feedTab == null ? 0 : feedTab.hashCode()) * 31;
            String str = this.f57956b;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            return "OnHitRemoveFromCalendarEvent(currentTab=" + this.f57955a + ", calendarEventKey=" + this.f57956b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", ConfigurationName.KEY, "", "position", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitSlideShowItemEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f57959c;

        public OnHitSlideShowItemEvent(FeedTab feedTab, String str, int i2) {
            feedTab.getClass();
            str.getClass();
            this.f57957a = feedTab;
            this.f57958b = str;
            this.f57959c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitSlideShowItemEvent)) {
                return false;
            }
            OnHitSlideShowItemEvent onHitSlideShowItemEvent = (OnHitSlideShowItemEvent) obj;
            return this.f57957a == onHitSlideShowItemEvent.f57957a && Intrinsics.c(this.f57958b, onHitSlideShowItemEvent.f57958b) && this.f57959c == onHitSlideShowItemEvent.f57959c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f57959c) + fc.b(this.f57957a.hashCode() * 31, 31, this.f57958b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("OnHitSlideShowItemEvent(currentTab=");
            sb.append(this.f57957a);
            sb.append(", key=");
            sb.append(this.f57958b);
            sb.append(", position=");
            return a.i(this.f57959c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "cardId", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNotifyMeAlreadyNotifiedEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57961b;

        public OnNotifyMeAlreadyNotifiedEvent(FeedTab feedTab, String str) {
            str.getClass();
            this.f57960a = feedTab;
            this.f57961b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnNotifyMeAlreadyNotifiedEvent)) {
                return false;
            }
            OnNotifyMeAlreadyNotifiedEvent onNotifyMeAlreadyNotifiedEvent = (OnNotifyMeAlreadyNotifiedEvent) obj;
            return this.f57960a == onNotifyMeAlreadyNotifiedEvent.f57960a && Intrinsics.c(this.f57961b, onNotifyMeAlreadyNotifiedEvent.f57961b);
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57960a;
            return this.f57961b.hashCode() + ((feedTab == null ? 0 : feedTab.hashCode()) * 31);
        }

        public final String toString() {
            return "OnNotifyMeAlreadyNotifiedEvent(currentTab=" + this.f57960a + ", cardId=" + this.f57961b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "cardId", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNotifyMeClickEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57962a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57963b;

        public OnNotifyMeClickEvent(FeedTab feedTab, String str) {
            str.getClass();
            this.f57962a = feedTab;
            this.f57963b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnNotifyMeClickEvent)) {
                return false;
            }
            OnNotifyMeClickEvent onNotifyMeClickEvent = (OnNotifyMeClickEvent) obj;
            return this.f57962a == onNotifyMeClickEvent.f57962a && Intrinsics.c(this.f57963b, onNotifyMeClickEvent.f57963b);
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57962a;
            return this.f57963b.hashCode() + ((feedTab == null ? 0 : feedTab.hashCode()) * 31);
        }

        public final String toString() {
            return "OnNotifyMeClickEvent(currentTab=" + this.f57962a + ", cardId=" + this.f57963b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnNotifyMeSuccessEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57964a;

        public OnNotifyMeSuccessEvent(FeedTab feedTab) {
            this.f57964a = feedTab;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnNotifyMeSuccessEvent) && this.f57964a == ((OnNotifyMeSuccessEvent) obj).f57964a;
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57964a;
            if (feedTab == null) {
                return 0;
            }
            return feedTab.hashCode();
        }

        public final String toString() {
            return "OnNotifyMeSuccessEvent(currentTab=" + this.f57964a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "eventKey", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnRefuseCalendarPermissionEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57965a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57966b;

        public OnRefuseCalendarPermissionEvent(FeedTab feedTab, String str) {
            str.getClass();
            this.f57965a = feedTab;
            this.f57966b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnRefuseCalendarPermissionEvent)) {
                return false;
            }
            OnRefuseCalendarPermissionEvent onRefuseCalendarPermissionEvent = (OnRefuseCalendarPermissionEvent) obj;
            return this.f57965a == onRefuseCalendarPermissionEvent.f57965a && Intrinsics.c(this.f57966b, onRefuseCalendarPermissionEvent.f57966b);
        }

        public final int hashCode() {
            FeedTab feedTab = this.f57965a;
            return this.f57966b.hashCode() + ((feedTab == null ? 0 : feedTab.hashCode()) * 31);
        }

        public final String toString() {
            return "OnRefuseCalendarPermissionEvent(currentTab=" + this.f57965a + ", eventKey=" + this.f57966b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "", ConfigurationName.KEY, "", "position", "page", "totalPageNumber", "<init>", "(Ljava/lang/String;III)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSlideShowPageChangeEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57967a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f57968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f57969c;
        public final int d;

        public OnSlideShowPageChangeEvent(String str, int i2, int i3, int i4) {
            str.getClass();
            this.f57967a = str;
            this.f57968b = i2;
            this.f57969c = i3;
            this.d = i4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSlideShowPageChangeEvent)) {
                return false;
            }
            OnSlideShowPageChangeEvent onSlideShowPageChangeEvent = (OnSlideShowPageChangeEvent) obj;
            return Intrinsics.c(this.f57967a, onSlideShowPageChangeEvent.f57967a) && this.f57968b == onSlideShowPageChangeEvent.f57968b && this.f57969c == onSlideShowPageChangeEvent.f57969c && this.d == onSlideShowPageChangeEvent.d;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + tr.b(this.f57969c, tr.b(this.f57968b, this.f57967a.hashCode() * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder sbR = fc.r(this.f57968b, "OnSlideShowPageChangeEvent(key=", this.f57967a, ", position=", ", page=");
            sbR.append(this.f57969c);
            sbR.append(", totalPageNumber=");
            sbR.append(this.d);
            sbR.append(")");
            return sbR.toString();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeOnOngoingOrdersEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnSwipeOnOngoingOrdersEvent f57970a = new OnSwipeOnOngoingOrdersEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnSwipeOnOngoingOrdersEvent);
        }

        public final int hashCode() {
            return -2143513854;
        }

        public final String toString() {
            return "OnSwipeOnOngoingOrdersEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenLVPassEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenLVPassEvent f57971a = new OpenLVPassEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenLVPassEvent);
        }

        public final int hashCode() {
            return 874149987;
        }

        public final String toString() {
            return "OpenLVPassEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyLVEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyLVEvent f57972a = new OpenMyLVEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyLVEvent);
        }

        public final int hashCode() {
            return -1725473112;
        }

        public final String toString() {
            return "OpenMyLVEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$PermissionsBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PermissionsBottomSheetScreen implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PermissionsBottomSheetScreen f57973a = new PermissionsBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PermissionsBottomSheetScreen);
        }

        public final int hashCode() {
            return 1410076622;
        }

        public final String toString() {
            return "PermissionsBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;", "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "currentTab", "", "percentage", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ScrollPercentageReachedEvent implements FeedTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedTab f57974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f57975b;

        public ScrollPercentageReachedEvent(FeedTab feedTab, int i2) {
            feedTab.getClass();
            this.f57974a = feedTab;
            this.f57975b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ScrollPercentageReachedEvent)) {
                return false;
            }
            ScrollPercentageReachedEvent scrollPercentageReachedEvent = (ScrollPercentageReachedEvent) obj;
            return this.f57974a == scrollPercentageReachedEvent.f57974a && this.f57975b == scrollPercentageReachedEvent.f57975b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f57975b) + (this.f57974a.hashCode() * 31);
        }

        public final String toString() {
            return "ScrollPercentageReachedEvent(currentTab=" + this.f57974a + ", percentage=" + this.f57975b + ")";
        }
    }
}
