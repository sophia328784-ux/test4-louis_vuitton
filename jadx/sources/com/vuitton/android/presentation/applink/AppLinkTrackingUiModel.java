package com.vuitton.android.presentation.applink;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;", "", "SwapLocaleScreen", "ChangeLocationClickedEvent", "SkipChangeLocationClickedEvent", "CloseSwapLocaleClickedEvent", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$ChangeLocationClickedEvent;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$CloseSwapLocaleClickedEvent;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SkipChangeLocationClickedEvent;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SwapLocaleScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AppLinkTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$ChangeLocationClickedEvent;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChangeLocationClickedEvent implements AppLinkTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ChangeLocationClickedEvent f50541a = new ChangeLocationClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ChangeLocationClickedEvent);
        }

        public final int hashCode() {
            return 37450829;
        }

        public final String toString() {
            return "ChangeLocationClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$CloseSwapLocaleClickedEvent;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseSwapLocaleClickedEvent implements AppLinkTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseSwapLocaleClickedEvent f50542a = new CloseSwapLocaleClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseSwapLocaleClickedEvent);
        }

        public final int hashCode() {
            return -1037543837;
        }

        public final String toString() {
            return "CloseSwapLocaleClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SkipChangeLocationClickedEvent;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SkipChangeLocationClickedEvent implements AppLinkTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SkipChangeLocationClickedEvent f50543a = new SkipChangeLocationClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SkipChangeLocationClickedEvent);
        }

        public final int hashCode() {
            return -1053801812;
        }

        public final String toString() {
            return "SkipChangeLocationClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SwapLocaleScreen;", "Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SwapLocaleScreen implements AppLinkTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SwapLocaleScreen f50544a = new SwapLocaleScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SwapLocaleScreen);
        }

        public final int hashCode() {
            return -1432947634;
        }

        public final String toString() {
            return "SwapLocaleScreen";
        }
    }
}
