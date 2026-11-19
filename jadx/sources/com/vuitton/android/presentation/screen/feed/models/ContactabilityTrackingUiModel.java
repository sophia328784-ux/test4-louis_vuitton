package com.vuitton.android.presentation.screen.feed.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;", "", "PreferencesClick", "EnableNotificationsClick", "EnablePersonalizationClick", "Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnableNotificationsClick;", "Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnablePersonalizationClick;", "Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$PreferencesClick;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ContactabilityTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnableNotificationsClick;", "Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EnableNotificationsClick implements ContactabilityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnableNotificationsClick f57908a = new EnableNotificationsClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EnableNotificationsClick);
        }

        public final int hashCode() {
            return -1439716048;
        }

        public final String toString() {
            return "EnableNotificationsClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnablePersonalizationClick;", "Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EnablePersonalizationClick implements ContactabilityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnablePersonalizationClick f57909a = new EnablePersonalizationClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EnablePersonalizationClick);
        }

        public final int hashCode() {
            return 581199220;
        }

        public final String toString() {
            return "EnablePersonalizationClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$PreferencesClick;", "Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreferencesClick implements ContactabilityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PreferencesClick f57910a = new PreferencesClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreferencesClick);
        }

        public final int hashCode() {
            return 1329701693;
        }

        public final String toString() {
            return "PreferencesClick";
        }
    }
}
