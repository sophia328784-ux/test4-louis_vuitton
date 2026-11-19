package com.vuitton.android.presentation.screen.distantrepairs.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;", "", "", "appointmentId", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "timeSlot", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarAppointmentUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeSlotUiModel f57366b;

    public /* synthetic */ CalendarAppointmentUiModel(String str, TimeSlotUiModel timeSlotUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : timeSlotUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarAppointmentUiModel)) {
            return false;
        }
        CalendarAppointmentUiModel calendarAppointmentUiModel = (CalendarAppointmentUiModel) obj;
        return Intrinsics.c(this.f57365a, calendarAppointmentUiModel.f57365a) && Intrinsics.c(this.f57366b, calendarAppointmentUiModel.f57366b);
    }

    public final int hashCode() {
        String str = this.f57365a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        TimeSlotUiModel timeSlotUiModel = this.f57366b;
        return iHashCode + (timeSlotUiModel != null ? timeSlotUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "CalendarAppointmentUiModel(appointmentId=" + this.f57365a + ", timeSlot=" + this.f57366b + ")";
    }

    public CalendarAppointmentUiModel(String str, TimeSlotUiModel timeSlotUiModel) {
        this.f57365a = str;
        this.f57366b = timeSlotUiModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CalendarAppointmentUiModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
