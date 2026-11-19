package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;", "calendarAvailabilitiesUiModel", "", "isDatesLoading", "isSlotsLoading", "Ljava/time/LocalDate;", "selectedDate", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;", "calendarAppointmentUiModel", "isPreBookLoading", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;ZZLjava/time/LocalDate;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DistantRepairCalendarViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f57374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CalendarAvailabilitiesUiModel f57375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f57376c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LocalDate f57377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CalendarAppointmentUiModel f57378f;
    public final boolean g;

    public /* synthetic */ DistantRepairCalendarViewState(InAppDispatch inAppDispatch, CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel, boolean z, boolean z2, LocalDate localDate, CalendarAppointmentUiModel calendarAppointmentUiModel, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? new CalendarAvailabilitiesUiModel(null, null, null, 7, null) : calendarAvailabilitiesUiModel, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? null : localDate, (i2 & 32) != 0 ? new CalendarAppointmentUiModel(null, null, 3, null) : calendarAppointmentUiModel, (i2 & 64) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairCalendarViewState)) {
            return false;
        }
        DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) obj;
        return Intrinsics.c(this.f57374a, distantRepairCalendarViewState.f57374a) && Intrinsics.c(this.f57375b, distantRepairCalendarViewState.f57375b) && this.f57376c == distantRepairCalendarViewState.f57376c && this.d == distantRepairCalendarViewState.d && Intrinsics.c(this.f57377e, distantRepairCalendarViewState.f57377e) && Intrinsics.c(this.f57378f, distantRepairCalendarViewState.f57378f) && this.g == distantRepairCalendarViewState.g;
    }

    public final int hashCode() {
        int iB = o60.b(o60.b((this.f57375b.hashCode() + (this.f57374a.hashCode() * 31)) * 31, 31, this.f57376c), 31, this.d);
        LocalDate localDate = this.f57377e;
        return Boolean.hashCode(this.g) + ((this.f57378f.hashCode() + ((iB + (localDate == null ? 0 : localDate.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DistantRepairCalendarViewState(inAppDispatch=");
        sb.append(this.f57374a);
        sb.append(", calendarAvailabilitiesUiModel=");
        sb.append(this.f57375b);
        sb.append(", isDatesLoading=");
        fc.y(sb, this.f57376c, ", isSlotsLoading=", this.d, ", selectedDate=");
        sb.append(this.f57377e);
        sb.append(", calendarAppointmentUiModel=");
        sb.append(this.f57378f);
        sb.append(", isPreBookLoading=");
        return a.p(sb, this.g, ")");
    }

    public DistantRepairCalendarViewState(InAppDispatch inAppDispatch, CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel, boolean z, boolean z2, LocalDate localDate, CalendarAppointmentUiModel calendarAppointmentUiModel, boolean z3) {
        inAppDispatch.getClass();
        calendarAvailabilitiesUiModel.getClass();
        calendarAppointmentUiModel.getClass();
        this.f57374a = inAppDispatch;
        this.f57375b = calendarAvailabilitiesUiModel;
        this.f57376c = z;
        this.d = z2;
        this.f57377e = localDate;
        this.f57378f = calendarAppointmentUiModel;
        this.g = z3;
    }
}
