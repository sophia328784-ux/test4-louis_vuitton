package com.vuitton.android.presentation.screen.booking.form.models;

import com.vuitton.android.presentation.screen.booking.list.models.BookingTypeUiModel;
import defpackage.cj;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MocksKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingExperienceHeaderUiModel f54564a = new BookingExperienceHeaderUiModel("Louis Vuitton Café", "Culinary Experience", "Experience the art of French cuisine at the Louis Vuitton Café, where culinary excellence meets luxury.", "Please note that some reservations require a credit card hold.", "16 May 2026, at 3:00pm", "https://pass-prp.louisvuitton.com/media/app-bo/bf5d0769-9582-4130-832b-af51bc195a10.jpeg", "Estimated time : 1:00");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BookingFormModuleUiModel f54565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BookingFormModuleUiModel f54566c;
    public static final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BookingFormUiModel f54567e;

    static {
        BookingFormModuleDataUiModel.SingleChoiceLayout singleChoiceLayout = BookingFormModuleDataUiModel.SingleChoiceLayout.SMALL;
        IntRange intRange = new IntRange(1, 6);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (((IntProgressionIterator) it).d) {
            int iNextInt = ((IntIterator) it).nextInt();
            arrayList.add(new BookingFormModuleDataUiModel.ChoiceValue(String.valueOf(iNextInt), String.valueOf(iNextInt), cj.d(iNextInt, " guests"), null, false, 24, null));
        }
        f54565b = new BookingFormModuleUiModel("partySize", "Guest", "Select number of guests", null, null, true, false, true, false, null, new BookingFormModuleDataUiModel.SingleChoice(singleChoiceLayout, arrayList, null), false, 2904, null);
        new BookingFormModuleUiModel("service", "Service", "Select a service", null, null, true, false, true, false, null, new BookingFormModuleDataUiModel.SingleChoice(BookingFormModuleDataUiModel.SingleChoiceLayout.LARGE, CollectionsKt.P(new BookingFormModuleDataUiModel.ChoiceValue("lunch", "Lunch", "Lunch", "Served from 12:00 pm to 2:30 pm", false, 16, null), new BookingFormModuleDataUiModel.ChoiceValue("afternoonTea", "Afternoon tea", "Afternoon tea", "Served from 3:00 pm to 5:00 pm", false, 16, null), new BookingFormModuleDataUiModel.ChoiceValue("dinner", "Dinner", "Dinner", "Fully booked for the selected date", true)), "lunch"), false, 2904, null);
        f54566c = new BookingFormModuleUiModel("date", "Date", "Select a date", null, null, false, false, false, false, null, new BookingFormModuleDataUiModel.Calendar(EmptyList.f71768b, null), false, 2904, null);
        LocalDateTime localDateTimeNow = LocalDateTime.now();
        localDateTimeNow.getClass();
        BookingFormModuleDataUiModel.SlotDate slotDate = new BookingFormModuleDataUiModel.SlotDate(localDateTimeNow, CollectionsKt.P(new BookingFormModuleDataUiModel.TimeSlot("today_am_1", "09:00", "9 am", true), new BookingFormModuleDataUiModel.TimeSlot("today_am_2", "10:00", "10 am", true), new BookingFormModuleDataUiModel.TimeSlot("today_am_3", "11:00", "11 am", true)), CollectionsKt.P(new BookingFormModuleDataUiModel.TimeSlot("today_pm_1", "12:30", "12:30 pm", true), new BookingFormModuleDataUiModel.TimeSlot("today_pm_2", "13:30", "1:30 pm", false), new BookingFormModuleDataUiModel.TimeSlot("today_pm_3", "15:00", "3 pm", false), new BookingFormModuleDataUiModel.TimeSlot("today_pm_4", "17:00", "5 pm", false)), null, 8, null);
        LocalDateTime localDateTimePlusDays = LocalDateTime.now().plusDays(1L);
        localDateTimePlusDays.getClass();
        BookingFormModuleDataUiModel.SlotDate slotDate2 = new BookingFormModuleDataUiModel.SlotDate(localDateTimePlusDays, CollectionsKt.P(new BookingFormModuleDataUiModel.TimeSlot("tmrw_am_1", "09:00", "9 am", false), new BookingFormModuleDataUiModel.TimeSlot("tmrw_am_2", "10:00", "10 am", false), new BookingFormModuleDataUiModel.TimeSlot("tmrw_am_3", "11:00", "11 am", false)), CollectionsKt.P(new BookingFormModuleDataUiModel.TimeSlot("tmrw_pm_1", "12:30", "12:30 pm", false), new BookingFormModuleDataUiModel.TimeSlot("tmrw_pm_2", "14:00", "2 pm", false), new BookingFormModuleDataUiModel.TimeSlot("tmrw_pm_3", "16:00", "4 pm", false), new BookingFormModuleDataUiModel.TimeSlot("tmrw_pm_4", "17:30", "5:30 pm", false)), null, 8, null);
        LocalDateTime localDateTimePlusDays2 = LocalDateTime.now().plusDays(2L);
        localDateTimePlusDays2.getClass();
        List listP = CollectionsKt.P(slotDate, slotDate2, new BookingFormModuleDataUiModel.SlotDate(localDateTimePlusDays2, CollectionsKt.P(new BookingFormModuleDataUiModel.TimeSlot("d2_am_1", "09:30", "9:30 am", false), new BookingFormModuleDataUiModel.TimeSlot("d2_am_2", "10:30", "10:30 am", false), new BookingFormModuleDataUiModel.TimeSlot("d2_am_3", "11:30", "11:30 am", false)), CollectionsKt.P(new BookingFormModuleDataUiModel.TimeSlot("d2_pm_1", "13:00", "1 pm", true), new BookingFormModuleDataUiModel.TimeSlot("d2_pm_2", "15:00", "3 pm", true), new BookingFormModuleDataUiModel.TimeSlot("d2_pm_3", "17:00", "5 pm", true)), null, 8, null));
        d = listP;
        new BookingFormModuleUiModel("slot", "Slot selection", "Choose a slot", null, null, false, false, false, false, null, new BookingFormModuleDataUiModel.Slot(listP, null, null, 6, null), false, 2904, null);
        List listP2 = CollectionsKt.P("Vegetarian", "Vegan", "Gluten-free", "Nut allergy", "Lactose intolerant", "Halal", "Kosher");
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listP2, 10));
        int i2 = 0;
        for (Object obj : listP2) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            arrayList2.add(new BookingFormModuleDataUiModel.MultipleTextOption(String.valueOf(i2), (String) obj, false, false, 12, null));
            i2 = i3;
        }
        BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory = new BookingFormModuleDataUiModel.MultipleTextCategory("restriction", "dietary restriction", arrayList2);
        List listP3 = CollectionsKt.P("Birthday", "Anniversary", "Business meal", "Celebration");
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(listP3, 10));
        int i4 = 0;
        for (Object obj2 : listP3) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            arrayList3.add(new BookingFormModuleDataUiModel.MultipleTextOption(String.valueOf(i4), (String) obj2, false, false, 12, null));
            i4 = i5;
        }
        new BookingFormModuleUiModel("specialRequest", "Special requests (optional)", "Add details", null, null, true, true, true, false, null, new BookingFormModuleDataUiModel.MultipleText(CollectionsKt.P(multipleTextCategory, new BookingFormModuleDataUiModel.MultipleTextCategory("occasion", "special occasion", arrayList3)), "Yes", null, 4, null), false, 2840, null);
        f54567e = new BookingFormUiModel("cafe", "Louis Vuitton Café", f54564a, CollectionsKt.P(f54565b, f54566c), BookingTypeUiModel.EXPERIENCE);
    }
}
