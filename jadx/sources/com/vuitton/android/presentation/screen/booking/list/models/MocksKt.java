package com.vuitton.android.presentation.screen.booking.list.models;

import com.linkplay.medialib.ContentTree;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingCalendarData;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import java.time.Instant;
import java.time.ZoneId;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f54627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f54628b;

    static {
        BookingId.Companion companion = BookingId.INSTANCE;
        ExperienceId.Companion companion2 = ExperienceId.INSTANCE;
        BookingTypeUiModel bookingTypeUiModel = BookingTypeUiModel.EXPERIENCE;
        BookingInfoTypeUiModel bookingInfoTypeUiModel = BookingInfoTypeUiModel.TEXT;
        List listP = CollectionsKt.P(new BookingInfoUiModel("Guests", "2 pax", bookingInfoTypeUiModel), new BookingInfoUiModel("Date & limits", "16 May 2026, at 3:00pm", bookingInfoTypeUiModel), new BookingInfoUiModel("Address", " Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33, lorem ipsum", BookingInfoTypeUiModel.ADDRESS), new BookingInfoUiModel("Phone", "+852 3892 3890", BookingInfoTypeUiModel.PHONE));
        BookingActionTypeUiModel bookingActionTypeUiModel = BookingActionTypeUiModel.ADD_TO_CALENDAR;
        Instant instant = Instant.parse("2026-05-16T07:00:00Z");
        instant.getClass();
        Instant instant2 = Instant.parse("2026-05-16T09:00:00Z");
        instant2.getClass();
        ZoneId zoneIdOf = ZoneId.of("Asia/Hong_Kong");
        zoneIdOf.getClass();
        BookingActionUiModel bookingActionUiModel = new BookingActionUiModel(bookingActionTypeUiModel, new BookingCalendarData(instant, instant2, zoneIdOf));
        BookingActionUiModel bookingActionUiModel2 = new BookingActionUiModel(BookingActionTypeUiModel.QR_CODE, null);
        BookingActionTypeUiModel bookingActionTypeUiModel2 = BookingActionTypeUiModel.CANCEL;
        BookingUiModel bookingUiModel = new BookingUiModel("1", "exp1", bookingTypeUiModel, "LV The Place K11 Visionary Journeys", "EXHIBITION", "Saturday, May 16, 2026, 3:00 PM", "", "", "Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33", listP, "Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Your card will only be charged 200 HKD in the event of a late cancellation (less than 24 hours in advance).", CollectionsKt.P(bookingActionUiModel, bookingActionUiModel2, new BookingActionUiModel(bookingActionTypeUiModel2, null)), null);
        BookingTypeUiModel bookingTypeUiModel2 = BookingTypeUiModel.APPOINTMENT;
        EmptyList emptyList = EmptyList.f71768b;
        BookingUiModel bookingUiModel2 = new BookingUiModel(ContentTree.AUDIO_ID, "exp2", bookingTypeUiModel2, "In-store appointment", "STORE", "Saturday, May 16, 2026, 3:00 PM", "", "", "Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33", emptyList, null, null, CollectionsKt.P(new BookingActionUiModel(BookingActionTypeUiModel.MODIFY, null), new BookingActionUiModel(bookingActionTypeUiModel2, null)), null);
        Instant instant3 = Instant.parse("2026-05-16T04:30:00Z");
        instant3.getClass();
        Instant instant4 = Instant.parse("2026-05-16T06:00:00Z");
        instant4.getClass();
        ZoneId zoneIdOf2 = ZoneId.of("Asia/Hong_Kong");
        zoneIdOf2.getClass();
        f54627a = CollectionsKt.P(bookingUiModel, bookingUiModel2, new BookingUiModel(ContentTree.IMAGE_ID, "exp3", bookingTypeUiModel, "Louis Vuitton Café", "CULINARY EXPERIENCE", "Saturday, May 16, 2026, 3:00 PM", "", "", "Salisbury Rd, Tsim Sha Tsui, Hong Kong Flor 3, Gate 33", emptyList, null, null, CollectionsKt.O(new BookingActionUiModel(bookingActionTypeUiModel, new BookingCalendarData(instant3, instant4, zoneIdOf2))), null));
        f54628b = CollectionsKt.O(new BookingAdditionalUiModel("experience1", new ContributionLinkUiModel.ImmersiveArticle("FS-W-SS-23"), "In-Store Appointment", "Lorem Ipsum dolor sit amet, consectetur adipiscing elit.", "", null));
    }
}
