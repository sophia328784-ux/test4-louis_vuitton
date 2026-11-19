package com.vuitton.android.presentation.screen.services.models;

import defpackage.a;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\r\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u0082\u0001\r\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b¨\u0006\u001cÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "", "ServicesScreen", "BookAppointmentEvent", "RequestRepairEvent", "OpenStoreLocatorEvent", "OpenArtOfGiftingEvent", "OpenPersonalizationEvent", "OpenContactUsEvent", "OpenFaqEvent", "OpenCareServiceEvent", "OpenPersonalSelectionEvent", "OpenMyLVEvent", "OpenLVPassEvent", "ExpansionListToggleEvent", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$BookAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenArtOfGiftingEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenCareServiceEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenContactUsEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenFaqEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenLVPassEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenMyLVEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalSelectionEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalizationEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenStoreLocatorEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$RequestRepairEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ServicesScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ServicesTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$BookAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BookAppointmentEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BookAppointmentEvent f64383a = new BookAppointmentEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BookAppointmentEvent);
        }

        public final int hashCode() {
            return -226633371;
        }

        public final String toString() {
            return "BookAppointmentEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ExpansionListToggleEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "", "index", "", "moduleKey", "", "isExpanded", "<init>", "(ILjava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExpansionListToggleEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f64384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f64386c;

        public ExpansionListToggleEvent(int i2, String str, boolean z) {
            str.getClass();
            this.f64384a = i2;
            this.f64385b = str;
            this.f64386c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExpansionListToggleEvent)) {
                return false;
            }
            ExpansionListToggleEvent expansionListToggleEvent = (ExpansionListToggleEvent) obj;
            return this.f64384a == expansionListToggleEvent.f64384a && Intrinsics.c(this.f64385b, expansionListToggleEvent.f64385b) && this.f64386c == expansionListToggleEvent.f64386c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f64386c) + fc.b(Integer.hashCode(this.f64384a) * 31, 31, this.f64385b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ExpansionListToggleEvent(index=");
            sb.append(this.f64384a);
            sb.append(", moduleKey=");
            sb.append(this.f64385b);
            sb.append(", isExpanded=");
            return a.p(sb, this.f64386c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenArtOfGiftingEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenArtOfGiftingEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenArtOfGiftingEvent f64387a = new OpenArtOfGiftingEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenArtOfGiftingEvent);
        }

        public final int hashCode() {
            return -1280592233;
        }

        public final String toString() {
            return "OpenArtOfGiftingEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenCareServiceEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenCareServiceEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenCareServiceEvent f64388a = new OpenCareServiceEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenCareServiceEvent);
        }

        public final int hashCode() {
            return 1646179105;
        }

        public final String toString() {
            return "OpenCareServiceEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenContactUsEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenContactUsEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenContactUsEvent f64389a = new OpenContactUsEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenContactUsEvent);
        }

        public final int hashCode() {
            return -1149604441;
        }

        public final String toString() {
            return "OpenContactUsEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenFaqEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenFaqEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenFaqEvent f64390a = new OpenFaqEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenFaqEvent);
        }

        public final int hashCode() {
            return 740786351;
        }

        public final String toString() {
            return "OpenFaqEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenLVPassEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenLVPassEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenLVPassEvent f64391a = new OpenLVPassEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenLVPassEvent);
        }

        public final int hashCode() {
            return -34812076;
        }

        public final String toString() {
            return "OpenLVPassEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenMyLVEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenMyLVEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenMyLVEvent f64392a = new OpenMyLVEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenMyLVEvent);
        }

        public final int hashCode() {
            return -1730888231;
        }

        public final String toString() {
            return "OpenMyLVEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalSelectionEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenPersonalSelectionEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenPersonalSelectionEvent f64393a = new OpenPersonalSelectionEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenPersonalSelectionEvent);
        }

        public final int hashCode() {
            return 1152427801;
        }

        public final String toString() {
            return "OpenPersonalSelectionEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenPersonalizationEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenPersonalizationEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenPersonalizationEvent f64394a = new OpenPersonalizationEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenPersonalizationEvent);
        }

        public final int hashCode() {
            return 1988277729;
        }

        public final String toString() {
            return "OpenPersonalizationEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenStoreLocatorEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenStoreLocatorEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenStoreLocatorEvent f64395a = new OpenStoreLocatorEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenStoreLocatorEvent);
        }

        public final int hashCode() {
            return -662448134;
        }

        public final String toString() {
            return "OpenStoreLocatorEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$RequestRepairEvent;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequestRepairEvent implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RequestRepairEvent f64396a = new RequestRepairEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RequestRepairEvent);
        }

        public final int hashCode() {
            return 2117449567;
        }

        public final String toString() {
            return "RequestRepairEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$ServicesScreen;", "Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ServicesScreen implements ServicesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ServicesScreen f64397a = new ServicesScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ServicesScreen);
        }

        public final int hashCode() {
            return 148546891;
        }

        public final String toString() {
            return "ServicesScreen";
        }
    }
}
