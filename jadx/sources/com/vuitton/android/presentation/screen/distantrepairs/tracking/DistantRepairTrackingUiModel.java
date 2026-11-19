package com.vuitton.android.presentation.screen.distantrepairs.tracking;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:(\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()\u0082\u0001(*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQ¨\u0006RÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "", "RepairListScreen", "RepairListInitiateClickedEvent", "RepairListHowToCreateClickedEvent", "RepairListTrackShipmentClickedEvent", "RepairListAcceptEstimateClickedEvent", "RepairListItemClickedEvent", "RepairDetailsOngoingScreen", "RepairDetailsHistoryScreen", "RepairDetailsCancelAppointmentEvent", "RepairDetailsRescheduleAppointmentClickedEvent", "RepairDetailsCancelAppointmentClickedEvent", "RescheduleAppointmentCalendarScreen", "RescheduleSelectDateEvent", "RescheduleSelectTimeEvent", "RescheduleConfirmClickedEvent", "RepairFormScreen", "EligibleProductCardClickedEvent", "FirstStepNextClickedEvent", "PostalCodeExclusionAppearedEvent", "SecondStepNextClickedEvent", "AddImageClickedEvent", "HowToTakePictureClickedEvent", "ThirdStepNextClickedEvent", "CreateRepairConfirmClickedEvent", "CancellationReasonScreen", "ConfirmCancellationClickedEvent", "PreliminaryAssessmentFormScreen", "ContactExpertClickedEvent", "AcceptEstimateClickedEvent", "DeclineRepairClickedEvent", "SendNextButtonClickedEvent", "ReceiveNextButtonClickedEvent", "AssessmentConfirmClickedEvent", "PreliminaryAssessmentConfirmationScreen", "ModifyDeliveryClickedEvent", "PreliminaryGoToMyCareClickedEvent", "RepairCreationConfirmationScreen", "AddToCalendarEvent", "GoToMyCareClickedEvent", "DiscoverServicesCardClickEvent", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AcceptEstimateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddImageClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AssessmentConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$CancellationReasonScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ConfirmCancellationClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ContactExpertClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$CreateRepairConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DeclineRepairClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DiscoverServicesCardClickEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$EligibleProductCardClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$FirstStepNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$GoToMyCareClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$HowToTakePictureClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ModifyDeliveryClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PostalCodeExclusionAppearedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryAssessmentConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryAssessmentFormScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryGoToMyCareClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ReceiveNextButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairCreationConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsHistoryScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsOngoingScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsRescheduleAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairFormScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListAcceptEstimateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListHowToCreateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListInitiateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListItemClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListTrackShipmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleAppointmentCalendarScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectTimeEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SecondStepNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SendNextButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ThirdStepNextClickedEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DistantRepairTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AcceptEstimateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AcceptEstimateClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AcceptEstimateClickedEvent f57420a = new AcceptEstimateClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AcceptEstimateClickedEvent);
        }

        public final int hashCode() {
            return 1946911476;
        }

        public final String toString() {
            return "AcceptEstimateClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddImageClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddImageClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddImageClickedEvent f57421a = new AddImageClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddImageClickedEvent);
        }

        public final int hashCode() {
            return 1929784222;
        }

        public final String toString() {
            return "AddImageClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddToCalendarEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCalendarEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AddToCalendarEvent f57422a = new AddToCalendarEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AddToCalendarEvent);
        }

        public final int hashCode() {
            return -245872847;
        }

        public final String toString() {
            return "AddToCalendarEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AssessmentConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AssessmentConfirmClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AssessmentConfirmClickedEvent f57423a = new AssessmentConfirmClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AssessmentConfirmClickedEvent);
        }

        public final int hashCode() {
            return 2051586048;
        }

        public final String toString() {
            return "AssessmentConfirmClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$CancellationReasonScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancellationReasonScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CancellationReasonScreen f57424a = new CancellationReasonScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CancellationReasonScreen);
        }

        public final int hashCode() {
            return 1035446916;
        }

        public final String toString() {
            return "CancellationReasonScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ConfirmCancellationClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "", "cancellationReasonId", "repairStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmCancellationClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57425a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57426b;

        public ConfirmCancellationClickedEvent(String str, String str2) {
            this.f57425a = str;
            this.f57426b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfirmCancellationClickedEvent)) {
                return false;
            }
            ConfirmCancellationClickedEvent confirmCancellationClickedEvent = (ConfirmCancellationClickedEvent) obj;
            return Intrinsics.c(this.f57425a, confirmCancellationClickedEvent.f57425a) && Intrinsics.c(this.f57426b, confirmCancellationClickedEvent.f57426b);
        }

        public final int hashCode() {
            String str = this.f57425a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f57426b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("ConfirmCancellationClickedEvent(cancellationReasonId=", this.f57425a, ", repairStatus=", this.f57426b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ContactExpertClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactExpertClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContactExpertClickedEvent f57427a = new ContactExpertClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactExpertClickedEvent);
        }

        public final int hashCode() {
            return 1214669388;
        }

        public final String toString() {
            return "ContactExpertClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$CreateRepairConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CreateRepairConfirmClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DistantRepairContactMethod f57428a;

        public CreateRepairConfirmClickedEvent(DistantRepairContactMethod distantRepairContactMethod) {
            distantRepairContactMethod.getClass();
            this.f57428a = distantRepairContactMethod;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CreateRepairConfirmClickedEvent) && this.f57428a == ((CreateRepairConfirmClickedEvent) obj).f57428a;
        }

        public final int hashCode() {
            return this.f57428a.hashCode();
        }

        public final String toString() {
            return "CreateRepairConfirmClickedEvent(contentType=" + this.f57428a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DeclineRepairClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeclineRepairClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DeclineRepairClickedEvent f57429a = new DeclineRepairClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DeclineRepairClickedEvent);
        }

        public final int hashCode() {
            return -1518007163;
        }

        public final String toString() {
            return "DeclineRepairClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$DiscoverServicesCardClickEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "", "moduleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DiscoverServicesCardClickEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57430a;

        public DiscoverServicesCardClickEvent(String str) {
            str.getClass();
            this.f57430a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DiscoverServicesCardClickEvent) && Intrinsics.c(this.f57430a, ((DiscoverServicesCardClickEvent) obj).f57430a);
        }

        public final int hashCode() {
            return this.f57430a.hashCode();
        }

        public final String toString() {
            return fc.h("DiscoverServicesCardClickEvent(moduleKey=", this.f57430a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$EligibleProductCardClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EligibleProductCardClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EligibleProductCardClickedEvent f57431a = new EligibleProductCardClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EligibleProductCardClickedEvent);
        }

        public final int hashCode() {
            return -1141836310;
        }

        public final String toString() {
            return "EligibleProductCardClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$FirstStepNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FirstStepNextClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DistantRepairContactMethod f57432a;

        public FirstStepNextClickedEvent(DistantRepairContactMethod distantRepairContactMethod) {
            distantRepairContactMethod.getClass();
            this.f57432a = distantRepairContactMethod;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FirstStepNextClickedEvent) && this.f57432a == ((FirstStepNextClickedEvent) obj).f57432a;
        }

        public final int hashCode() {
            return this.f57432a.hashCode();
        }

        public final String toString() {
            return "FirstStepNextClickedEvent(contentType=" + this.f57432a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$GoToMyCareClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GoToMyCareClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GoToMyCareClickedEvent f57433a = new GoToMyCareClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToMyCareClickedEvent);
        }

        public final int hashCode() {
            return -1292421276;
        }

        public final String toString() {
            return "GoToMyCareClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$HowToTakePictureClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HowToTakePictureClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HowToTakePictureClickedEvent f57434a = new HowToTakePictureClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof HowToTakePictureClickedEvent);
        }

        public final int hashCode() {
            return 586381552;
        }

        public final String toString() {
            return "HowToTakePictureClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ModifyDeliveryClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModifyDeliveryClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ModifyDeliveryClickedEvent f57435a = new ModifyDeliveryClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ModifyDeliveryClickedEvent);
        }

        public final int hashCode() {
            return -946364814;
        }

        public final String toString() {
            return "ModifyDeliveryClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PostalCodeExclusionAppearedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PostalCodeExclusionAppearedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PostalCodeExclusionAppearedEvent f57436a = new PostalCodeExclusionAppearedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PostalCodeExclusionAppearedEvent);
        }

        public final int hashCode() {
            return 742620001;
        }

        public final String toString() {
            return "PostalCodeExclusionAppearedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryAssessmentConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "", "currency", "", "price", "<init>", "(Ljava/lang/String;D)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreliminaryAssessmentConfirmationScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f57438b;

        public PreliminaryAssessmentConfirmationScreen(String str, double d) {
            str.getClass();
            this.f57437a = str;
            this.f57438b = d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PreliminaryAssessmentConfirmationScreen)) {
                return false;
            }
            PreliminaryAssessmentConfirmationScreen preliminaryAssessmentConfirmationScreen = (PreliminaryAssessmentConfirmationScreen) obj;
            return Intrinsics.c(this.f57437a, preliminaryAssessmentConfirmationScreen.f57437a) && Double.compare(this.f57438b, preliminaryAssessmentConfirmationScreen.f57438b) == 0;
        }

        public final int hashCode() {
            return Double.hashCode(this.f57438b) + (this.f57437a.hashCode() * 31);
        }

        public final String toString() {
            return "PreliminaryAssessmentConfirmationScreen(currency=" + this.f57437a + ", price=" + this.f57438b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryAssessmentFormScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreliminaryAssessmentFormScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PreliminaryAssessmentFormScreen f57439a = new PreliminaryAssessmentFormScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreliminaryAssessmentFormScreen);
        }

        public final int hashCode() {
            return -793145641;
        }

        public final String toString() {
            return "PreliminaryAssessmentFormScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PreliminaryGoToMyCareClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PreliminaryGoToMyCareClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PreliminaryGoToMyCareClickedEvent f57440a = new PreliminaryGoToMyCareClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PreliminaryGoToMyCareClickedEvent);
        }

        public final int hashCode() {
            return 711271416;
        }

        public final String toString() {
            return "PreliminaryGoToMyCareClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ReceiveNextButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ReceiveNextButtonClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ReceiveNextButtonClickedEvent f57441a = new ReceiveNextButtonClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ReceiveNextButtonClickedEvent);
        }

        public final int hashCode() {
            return -2017613142;
        }

        public final String toString() {
            return "ReceiveNextButtonClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairCreationConfirmationScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairCreationConfirmationScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairCreationConfirmationScreen f57442a = new RepairCreationConfirmationScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairCreationConfirmationScreen);
        }

        public final int hashCode() {
            return -2078433090;
        }

        public final String toString() {
            return "RepairCreationConfirmationScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairDetailsCancelAppointmentClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairDetailsCancelAppointmentClickedEvent f57443a = new RepairDetailsCancelAppointmentClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairDetailsCancelAppointmentClickedEvent);
        }

        public final int hashCode() {
            return -304220684;
        }

        public final String toString() {
            return "RepairDetailsCancelAppointmentClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairDetailsCancelAppointmentEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairDetailsCancelAppointmentEvent f57444a = new RepairDetailsCancelAppointmentEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairDetailsCancelAppointmentEvent);
        }

        public final int hashCode() {
            return 969877113;
        }

        public final String toString() {
            return "RepairDetailsCancelAppointmentEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsHistoryScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "repairStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairDetailsHistoryScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57446b;

        public RepairDetailsHistoryScreen(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f57445a = str;
            this.f57446b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RepairDetailsHistoryScreen)) {
                return false;
            }
            RepairDetailsHistoryScreen repairDetailsHistoryScreen = (RepairDetailsHistoryScreen) obj;
            String str = repairDetailsHistoryScreen.f57445a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57445a.equals(str) && this.f57446b.equals(repairDetailsHistoryScreen.f57446b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57446b.hashCode() + (this.f57445a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("RepairDetailsHistoryScreen(sku=", this.f57445a, ", repairStatus=", this.f57446b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsOngoingScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "repairStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairDetailsOngoingScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57447a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f57448b;

        public RepairDetailsOngoingScreen(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f57447a = str;
            this.f57448b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RepairDetailsOngoingScreen)) {
                return false;
            }
            RepairDetailsOngoingScreen repairDetailsOngoingScreen = (RepairDetailsOngoingScreen) obj;
            String str = repairDetailsOngoingScreen.f57447a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57447a.equals(str) && this.f57448b.equals(repairDetailsOngoingScreen.f57448b);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57448b.hashCode() + (this.f57447a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.l("RepairDetailsOngoingScreen(sku=", this.f57447a, ", repairStatus=", this.f57448b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsRescheduleAppointmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairDetailsRescheduleAppointmentClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairDetailsRescheduleAppointmentClickedEvent f57449a = new RepairDetailsRescheduleAppointmentClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairDetailsRescheduleAppointmentClickedEvent);
        }

        public final int hashCode() {
            return -1768366428;
        }

        public final String toString() {
            return "RepairDetailsRescheduleAppointmentClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairFormScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairFormScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairFormScreen f57450a = new RepairFormScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairFormScreen);
        }

        public final int hashCode() {
            return 796533966;
        }

        public final String toString() {
            return "RepairFormScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListAcceptEstimateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairListAcceptEstimateClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairListAcceptEstimateClickedEvent f57451a = new RepairListAcceptEstimateClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairListAcceptEstimateClickedEvent);
        }

        public final int hashCode() {
            return -389379105;
        }

        public final String toString() {
            return "RepairListAcceptEstimateClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListHowToCreateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairListHowToCreateClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairListHowToCreateClickedEvent f57452a = new RepairListHowToCreateClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairListHowToCreateClickedEvent);
        }

        public final int hashCode() {
            return -1757912354;
        }

        public final String toString() {
            return "RepairListHowToCreateClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListInitiateClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairListInitiateClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairListInitiateClickedEvent f57453a = new RepairListInitiateClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairListInitiateClickedEvent);
        }

        public final int hashCode() {
            return 492896168;
        }

        public final String toString() {
            return "RepairListInitiateClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListItemClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "isOnGoing", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairListItemClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57454a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f57455b;

        public RepairListItemClickedEvent(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f57454a = str;
            this.f57455b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RepairListItemClickedEvent)) {
                return false;
            }
            RepairListItemClickedEvent repairListItemClickedEvent = (RepairListItemClickedEvent) obj;
            String str = repairListItemClickedEvent.f57454a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f57454a.equals(str) && this.f57455b == repairListItemClickedEvent.f57455b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Boolean.hashCode(this.f57455b) + (this.f57454a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.m("RepairListItemClickedEvent(sku=", this.f57454a, ", isOnGoing=", ")", this.f57455b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairListScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairListScreen f57456a = new RepairListScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairListScreen);
        }

        public final int hashCode() {
            return 1237646632;
        }

        public final String toString() {
            return "RepairListScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListTrackShipmentClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RepairListTrackShipmentClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RepairListTrackShipmentClickedEvent f57457a = new RepairListTrackShipmentClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RepairListTrackShipmentClickedEvent);
        }

        public final int hashCode() {
            return -247962340;
        }

        public final String toString() {
            return "RepairListTrackShipmentClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleAppointmentCalendarScreen;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RescheduleAppointmentCalendarScreen implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RescheduleAppointmentCalendarScreen f57458a = new RescheduleAppointmentCalendarScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RescheduleAppointmentCalendarScreen);
        }

        public final int hashCode() {
            return -686490258;
        }

        public final String toString() {
            return "RescheduleAppointmentCalendarScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleConfirmClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RescheduleConfirmClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppointmentCalendarContext f57459a;

        public RescheduleConfirmClickedEvent(AppointmentCalendarContext appointmentCalendarContext) {
            appointmentCalendarContext.getClass();
            this.f57459a = appointmentCalendarContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RescheduleConfirmClickedEvent) && this.f57459a == ((RescheduleConfirmClickedEvent) obj).f57459a;
        }

        public final int hashCode() {
            return this.f57459a.hashCode();
        }

        public final String toString() {
            return "RescheduleConfirmClickedEvent(context=" + this.f57459a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RescheduleSelectDateEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppointmentCalendarContext f57460a;

        public RescheduleSelectDateEvent(AppointmentCalendarContext appointmentCalendarContext) {
            appointmentCalendarContext.getClass();
            this.f57460a = appointmentCalendarContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RescheduleSelectDateEvent) && this.f57460a == ((RescheduleSelectDateEvent) obj).f57460a;
        }

        public final int hashCode() {
            return this.f57460a.hashCode();
        }

        public final String toString() {
            return "RescheduleSelectDateEvent(context=" + this.f57460a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectTimeEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RescheduleSelectTimeEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppointmentCalendarContext f57461a;

        public RescheduleSelectTimeEvent(AppointmentCalendarContext appointmentCalendarContext) {
            appointmentCalendarContext.getClass();
            this.f57461a = appointmentCalendarContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RescheduleSelectTimeEvent) && this.f57461a == ((RescheduleSelectTimeEvent) obj).f57461a;
        }

        public final int hashCode() {
            return this.f57461a.hashCode();
        }

        public final String toString() {
            return "RescheduleSelectTimeEvent(context=" + this.f57461a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SecondStepNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SecondStepNextClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DistantRepairContactMethod f57462a;

        public SecondStepNextClickedEvent(DistantRepairContactMethod distantRepairContactMethod) {
            distantRepairContactMethod.getClass();
            this.f57462a = distantRepairContactMethod;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SecondStepNextClickedEvent) && this.f57462a == ((SecondStepNextClickedEvent) obj).f57462a;
        }

        public final int hashCode() {
            return this.f57462a.hashCode();
        }

        public final String toString() {
            return "SecondStepNextClickedEvent(contentType=" + this.f57462a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$SendNextButtonClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SendNextButtonClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SendNextButtonClickedEvent f57463a = new SendNextButtonClickedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SendNextButtonClickedEvent);
        }

        public final int hashCode() {
            return -1295587631;
        }

        public final String toString() {
            return "SendNextButtonClickedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ThirdStepNextClickedEvent;", "Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;", CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ThirdStepNextClickedEvent implements DistantRepairTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DistantRepairContactMethod f57464a;

        public ThirdStepNextClickedEvent(DistantRepairContactMethod distantRepairContactMethod) {
            distantRepairContactMethod.getClass();
            this.f57464a = distantRepairContactMethod;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ThirdStepNextClickedEvent) && this.f57464a == ((ThirdStepNextClickedEvent) obj).f57464a;
        }

        public final int hashCode() {
            return this.f57464a.hashCode();
        }

        public final String toString() {
            return "ThirdStepNextClickedEvent(contentType=" + this.f57464a + ")";
        }
    }
}
