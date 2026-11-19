package com.vuitton.android.presentation.screen.spotlight.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001aÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "", "OnboardingScreen", "CollectionScreen", "FocusScreen", "OnOnboardingStartCTAClickedEvent", "OnOnboardingClosedEvent", "OnHotspotClickedEvent", "OnScreenClosedEvent", "OnCollectionCTAClickedEvent", "OnLookChangedEvent", "OnDiscoverCTAClickedEvent", "OnProductCardSwipedEvent", "OnFocusScreenClosedEvent", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnCollectionCTAClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnFocusScreenClosedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingClosedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingStartCTAClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnScreenClosedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnboardingScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SpotlightTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "", "lookId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CollectionScreen implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64658a;

        public CollectionScreen(String str) {
            str.getClass();
            this.f64658a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CollectionScreen) && Intrinsics.c(this.f64658a, ((CollectionScreen) obj).f64658a);
        }

        public final int hashCode() {
            return this.f64658a.hashCode();
        }

        public final String toString() {
            return fc.h("CollectionScreen(lookId=", this.f64658a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$FocusScreen;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "", "lookId", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FocusScreen implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64660b;

        public FocusScreen(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f64659a = str;
            this.f64660b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FocusScreen)) {
                return false;
            }
            FocusScreen focusScreen = (FocusScreen) obj;
            if (!this.f64659a.equals(focusScreen.f64659a)) {
                return false;
            }
            String str = focusScreen.f64660b;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64660b.equals(str);
        }

        public final int hashCode() {
            int iHashCode = this.f64659a.hashCode() * 31;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64660b.hashCode() + iHashCode;
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("FocusScreen(lookId=", this.f64659a, ", sku=", this.f64660b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnCollectionCTAClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCollectionCTAClickedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCollectionCTAClickedEvent f64661a = new OnCollectionCTAClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCollectionCTAClickedEvent);
        }

        public final int hashCode() {
            return 47262381;
        }

        public final String toString() {
            return "OnCollectionCTAClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnDiscoverCTAClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "productName", "price", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnDiscoverCTAClickedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64662a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64663b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64664c;

        public OnDiscoverCTAClickedEvent(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f64662a = str;
            this.f64663b = str2;
            this.f64664c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnDiscoverCTAClickedEvent)) {
                return false;
            }
            OnDiscoverCTAClickedEvent onDiscoverCTAClickedEvent = (OnDiscoverCTAClickedEvent) obj;
            String str = onDiscoverCTAClickedEvent.f64662a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64662a.equals(str) && this.f64663b.equals(onDiscoverCTAClickedEvent.f64663b) && Intrinsics.c(this.f64664c, onDiscoverCTAClickedEvent.f64664c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iB = fc.b(this.f64662a.hashCode() * 31, 31, this.f64663b);
            String str = this.f64664c;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return n00.r(this.f64664c, ")", fc.s("OnDiscoverCTAClickedEvent(sku=", this.f64662a, ", productName=", this.f64663b, ", price="));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnFocusScreenClosedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnFocusScreenClosedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnFocusScreenClosedEvent f64665a = new OnFocusScreenClosedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnFocusScreenClosedEvent);
        }

        public final int hashCode() {
            return 477128514;
        }

        public final String toString() {
            return "OnFocusScreenClosedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnHotspotClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "price", "lookId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHotspotClickedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64666a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64668c;

        public OnHotspotClickedEvent(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str3.getClass();
            this.f64666a = str;
            this.f64667b = str2;
            this.f64668c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHotspotClickedEvent)) {
                return false;
            }
            OnHotspotClickedEvent onHotspotClickedEvent = (OnHotspotClickedEvent) obj;
            String str = onHotspotClickedEvent.f64666a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64666a.equals(str) && Intrinsics.c(this.f64667b, onHotspotClickedEvent.f64667b) && this.f64668c.equals(onHotspotClickedEvent.f64668c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode = this.f64666a.hashCode() * 31;
            String str = this.f64667b;
            return this.f64668c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return n00.r(this.f64668c, ")", fc.s("OnHotspotClickedEvent(sku=", this.f64666a, ", price=", this.f64667b, ", lookId="));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "", "isNext", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLookChangedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f64669a;

        public OnLookChangedEvent(boolean z) {
            this.f64669a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnLookChangedEvent) && this.f64669a == ((OnLookChangedEvent) obj).f64669a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f64669a);
        }

        public final String toString() {
            return tr.i("OnLookChangedEvent(isNext=", ")", this.f64669a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingClosedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnOnboardingClosedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnOnboardingClosedEvent f64670a = new OnOnboardingClosedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnOnboardingClosedEvent);
        }

        public final int hashCode() {
            return 164622267;
        }

        public final String toString() {
            return "OnOnboardingClosedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnOnboardingStartCTAClickedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnOnboardingStartCTAClickedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnOnboardingStartCTAClickedEvent f64671a = new OnOnboardingStartCTAClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnOnboardingStartCTAClickedEvent);
        }

        public final int hashCode() {
            return -2050390124;
        }

        public final String toString() {
            return "OnOnboardingStartCTAClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnProductCardSwipedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "price", "lookId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnProductCardSwipedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64672a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64674c;

        public OnProductCardSwipedEvent(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str3.getClass();
            this.f64672a = str;
            this.f64673b = str2;
            this.f64674c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnProductCardSwipedEvent)) {
                return false;
            }
            OnProductCardSwipedEvent onProductCardSwipedEvent = (OnProductCardSwipedEvent) obj;
            String str = onProductCardSwipedEvent.f64672a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f64672a.equals(str) && Intrinsics.c(this.f64673b, onProductCardSwipedEvent.f64673b) && this.f64674c.equals(onProductCardSwipedEvent.f64674c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode = this.f64672a.hashCode() * 31;
            String str = this.f64673b;
            return this.f64674c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return n00.r(this.f64674c, ")", fc.s("OnProductCardSwipedEvent(sku=", this.f64672a, ", price=", this.f64673b, ", lookId="));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnScreenClosedEvent;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnScreenClosedEvent implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnScreenClosedEvent f64675a = new OnScreenClosedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnScreenClosedEvent);
        }

        public final int hashCode() {
            return -1672028982;
        }

        public final String toString() {
            return "OnScreenClosedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnboardingScreen;", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnboardingScreen implements SpotlightTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnboardingScreen f64676a = new OnboardingScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnboardingScreen);
        }

        public final int hashCode() {
            return -1066921120;
        }

        public final String toString() {
            return "OnboardingScreen";
        }
    }
}
