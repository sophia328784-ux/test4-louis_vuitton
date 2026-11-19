package com.vuitton.android.presentation.model.calendar;

import com.vuitton.foundation.model.domain.model.calendar.CalendarEvent;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CalendarEventUiModelKt {
    public static final ArrayList a(List list) {
        list.getClass();
        List<CalendarEvent> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (CalendarEvent calendarEvent : list2) {
            calendarEvent.getClass();
            arrayList.add(new CalendarEventUiModel(calendarEvent.f66780b, calendarEvent.f66779a, calendarEvent.f66781c, null, null, null, null, null, null, null, null, null, 4088, null));
        }
        return arrayList;
    }
}
