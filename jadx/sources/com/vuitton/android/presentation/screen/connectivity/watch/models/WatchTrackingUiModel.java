package com.vuitton.android.presentation.screen.connectivity.watch.models;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001aÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "", "WatchGeneralPageScreen", "WatchDetailPageScreen", "WatchV3ContentPageScreen", "WatchSettingsPageScreen", "WatchTutorialCategoriesPageScreen", "WatchfacePageScreen", "WatchfacePagerPageScreen", "SeeAllTravelsClickEvent", "SeeAllWatchfacesClickEvent", "UnpairSuccessEvent", "HowToGetWatchfaceClickEvent", "WatchfaceSelectedEvent", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllTravelsClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllWatchfacesClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$UnpairSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchGeneralPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchSettingsPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchTutorialCategoriesPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchV3ContentPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePagerPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface WatchTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$HowToGetWatchfaceClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "", "watchfaceTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HowToGetWatchfaceClickEvent implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56742a;

        public HowToGetWatchfaceClickEvent(String str) {
            this.f56742a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HowToGetWatchfaceClickEvent) && Intrinsics.c(this.f56742a, ((HowToGetWatchfaceClickEvent) obj).f56742a);
        }

        public final int hashCode() {
            String str = this.f56742a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("HowToGetWatchfaceClickEvent(watchfaceTitle=", this.f56742a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllTravelsClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SeeAllTravelsClickEvent implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SeeAllTravelsClickEvent f56743a = new SeeAllTravelsClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SeeAllTravelsClickEvent);
        }

        public final int hashCode() {
            return -1733444181;
        }

        public final String toString() {
            return "SeeAllTravelsClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$SeeAllWatchfacesClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SeeAllWatchfacesClickEvent implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SeeAllWatchfacesClickEvent f56744a = new SeeAllWatchfacesClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SeeAllWatchfacesClickEvent);
        }

        public final int hashCode() {
            return -531800743;
        }

        public final String toString() {
            return "SeeAllWatchfacesClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$UnpairSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnpairSuccessEvent implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final UnpairSuccessEvent f56745a = new UnpairSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnpairSuccessEvent);
        }

        public final int hashCode() {
            return 721836860;
        }

        public final String toString() {
            return "UnpairSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchDetailPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "", "watchId", "watchSerialNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchDetailPageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f56747b;

        public WatchDetailPageScreen(String str, String str2) {
            this.f56746a = str;
            this.f56747b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WatchDetailPageScreen)) {
                return false;
            }
            WatchDetailPageScreen watchDetailPageScreen = (WatchDetailPageScreen) obj;
            return Intrinsics.c(this.f56746a, watchDetailPageScreen.f56746a) && Intrinsics.c(this.f56747b, watchDetailPageScreen.f56747b);
        }

        public final int hashCode() {
            String str = this.f56746a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f56747b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("WatchDetailPageScreen(watchId=", this.f56746a, ", watchSerialNumber=", this.f56747b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchGeneralPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchGeneralPageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WatchGeneralPageScreen f56748a = new WatchGeneralPageScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WatchGeneralPageScreen);
        }

        public final int hashCode() {
            return 265123622;
        }

        public final String toString() {
            return "WatchGeneralPageScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchSettingsPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchSettingsPageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WatchSettingsPageScreen f56749a = new WatchSettingsPageScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WatchSettingsPageScreen);
        }

        public final int hashCode() {
            return -939373445;
        }

        public final String toString() {
            return "WatchSettingsPageScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchTutorialCategoriesPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchTutorialCategoriesPageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WatchTutorialCategoriesPageScreen f56750a = new WatchTutorialCategoriesPageScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WatchTutorialCategoriesPageScreen);
        }

        public final int hashCode() {
            return -366495886;
        }

        public final String toString() {
            return "WatchTutorialCategoriesPageScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchV3ContentPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchV3ContentPageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WatchV3ContentPageScreen f56751a = new WatchV3ContentPageScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WatchV3ContentPageScreen);
        }

        public final int hashCode() {
            return 384726970;
        }

        public final String toString() {
            return "WatchV3ContentPageScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "", "watchfaceTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchfacePageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56752a;

        public WatchfacePageScreen(String str) {
            this.f56752a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WatchfacePageScreen) && Intrinsics.c(this.f56752a, ((WatchfacePageScreen) obj).f56752a);
        }

        public final int hashCode() {
            String str = this.f56752a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("WatchfacePageScreen(watchfaceTitle=", this.f56752a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePagerPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchfacePagerPageScreen implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WatchfacePagerPageScreen f56753a = new WatchfacePagerPageScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WatchfacePagerPageScreen);
        }

        public final int hashCode() {
            return -1406814332;
        }

        public final String toString() {
            return "WatchfacePagerPageScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;", "", "watchfaceTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchfaceSelectedEvent implements WatchTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56754a;

        public WatchfaceSelectedEvent(String str) {
            this.f56754a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WatchfaceSelectedEvent) && Intrinsics.c(this.f56754a, ((WatchfaceSelectedEvent) obj).f56754a);
        }

        public final int hashCode() {
            String str = this.f56754a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("WatchfaceSelectedEvent(watchfaceTitle=", this.f56754a, ")");
        }
    }
}
