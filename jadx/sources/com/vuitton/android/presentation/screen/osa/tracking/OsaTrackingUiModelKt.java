package com.vuitton.android.presentation.screen.osa.tracking;

import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaTrackingUiModelKt {
    public static final Hit a(OsaTrackingUiModel osaTrackingUiModel, InAppDispatch inAppDispatch, Boolean bool, String str) {
        String str2;
        osaTrackingUiModel.getClass();
        inAppDispatch.getClass();
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.OsaListScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Services/MyAppointment", "Services/my_appointment", "services", CollectionsKt.O(new AdditionalProperty.NumberOfAppointments(((OsaTrackingUiModel.OsaListScreen) osaTrackingUiModel).f61007a)), 1, null);
        }
        if (osaTrackingUiModel.equals(OsaTrackingUiModel.BookAppointmentEvent.f60986a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Services/MyAppointment", "book_online_store_appointment", "services", "my_appointment", null, null, 97, null);
        }
        if (osaTrackingUiModel.equals(OsaTrackingUiModel.PrepareAppointmentEvent.f61008a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Services/MyAppointment", "prepare_your_appointment", "services", "my_appointment", null, null, 97, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.ModifyAppointmentEvent) {
            OsaTrackingUiModel.ModifyAppointmentEvent modifyAppointmentEvent = (OsaTrackingUiModel.ModifyAppointmentEvent) osaTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Services/MyAppointment", "modify_appointment", "services", "click", null, CollectionsKt.P(new AdditionalProperty.AppointmentId(modifyAppointmentEvent.f61003a), new AdditionalProperty.StoreId(modifyAppointmentEvent.f61004b)), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.CancelAppointmentEvent) {
            OsaTrackingUiModel.CancelAppointmentEvent cancelAppointmentEvent = (OsaTrackingUiModel.CancelAppointmentEvent) osaTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Services/MyAppointment", "appointment_cancellation_intention", "services", "my_appointment", null, CollectionsKt.P(new AdditionalProperty.AppointmentId(cancelAppointmentEvent.f60998a), new AdditionalProperty.StoreId(cancelAppointmentEvent.f60999b)), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.CancellationConfirmedEvent) {
            OsaItemUiModel osaItemUiModel = ((OsaTrackingUiModel.CancellationConfirmedEvent) osaTrackingUiModel).f61000a;
            AdditionalProperty.AppointmentId appointmentId = new AdditionalProperty.AppointmentId(osaItemUiModel.f60924a);
            StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
            str2 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60938a : null;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Services/MyAppointment", "appointment_cancellation_confirm", "services", "my_appointment", null, CollectionsKt.P(appointmentId, new AdditionalProperty.StoreId(str2 != null ? str2 : "")), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.AddAppointmentToCalendarEvent) {
            OsaItemUiModel osaItemUiModel2 = ((OsaTrackingUiModel.AddAppointmentToCalendarEvent) osaTrackingUiModel).f60973a;
            String string = osaItemUiModel2.d.toString();
            string.getClass();
            AdditionalProperty.AppointmentDate appointmentDate = new AdditionalProperty.AppointmentDate(string);
            StoreInformationItemUiModel storeInformationItemUiModel2 = osaItemUiModel2.f60929h;
            str2 = storeInformationItemUiModel2 != null ? storeInformationItemUiModel2.f60938a : null;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Services/MyAppointment", "add_to_calendar_intention", "services", "my_appointment", null, CollectionsKt.P(appointmentDate, new AdditionalProperty.StoreId(str2 != null ? str2 : "")), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/my_appointment/booking", "mylv/my_appointment/booking", "mylv", CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentScreen) osaTrackingUiModel).f60992a))), 1, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.SelectReasonEvent) {
            ListBuilder listBuilderV = CollectionsKt.v();
            OsaTrackingUiModel.SelectReasonEvent selectReasonEvent = (OsaTrackingUiModel.SelectReasonEvent) osaTrackingUiModel;
            listBuilderV.add(new AdditionalProperty.ContentId(selectReasonEvent.f61009a));
            listBuilderV.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(selectReasonEvent.f61010b)));
            if (bool != null) {
                listBuilderV.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking", "confirm_reason", "osa", "click", null, CollectionsKt.r(listBuilderV), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.ModifyReasonClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking", "modify_reason", "osa", "click", null, CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.ModifyReasonClickedEvent) osaTrackingUiModel).f61005a))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentLocationSelectionClickedEvent) {
            OsaTrackingUiModel.BookAppointmentLocationSelectionClickedEvent bookAppointmentLocationSelectionClickedEvent = (OsaTrackingUiModel.BookAppointmentLocationSelectionClickedEvent) osaTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking", "choose_location", "mylv", "my_appointment", null, CollectionsKt.P(new AdditionalProperty.AppointmentSearch(bookAppointmentLocationSelectionClickedEvent.f60987a), new AdditionalProperty.ContentType(OsaTrackingUiModel.a(bookAppointmentLocationSelectionClickedEvent.f60988b))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentDateSelectionClickedEvent) {
            ListBuilder listBuilderV2 = CollectionsKt.v();
            listBuilderV2.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentDateSelectionClickedEvent) osaTrackingUiModel).f60981a)));
            if (bool != null) {
                listBuilderV2.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV2.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking", "open_date_pop_in", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV2), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentNextClickedEvent) {
            ListBuilder listBuilderV3 = CollectionsKt.v();
            OsaTrackingUiModel.BookAppointmentNextClickedEvent bookAppointmentNextClickedEvent = (OsaTrackingUiModel.BookAppointmentNextClickedEvent) osaTrackingUiModel;
            listBuilderV3.add(new AdditionalProperty.PrebookAppointmentDate(DateTimeUtils.r(inAppDispatch, bookAppointmentNextClickedEvent.f60989a.f57419f)));
            listBuilderV3.add(new AdditionalProperty.PrebookAppointmentType(bookAppointmentNextClickedEvent.f60991c.getType()));
            listBuilderV3.add(new AdditionalProperty.StoreId(bookAppointmentNextClickedEvent.f60990b.f60914b));
            listBuilderV3.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(bookAppointmentNextClickedEvent.d)));
            if (bool != null) {
                listBuilderV3.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV3.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking", "cta_next", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV3), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentDateSelectionScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/my_appointment/booking/date_selection", "mylv/my_appointment/booking", "mylv", CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentDateSelectionScreen) osaTrackingUiModel).f60983a))), 1, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentDateSelectionSelectedClickedEvent) {
            OsaTrackingUiModel.BookAppointmentDateSelectionSelectedClickedEvent bookAppointmentDateSelectionSelectedClickedEvent = (OsaTrackingUiModel.BookAppointmentDateSelectionSelectedClickedEvent) osaTrackingUiModel;
            String string2 = bookAppointmentDateSelectionSelectedClickedEvent.f60984a.toString();
            string2.getClass();
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/date_selection", "choose_date", "mylv", "my_appointment", null, CollectionsKt.P(new AdditionalProperty.PrebookAppointmentDate(DateTimeUtils.r(inAppDispatch, string2)), new AdditionalProperty.ContentType(OsaTrackingUiModel.a(bookAppointmentDateSelectionSelectedClickedEvent.f60985b))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentDateSelectionNoDateEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/date_selection", "no_date_available", "mylv", "my_appointment", null, CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentDateSelectionNoDateEvent) osaTrackingUiModel).f60982a))), 33, null);
        }
        if (osaTrackingUiModel.equals(OsaTrackingUiModel.KisaConsentScreen.f61002a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "my_appointment_booking_kisa", "mylv/my_appointment/booking/kisa", "mylv", null, 17, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.KisaConsentConfirmEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "my_appointment_booking_kisa", "confirm_consent", "mylv", "click", null, null, 97, null);
        }
        if (osaTrackingUiModel.equals(OsaTrackingUiModel.BookAppointmentContactInfoScreen.f60980a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/my_appointment/booking/contact_information", "mylv/my_appointment/booking", "mylv", null, 17, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.ModifyReasonFromContactInfoClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/contact_information", "modify_reason", "osa", "click", null, CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.ModifyReasonFromContactInfoClickedEvent) osaTrackingUiModel).f61006a))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentContactInfoConfirmAccountClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/contact_information", "cta_confirm_email", "mylv", "my_appointment", null, CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentContactInfoConfirmAccountClickedEvent) osaTrackingUiModel).f60975a))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentContactInfoLoginClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/unicity/email", "cta_login_to_confirm_appointment", "mylv", "my_appointment", null, CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentContactInfoLoginClickedEvent) osaTrackingUiModel).f60979a))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentContactInfoCancelClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/unicity/email", "cta_cancel", "mylv", "my_appointment", null, CollectionsKt.O(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BookAppointmentContactInfoCancelClickedEvent) osaTrackingUiModel).f60974a))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BookAppointmentContactInfoConfirmAppointmentClickedEvent) {
            OsaTrackingUiModel.BookAppointmentContactInfoConfirmAppointmentClickedEvent bookAppointmentContactInfoConfirmAppointmentClickedEvent = (OsaTrackingUiModel.BookAppointmentContactInfoConfirmAppointmentClickedEvent) osaTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/contact_information", "cta_appointment_confirm", "mylv", "my_appointment", null, CollectionsKt.P(new AdditionalProperty.PrebookAppointmentDate(DateTimeUtils.r(inAppDispatch, bookAppointmentContactInfoConfirmAppointmentClickedEvent.f60976a.f57419f)), new AdditionalProperty.StoreId(bookAppointmentContactInfoConfirmAppointmentClickedEvent.f60977b.f60914b), new AdditionalProperty.ContentType(OsaTrackingUiModel.a(bookAppointmentContactInfoConfirmAppointmentClickedEvent.f60978c))), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BottomSheetAddCalendarClickedEvent) {
            ListBuilder listBuilderV4 = CollectionsKt.v();
            listBuilderV4.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BottomSheetAddCalendarClickedEvent) osaTrackingUiModel).f60993a)));
            if (bool != null) {
                listBuilderV4.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV4.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/confirmation", "cta_add_to_calendar", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV4), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BottomSheetCreateAccountClickedEvent) {
            ListBuilder listBuilderV5 = CollectionsKt.v();
            listBuilderV5.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BottomSheetCreateAccountClickedEvent) osaTrackingUiModel).f60995a)));
            if (bool != null) {
                listBuilderV5.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV5.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment", "cta_create_an_account_and_manage", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV5), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BottomSheetCancelKeepPreviousAppointmentClickedEvent) {
            ListBuilder listBuilderV6 = CollectionsKt.v();
            listBuilderV6.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BottomSheetCancelKeepPreviousAppointmentClickedEvent) osaTrackingUiModel).f60994a)));
            if (bool != null) {
                listBuilderV6.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV6.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment", "cta_keep_previous_appointment", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV6), 33, null);
        }
        if (osaTrackingUiModel instanceof OsaTrackingUiModel.BottomSheetReplaceAppointmentClickedEvent) {
            ListBuilder listBuilderV7 = CollectionsKt.v();
            listBuilderV7.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BottomSheetReplaceAppointmentClickedEvent) osaTrackingUiModel).f60997a)));
            if (bool != null) {
                listBuilderV7.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
            }
            if (str != null) {
                listBuilderV7.add(new AdditionalProperty.Origin(str));
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment", "cta_replace_this_appointment", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV7), 33, null);
        }
        if (!(osaTrackingUiModel instanceof OsaTrackingUiModel.BottomSheetGoToAppointmentClickedEvent)) {
            v40.g();
            return null;
        }
        ListBuilder listBuilderV8 = CollectionsKt.v();
        listBuilderV8.add(new AdditionalProperty.ContentType(OsaTrackingUiModel.a(((OsaTrackingUiModel.BottomSheetGoToAppointmentClickedEvent) osaTrackingUiModel).f60996a)));
        if (bool != null) {
            listBuilderV8.add(new AdditionalProperty.VirtualStudio(bool.booleanValue()));
        }
        if (str != null) {
            listBuilderV8.add(new AdditionalProperty.Origin(str));
        }
        return new Hit.EventHit.DefaultEventHit(null, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment", "cta_go_to_your_appointment", "mylv", "my_appointment", null, CollectionsKt.r(listBuilderV8), 33, null);
    }
}
