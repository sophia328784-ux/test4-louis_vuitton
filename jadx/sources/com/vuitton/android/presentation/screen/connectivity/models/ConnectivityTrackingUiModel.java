package com.vuitton.android.presentation.screen.connectivity.models;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "", "ConnectivityScreen", "WatchVideoScreen", "EarphoneSectionClickEvent", "PairNewObjectEvent", "ClickOnDiscoverEvent", "PairWatchV2SuccessEvent", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$EarphoneSectionClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairNewObjectEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$WatchVideoScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ConnectivityTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "", "linkId", "sectionName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickOnDiscoverEvent implements ConnectivityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f56256b;

        public ClickOnDiscoverEvent(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f56255a = str;
            this.f56256b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickOnDiscoverEvent)) {
                return false;
            }
            ClickOnDiscoverEvent clickOnDiscoverEvent = (ClickOnDiscoverEvent) obj;
            return Intrinsics.c(this.f56255a, clickOnDiscoverEvent.f56255a) && Intrinsics.c(this.f56256b, clickOnDiscoverEvent.f56256b);
        }

        public final int hashCode() {
            return this.f56256b.hashCode() + (this.f56255a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("ClickOnDiscoverEvent(linkId=", this.f56255a, ", sectionName=", this.f56256b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConnectivityScreen implements ConnectivityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ConnectivityScreen f56257a = new ConnectivityScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ConnectivityScreen);
        }

        public final int hashCode() {
            return -2123061738;
        }

        public final String toString() {
            return "ConnectivityScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$EarphoneSectionClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EarphoneSectionClickEvent implements ConnectivityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EarphoneSectionClickEvent f56258a = new EarphoneSectionClickEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EarphoneSectionClickEvent);
        }

        public final int hashCode() {
            return -1783824052;
        }

        public final String toString() {
            return "EarphoneSectionClickEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairNewObjectEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairNewObjectEvent implements ConnectivityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PairNewObjectEvent f56259a = new PairNewObjectEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PairNewObjectEvent);
        }

        public final int hashCode() {
            return -1336744088;
        }

        public final String toString() {
            return "PairNewObjectEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "", "serialNumber", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PairWatchV2SuccessEvent implements ConnectivityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56260a;

        public PairWatchV2SuccessEvent(String str) {
            str.getClass();
            this.f56260a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PairWatchV2SuccessEvent) && Intrinsics.c(this.f56260a, ((PairWatchV2SuccessEvent) obj).f56260a);
        }

        public final int hashCode() {
            return this.f56260a.hashCode();
        }

        public final String toString() {
            return fc.h("PairWatchV2SuccessEvent(serialNumber=", this.f56260a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$WatchVideoScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WatchVideoScreen implements ConnectivityTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WatchVideoScreen f56261a = new WatchVideoScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof WatchVideoScreen);
        }

        public final int hashCode() {
            return 1486910027;
        }

        public final String toString() {
            return "WatchVideoScreen";
        }
    }
}
