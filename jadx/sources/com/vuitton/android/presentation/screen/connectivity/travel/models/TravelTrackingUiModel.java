package com.vuitton.android.presentation.screen.connectivity.travel.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\u0082\u0001\u000b\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017¨\u0006\u0018À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "AddTravelPageScreen", "TravelDetailPageScreen", "TravelTypeSelectionEvent", "ValidateNewTravelClickEvent", "CreateTravelSuccessEvent", "CreateTravelErrorEvent", "SwitchToEditTravelEvent", "EditTravelSuccessEvent", "DeleteTravelEvent", "DeleteTravelSuccessEvent", "ShareTravelEvent", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$AddTravelPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelErrorEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$DeleteTravelEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$DeleteTravelSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$EditTravelSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ShareTravelEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$SwitchToEditTravelEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$TravelDetailPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$TravelTypeSelectionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ValidateNewTravelClickEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TravelTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$AddTravelPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddTravelPageScreen implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddTravelPageScreen f56451a = new AddTravelPageScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddTravelPageScreen);
        }

        public final int hashCode() {
            return -315330876;
        }

        public final String toString() {
            return "AddTravelPageScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelErrorEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CreateTravelErrorEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CreateTravelErrorEvent f56452a = new CreateTravelErrorEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CreateTravelErrorEvent);
        }

        public final int hashCode() {
            return -149119718;
        }

        public final String toString() {
            return "CreateTravelErrorEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CreateTravelSuccessEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CreateTravelSuccessEvent f56453a = new CreateTravelSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CreateTravelSuccessEvent);
        }

        public final int hashCode() {
            return -1117951489;
        }

        public final String toString() {
            return "CreateTravelSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$DeleteTravelEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "travelType", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeleteTravelEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56454a;

        public DeleteTravelEvent(String str) {
            str.getClass();
            this.f56454a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DeleteTravelEvent) && Intrinsics.c(this.f56454a, ((DeleteTravelEvent) obj).f56454a);
        }

        public final int hashCode() {
            return this.f56454a.hashCode();
        }

        public final String toString() {
            return fc.h("DeleteTravelEvent(travelType=", this.f56454a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$DeleteTravelSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeleteTravelSuccessEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DeleteTravelSuccessEvent f56455a = new DeleteTravelSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DeleteTravelSuccessEvent);
        }

        public final int hashCode() {
            return -723115794;
        }

        public final String toString() {
            return "DeleteTravelSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$EditTravelSuccessEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditTravelSuccessEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EditTravelSuccessEvent f56456a = new EditTravelSuccessEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EditTravelSuccessEvent);
        }

        public final int hashCode() {
            return -7472115;
        }

        public final String toString() {
            return "EditTravelSuccessEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ShareTravelEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "travelType", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareTravelEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56457a;

        public ShareTravelEvent(String str) {
            str.getClass();
            this.f56457a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShareTravelEvent) && Intrinsics.c(this.f56457a, ((ShareTravelEvent) obj).f56457a);
        }

        public final int hashCode() {
            return this.f56457a.hashCode();
        }

        public final String toString() {
            return fc.h("ShareTravelEvent(travelType=", this.f56457a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$SwitchToEditTravelEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "travelType", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SwitchToEditTravelEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56458a;

        public SwitchToEditTravelEvent(String str) {
            str.getClass();
            this.f56458a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SwitchToEditTravelEvent) && Intrinsics.c(this.f56458a, ((SwitchToEditTravelEvent) obj).f56458a);
        }

        public final int hashCode() {
            return this.f56458a.hashCode();
        }

        public final String toString() {
            return fc.h("SwitchToEditTravelEvent(travelType=", this.f56458a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$TravelDetailPageScreen;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "travelType", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TravelDetailPageScreen implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56459a;

        public TravelDetailPageScreen(String str) {
            str.getClass();
            this.f56459a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TravelDetailPageScreen) && Intrinsics.c(this.f56459a, ((TravelDetailPageScreen) obj).f56459a);
        }

        public final int hashCode() {
            return this.f56459a.hashCode();
        }

        public final String toString() {
            return fc.h("TravelDetailPageScreen(travelType=", this.f56459a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$TravelTypeSelectionEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "travelType", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TravelTypeSelectionEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56460a;

        public TravelTypeSelectionEvent(String str) {
            str.getClass();
            this.f56460a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TravelTypeSelectionEvent) && Intrinsics.c(this.f56460a, ((TravelTypeSelectionEvent) obj).f56460a);
        }

        public final int hashCode() {
            return this.f56460a.hashCode();
        }

        public final String toString() {
            return fc.h("TravelTypeSelectionEvent(travelType=", this.f56460a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ValidateNewTravelClickEvent;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;", "", "travelType", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ValidateNewTravelClickEvent implements TravelTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f56461a;

        public ValidateNewTravelClickEvent(String str) {
            str.getClass();
            this.f56461a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ValidateNewTravelClickEvent) && Intrinsics.c(this.f56461a, ((ValidateNewTravelClickEvent) obj).f56461a);
        }

        public final int hashCode() {
            return this.f56461a.hashCode();
        }

        public final String toString() {
            return fc.h("ValidateNewTravelClickEvent(travelType=", this.f56461a, ")");
        }
    }
}
