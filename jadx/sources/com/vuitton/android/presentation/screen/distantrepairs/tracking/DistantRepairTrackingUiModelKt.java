package com.vuitton.android.presentation.screen.distantrepairs.tracking;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.cj;
import defpackage.o60;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairTrackingUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57465a;

        static {
            int[] iArr = new int[DistantRepairContactMethod.values().length];
            try {
                iArr[DistantRepairContactMethod.VIDEO_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DistantRepairContactMethod.PHONE_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DistantRepairContactMethod.EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57465a = iArr;
        }
    }

    public static final String a(DistantRepairContactMethod distantRepairContactMethod) {
        int i2 = WhenMappings.f57465a[distantRepairContactMethod.ordinal()];
        if (i2 == 1) {
            return "video call";
        }
        if (i2 == 2) {
            return "call";
        }
        if (i2 == 3) {
            return "email";
        }
        v40.g();
        return null;
    }

    public static final Hit b(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        distantRepairTrackingUiModel.getClass();
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairListScreen.f57456a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/MyCareService", "mylv/my_repairs", "mylv", null, 17, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairListInitiateClickedEvent.f57453a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService", "initiate_repair", "product_care", "click_cta", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairListHowToCreateClickedEvent.f57452a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService", " how_does_repair_process_work", "product_care", "information", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairListTrackShipmentClickedEvent.f57457a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService", " track_my_shipment", "product_care", "information", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairListAcceptEstimateClickedEvent.f57451a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService/TrackMyShipment", " confirm", "product_care", "information", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.RepairListItemClickedEvent) {
            DistantRepairTrackingUiModel.RepairListItemClickedEvent repairListItemClickedEvent = (DistantRepairTrackingUiModel.RepairListItemClickedEvent) distantRepairTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, repairListItemClickedEvent.f57455b ? "LVPass/MyLV/MyCareService/OnGoing" : "LVPass/MyLV/MyCareService/History", "product_more_information", "product_care", "information", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, repairListItemClickedEvent.f57454a))), 33, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.RepairDetailsOngoingScreen) {
            DistantRepairTrackingUiModel.RepairDetailsOngoingScreen repairDetailsOngoingScreen = (DistantRepairTrackingUiModel.RepairDetailsOngoingScreen) distantRepairTrackingUiModel;
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/MyCareService/OnGoing/Detail", "mylv/my_repairs/ongoing/detail", "my_repairs", CollectionsKt.P(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, repairDetailsOngoingScreen.f57447a)), new AdditionalProperty.ContentType(repairDetailsOngoingScreen.f57448b)), 1, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.RepairDetailsHistoryScreen) {
            DistantRepairTrackingUiModel.RepairDetailsHistoryScreen repairDetailsHistoryScreen = (DistantRepairTrackingUiModel.RepairDetailsHistoryScreen) distantRepairTrackingUiModel;
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/MyCareService/History/Detail", "mylv/my_repairs/history/detail", "my_repairs", CollectionsKt.P(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, repairDetailsHistoryScreen.f57445a)), new AdditionalProperty.ContentType(repairDetailsHistoryScreen.f57446b)), 1, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentEvent.f57444a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService", "cancel_repair_appointment", "product_care", "modification", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairDetailsRescheduleAppointmentClickedEvent.f57449a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService/OnGoing/Detail", "reschedule_appointment", "product_care", "click", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentClickedEvent.f57443a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService/OnGoing/Detail", "cancel_repair_appointment", "product_care", "click", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RescheduleAppointmentCalendarScreen.f57458a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "care_services_appointment_calendar", null, "distant_repair", null, 17, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.RescheduleSelectDateEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "care_services_appointment_calendar", "select_date", "client_services", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("calendar"), new AdditionalProperty.Context(((DistantRepairTrackingUiModel.RescheduleSelectDateEvent) distantRepairTrackingUiModel).f57460a.getValue())), 33, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.RescheduleSelectTimeEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "care_services_appointment_calendar", "select_time", "client_services", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("calendar"), new AdditionalProperty.Context(((DistantRepairTrackingUiModel.RescheduleSelectTimeEvent) distantRepairTrackingUiModel).f57461a.getValue())), 33, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.RescheduleConfirmClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "care_services_appointment_calendar", "confirm", "client_services", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("calendar"), new AdditionalProperty.Context(((DistantRepairTrackingUiModel.RescheduleConfirmClickedEvent) distantRepairTrackingUiModel).f57459a.getValue())), 33, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairFormScreen.f57450a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/DistantRepair/InitiateARepair", "distant_repair/initiate_a_repair", "initiate_a_repair", null, 17, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.EligibleProductCardClickedEvent.f57431a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "check_your_eligibility", "client_services", "click_on_card", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.FirstStepNextClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "step1_click_next", "initiateARepair", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentType(a(((DistantRepairTrackingUiModel.FirstStepNextClickedEvent) distantRepairTrackingUiModel).f57432a))), 33, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.PostalCodeExclusionAppearedEvent.f57436a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "region_not_eligible", "initiateARepair", "navigation", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.SecondStepNextClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "step2_click_next", "initiateARepair", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentType(a(((DistantRepairTrackingUiModel.SecondStepNextClickedEvent) distantRepairTrackingUiModel).f57462a))), 33, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.AddImageClickedEvent.f57421a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "upload_picture", "initiateARepair", "upload", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.HowToTakePictureClickedEvent.f57434a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "how_to_take_picture", "initiateARepair", "information", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.ThirdStepNextClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "step3_click_next", "initiateARepair", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentType(a(((DistantRepairTrackingUiModel.ThirdStepNextClickedEvent) distantRepairTrackingUiModel).f57464a))), 33, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.CreateRepairConfirmClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/InitiateARepair", "step3_click_confirmation", "initiateARepair", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentType(a(((DistantRepairTrackingUiModel.CreateRepairConfirmClickedEvent) distantRepairTrackingUiModel).f57428a))), 33, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.CancellationReasonScreen.f57424a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/MyCareService/CancellationReasons", "distant_repair/cancellation_reason", "my_repairs", null, 17, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.ConfirmCancellationClickedEvent) {
            DistantRepairTrackingUiModel.ConfirmCancellationClickedEvent confirmCancellationClickedEvent = (DistantRepairTrackingUiModel.ConfirmCancellationClickedEvent) distantRepairTrackingUiModel;
            String str = confirmCancellationClickedEvent.f57425a;
            if (str == null) {
                str = "null";
            }
            String strConcat = "confirm_".concat(str);
            String str2 = confirmCancellationClickedEvent.f57426b;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService/CancellationReasons", strConcat, "client_services", "confirm", null, str2 != null ? o60.t(str2) : EmptyList.f71768b, 33, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.PreliminaryAssessmentFormScreen.f57439a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/DistantRepair/PreliminaryAssessment", "distant_repair/preliminary_assessment", "preliminary_assessment", null, 17, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.ContactExpertClickedEvent.f57427a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/PreliminaryAssessment", "contact_expert", "preliminary_assessment", "contact", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.AcceptEstimateClickedEvent.f57420a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/PreliminaryAssessment", null, "preliminary_assessment", "accept_estimate", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.DeclineRepairClickedEvent.f57429a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/PreliminaryAssessment", null, "preliminary_assessment", "decline_estimate", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.SendNextButtonClickedEvent.f57463a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/PreliminaryAssessment", "step2_click_next", "preliminary_assessment", null, null, null, 113, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.ReceiveNextButtonClickedEvent.f57441a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/PreliminaryAssessment", "step3_click_next", "preliminary_assessment", null, null, null, 113, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.AssessmentConfirmClickedEvent.f57423a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/PreliminaryAssessment", "confirmationPreliminaryAssessment", "preliminary_assessment", "confirm", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.PreliminaryAssessmentConfirmationScreen) {
            DistantRepairTrackingUiModel.PreliminaryAssessmentConfirmationScreen preliminaryAssessmentConfirmationScreen = (DistantRepairTrackingUiModel.PreliminaryAssessmentConfirmationScreen) distantRepairTrackingUiModel;
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/DistantRepair/ConfirmationRegistrationRepair", "distant_repair/confirmation_registration_repair", "confirmation_registration_repair", CollectionsKt.P(new AdditionalProperty.Price(String.valueOf(preliminaryAssessmentConfirmationScreen.f57438b)), new AdditionalProperty.Currency(preliminaryAssessmentConfirmationScreen.f57437a)), 1, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.ModifyDeliveryClickedEvent.f57435a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/ConfirmationRegistrationRepair", "modify_delivery", "confirmation_registration_repair", "modification", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.PreliminaryGoToMyCareClickedEvent.f57440a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/ConfirmationRegistrationRepair", "go_to_my_care_service", "confirmation_registration_repair", null, null, null, 113, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.RepairCreationConfirmationScreen.f57442a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/DistantRepair/RepairRequestSubmitted", "distant_repair/repair_request_submitted", "repair_request_submitted", null, 17, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.AddToCalendarEvent.f57422a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/RepairRequestSubmitted", "add_to_calendar", "repair_request_submitted", "click_cta", null, null, 97, null);
        }
        if (distantRepairTrackingUiModel.equals(DistantRepairTrackingUiModel.GoToMyCareClickedEvent.f57433a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/DistantRepair/RepairRequestSubmitted", "go_to_my_care_service", "repair_request_submitted", null, null, null, 113, null);
        }
        if (distantRepairTrackingUiModel instanceof DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/MyCareService", "discover_the_services", "product_care", "click", null, CollectionsKt.O(new AdditionalProperty.ModuleId(((DistantRepairTrackingUiModel.DiscoverServicesCardClickEvent) distantRepairTrackingUiModel).f57430a)), 33, null);
        }
        v40.g();
        return null;
    }
}
