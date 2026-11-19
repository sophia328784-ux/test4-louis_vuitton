package com.vuitton.android.presentation.screen.personalselections.list.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;", "", "InStoreScreen", "AdvisorCurationScreen", "DiscoverSelectionEvent", "ScrollPercentageReachedEvent", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$AdvisorCurationScreen;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$InStoreScreen;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsListTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$AdvisorCurationScreen;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AdvisorCurationScreen implements PersonalSelectionsListTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AdvisorCurationScreen f62637a = new AdvisorCurationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AdvisorCurationScreen);
        }

        public final int hashCode() {
            return 918163696;
        }

        public final String toString() {
            return "AdvisorCurationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;", "", "screenName", "", "position", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DiscoverSelectionEvent implements PersonalSelectionsListTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62638a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f62639b;

        public DiscoverSelectionEvent(String str, int i2) {
            str.getClass();
            this.f62638a = str;
            this.f62639b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DiscoverSelectionEvent)) {
                return false;
            }
            DiscoverSelectionEvent discoverSelectionEvent = (DiscoverSelectionEvent) obj;
            return Intrinsics.c(this.f62638a, discoverSelectionEvent.f62638a) && this.f62639b == discoverSelectionEvent.f62639b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f62639b) + (this.f62638a.hashCode() * 31);
        }

        public final String toString() {
            return "DiscoverSelectionEvent(screenName=" + this.f62638a + ", position=" + this.f62639b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$InStoreScreen;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InStoreScreen implements PersonalSelectionsListTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final InStoreScreen f62640a = new InStoreScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof InStoreScreen);
        }

        public final int hashCode() {
            return -1589584681;
        }

        public final String toString() {
            return "InStoreScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;", "", "screenName", "", "percentage", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ScrollPercentageReachedEvent implements PersonalSelectionsListTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f62642b;

        public ScrollPercentageReachedEvent(String str, int i2) {
            str.getClass();
            this.f62641a = str;
            this.f62642b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ScrollPercentageReachedEvent)) {
                return false;
            }
            ScrollPercentageReachedEvent scrollPercentageReachedEvent = (ScrollPercentageReachedEvent) obj;
            return Intrinsics.c(this.f62641a, scrollPercentageReachedEvent.f62641a) && this.f62642b == scrollPercentageReachedEvent.f62642b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f62642b) + (this.f62641a.hashCode() * 31);
        }

        public final String toString() {
            return "ScrollPercentageReachedEvent(screenName=" + this.f62641a + ", percentage=" + this.f62642b + ")";
        }
    }
}
