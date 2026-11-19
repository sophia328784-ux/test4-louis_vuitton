package com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000e\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0082\u0001\u000e\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d¨\u0006\u001eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "", "ShadeFinderIntroScreen", "OnStartClickedEvent", "OnCloseIntroClickedEvent", "ShadeFinderScanScreen", "OnValidCheckEvent", "OnCloseScanClickedEvent", "ShadeFinderRecommendationScreen", "OnCloseRecommendationsEvent", "OnRecommendationsSwipedEvent", "OnTryAgainClickedEvent", "OnAddToCartClickedEvent", "OnAddToCartSuccessEvent", "OnAddToCartFailureEvent", "OnTryOnClickedEvent", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseIntroClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseRecommendationsEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseScanClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnRecommendationsSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnStartClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryAgainClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryOnClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnValidCheckEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderIntroScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderRecommendationScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderScanScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ShadeFinderTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "productName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToCartClickedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62296a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62297b;

        public OnAddToCartClickedEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62296a = str;
            this.f62297b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToCartClickedEvent)) {
                return false;
            }
            OnAddToCartClickedEvent onAddToCartClickedEvent = (OnAddToCartClickedEvent) obj;
            String str = onAddToCartClickedEvent.f62296a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62296a.equals(str) && this.f62297b.equals(onAddToCartClickedEvent.f62297b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62297b.hashCode() + (this.f62296a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnAddToCartClickedEvent(sku=", this.f62296a, ", productName=", this.f62297b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "productName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToCartFailureEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62299b;

        public OnAddToCartFailureEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62298a = str;
            this.f62299b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToCartFailureEvent)) {
                return false;
            }
            OnAddToCartFailureEvent onAddToCartFailureEvent = (OnAddToCartFailureEvent) obj;
            String str = onAddToCartFailureEvent.f62298a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62298a.equals(str) && this.f62299b.equals(onAddToCartFailureEvent.f62299b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62299b.hashCode() + (this.f62298a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnAddToCartFailureEvent(sku=", this.f62298a, ", productName=", this.f62299b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "productName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnAddToCartSuccessEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62300a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62301b;

        public OnAddToCartSuccessEvent(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f62300a = str;
            this.f62301b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnAddToCartSuccessEvent)) {
                return false;
            }
            OnAddToCartSuccessEvent onAddToCartSuccessEvent = (OnAddToCartSuccessEvent) obj;
            String str = onAddToCartSuccessEvent.f62300a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62300a.equals(str) && this.f62301b.equals(onAddToCartSuccessEvent.f62301b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62301b.hashCode() + (this.f62300a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("OnAddToCartSuccessEvent(sku=", this.f62300a, ", productName=", this.f62301b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseIntroClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseIntroClickedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCloseIntroClickedEvent f62302a = new OnCloseIntroClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCloseIntroClickedEvent);
        }

        public final int hashCode() {
            return 1595994326;
        }

        public final String toString() {
            return "OnCloseIntroClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseRecommendationsEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseRecommendationsEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCloseRecommendationsEvent f62303a = new OnCloseRecommendationsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCloseRecommendationsEvent);
        }

        public final int hashCode() {
            return -2138791447;
        }

        public final String toString() {
            return "OnCloseRecommendationsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnCloseScanClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseScanClickedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCloseScanClickedEvent f62304a = new OnCloseScanClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCloseScanClickedEvent);
        }

        public final int hashCode() {
            return 442705241;
        }

        public final String toString() {
            return "OnCloseScanClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnRecommendationsSwipedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "", "productName", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnRecommendationsSwipedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62305a;

        public OnRecommendationsSwipedEvent(String str) {
            str.getClass();
            this.f62305a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnRecommendationsSwipedEvent) && Intrinsics.c(this.f62305a, ((OnRecommendationsSwipedEvent) obj).f62305a);
        }

        public final int hashCode() {
            return this.f62305a.hashCode();
        }

        public final String toString() {
            return fc.h("OnRecommendationsSwipedEvent(productName=", this.f62305a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnStartClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnStartClickedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnStartClickedEvent f62306a = new OnStartClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnStartClickedEvent);
        }

        public final int hashCode() {
            return 1948951078;
        }

        public final String toString() {
            return "OnStartClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryAgainClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnTryAgainClickedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnTryAgainClickedEvent f62307a = new OnTryAgainClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnTryAgainClickedEvent);
        }

        public final int hashCode() {
            return -1933178329;
        }

        public final String toString() {
            return "OnTryAgainClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnTryOnClickedEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnTryOnClickedEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62308a;

        public OnTryOnClickedEvent(List<SkuIdUiModel> list) {
            list.getClass();
            this.f62308a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnTryOnClickedEvent) && Intrinsics.c(this.f62308a, ((OnTryOnClickedEvent) obj).f62308a);
        }

        public final int hashCode() {
            return this.f62308a.hashCode();
        }

        public final String toString() {
            return d21.o("OnTryOnClickedEvent(skus=", ")", this.f62308a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnValidCheckEvent;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnValidCheckEvent implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnValidCheckEvent f62309a = new OnValidCheckEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnValidCheckEvent);
        }

        public final int hashCode() {
            return -2006514241;
        }

        public final String toString() {
            return "OnValidCheckEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderIntroScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShadeFinderIntroScreen implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShadeFinderIntroScreen f62310a = new ShadeFinderIntroScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinderIntroScreen);
        }

        public final int hashCode() {
            return 395179829;
        }

        public final String toString() {
            return "ShadeFinderIntroScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderRecommendationScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSkus", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShadeFinderRecommendationScreen implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62311a;

        public ShadeFinderRecommendationScreen(List<SkuIdUiModel> list) {
            list.getClass();
            this.f62311a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShadeFinderRecommendationScreen) && Intrinsics.c(this.f62311a, ((ShadeFinderRecommendationScreen) obj).f62311a);
        }

        public final int hashCode() {
            return this.f62311a.hashCode();
        }

        public final String toString() {
            return d21.o("ShadeFinderRecommendationScreen(productSkus=", ")", this.f62311a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$ShadeFinderScanScreen;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShadeFinderScanScreen implements ShadeFinderTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShadeFinderScanScreen f62312a = new ShadeFinderScanScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinderScanScreen);
        }

        public final int hashCode() {
            return 2093178988;
        }

        public final String toString() {
            return "ShadeFinderScanScreen";
        }
    }
}
