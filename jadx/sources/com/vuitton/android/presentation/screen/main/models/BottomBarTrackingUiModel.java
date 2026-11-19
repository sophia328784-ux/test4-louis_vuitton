package com.vuitton.android.presentation.screen.main.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;", "", "OnExploreHitEvent", "OnCatalogHitEvent", "OnCartHitEvent", "OnServicesHitEvent", "OnWishlistHitEvent", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCartHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCatalogHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnExploreHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnServicesHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnWishlistHitEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BottomBarTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCartHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCartHitEvent extends BottomBarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCartHitEvent f59116a = new OnCartHitEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCartHitEvent);
        }

        public final int hashCode() {
            return 415668848;
        }

        public final String toString() {
            return "OnCartHitEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCatalogHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCatalogHitEvent extends BottomBarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCatalogHitEvent f59117a = new OnCatalogHitEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCatalogHitEvent);
        }

        public final int hashCode() {
            return 1010360567;
        }

        public final String toString() {
            return "OnCatalogHitEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnExploreHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnExploreHitEvent extends BottomBarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnExploreHitEvent f59118a = new OnExploreHitEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnExploreHitEvent);
        }

        public final int hashCode() {
            return 1215586673;
        }

        public final String toString() {
            return "OnExploreHitEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnServicesHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnServicesHitEvent extends BottomBarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnServicesHitEvent f59119a = new OnServicesHitEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnServicesHitEvent);
        }

        public final int hashCode() {
            return 690926894;
        }

        public final String toString() {
            return "OnServicesHitEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnWishlistHitEvent;", "Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnWishlistHitEvent extends BottomBarTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnWishlistHitEvent f59120a = new OnWishlistHitEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnWishlistHitEvent);
        }

        public final int hashCode() {
            return 1917911957;
        }

        public final String toString() {
            return "OnWishlistHitEvent";
        }
    }

    public BottomBarTrackingUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
