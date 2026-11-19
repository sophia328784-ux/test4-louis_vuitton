package com.vuitton.android.presentation.screen.distantrepairs.models;

import defpackage.n00;
import defpackage.o60;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;", "", "", "Ljava/time/LocalDate;", "availableDateList", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "availableStoreSlots", "", "storeTimeZone", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarAvailabilitiesUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f57367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f57368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57369c;

    public CalendarAvailabilitiesUiModel(List list, List list2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? EmptyList.f71768b : list2, (i2 & 4) != 0 ? "" : str);
    }

    public static CalendarAvailabilitiesUiModel a(CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel, List list, ArrayList arrayList, String str, int i2) {
        if ((i2 & 1) != 0) {
            list = calendarAvailabilitiesUiModel.f57367a;
        }
        List list2 = arrayList;
        if ((i2 & 2) != 0) {
            list2 = calendarAvailabilitiesUiModel.f57368b;
        }
        if ((i2 & 4) != 0) {
            str = calendarAvailabilitiesUiModel.f57369c;
        }
        calendarAvailabilitiesUiModel.getClass();
        list.getClass();
        list2.getClass();
        str.getClass();
        return new CalendarAvailabilitiesUiModel(list, list2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarAvailabilitiesUiModel)) {
            return false;
        }
        CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel = (CalendarAvailabilitiesUiModel) obj;
        return Intrinsics.c(this.f57367a, calendarAvailabilitiesUiModel.f57367a) && Intrinsics.c(this.f57368b, calendarAvailabilitiesUiModel.f57368b) && Intrinsics.c(this.f57369c, calendarAvailabilitiesUiModel.f57369c);
    }

    public final int hashCode() {
        return this.f57369c.hashCode() + n00.a(this.f57367a.hashCode() * 31, 31, this.f57368b);
    }

    public final String toString() {
        return n00.r(this.f57369c, ")", o60.s("CalendarAvailabilitiesUiModel(availableDateList=", ", availableStoreSlots=", ", storeTimeZone=", this.f57367a, this.f57368b));
    }

    public CalendarAvailabilitiesUiModel(List<LocalDate> list, List<TimeSlotUiModel> list2, String str) {
        list.getClass();
        list2.getClass();
        str.getClass();
        this.f57367a = list;
        this.f57368b = list2;
        this.f57369c = str;
    }

    public CalendarAvailabilitiesUiModel() {
        this(null, null, null, 7, null);
    }
}
