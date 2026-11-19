package com.vuitton.android.presentation.tracking;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel;", "", "HeaderClicked", "Swiped", "Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$HeaderClicked;", "Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$Swiped;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MostPurchasedWithTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$HeaderClicked;", "Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HeaderClicked implements MostPurchasedWithTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HeaderClicked f65825a = new HeaderClicked();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HeaderClicked);
        }

        public final int hashCode() {
            return -1144862920;
        }

        public final String toString() {
            return "HeaderClicked";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$Swiped;", "Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Swiped implements MostPurchasedWithTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Swiped f65826a = new Swiped();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Swiped);
        }

        public final int hashCode() {
            return 604793804;
        }

        public final String toString() {
            return "Swiped";
        }
    }
}
