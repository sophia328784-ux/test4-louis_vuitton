package com.vuitton.android.presentation.model.calendar;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u0097\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;", "", "", ConfigurationName.KEY, "", "eventId", "name", "title", "calendarTitle", "description", "", "firstReminderBeforeTime", "secondReminderBeforeTime", "Ljava/time/LocalDateTime;", "eventStartTimeInUserTimeZone", "", "isAlreadyInCalendar", "beginTime", "endTime", "<init>", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/time/LocalDateTime;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarEventUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f51767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51768c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f51769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f51770f;
    public final Integer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Integer f51771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LocalDateTime f51772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Boolean f51773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Long f51774k;
    public final Long l;

    public /* synthetic */ CalendarEventUiModel(String str, Long l, String str2, String str3, String str4, String str5, Integer num, Integer num2, LocalDateTime localDateTime, Boolean bool, Long l2, Long l3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : l, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : num, (i2 & 128) != 0 ? null : num2, (i2 & 256) != 0 ? null : localDateTime, (i2 & 512) != 0 ? null : bool, (i2 & 1024) != 0 ? null : l2, (i2 & 2048) != 0 ? null : l3);
    }

    public static CalendarEventUiModel a(CalendarEventUiModel calendarEventUiModel, Long l, Boolean bool) {
        String str = calendarEventUiModel.f51766a;
        String str2 = calendarEventUiModel.f51768c;
        String str3 = calendarEventUiModel.d;
        String str4 = calendarEventUiModel.f51769e;
        String str5 = calendarEventUiModel.f51770f;
        Integer num = calendarEventUiModel.g;
        Integer num2 = calendarEventUiModel.f51771h;
        LocalDateTime localDateTime = calendarEventUiModel.f51772i;
        Long l2 = calendarEventUiModel.f51774k;
        Long l3 = calendarEventUiModel.l;
        calendarEventUiModel.getClass();
        return new CalendarEventUiModel(str, l, str2, str3, str4, str5, num, num2, localDateTime, bool, l2, l3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarEventUiModel)) {
            return false;
        }
        CalendarEventUiModel calendarEventUiModel = (CalendarEventUiModel) obj;
        return Intrinsics.c(this.f51766a, calendarEventUiModel.f51766a) && Intrinsics.c(this.f51767b, calendarEventUiModel.f51767b) && Intrinsics.c(this.f51768c, calendarEventUiModel.f51768c) && Intrinsics.c(this.d, calendarEventUiModel.d) && Intrinsics.c(this.f51769e, calendarEventUiModel.f51769e) && Intrinsics.c(this.f51770f, calendarEventUiModel.f51770f) && Intrinsics.c(this.g, calendarEventUiModel.g) && Intrinsics.c(this.f51771h, calendarEventUiModel.f51771h) && Intrinsics.c(this.f51772i, calendarEventUiModel.f51772i) && Intrinsics.c(this.f51773j, calendarEventUiModel.f51773j) && Intrinsics.c(this.f51774k, calendarEventUiModel.f51774k) && Intrinsics.c(this.l, calendarEventUiModel.l);
    }

    public final int hashCode() {
        String str = this.f51766a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.f51767b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.f51768c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f51769e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f51770f;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.g;
        int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f51771h;
        int iHashCode8 = (iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        LocalDateTime localDateTime = this.f51772i;
        int iHashCode9 = (iHashCode8 + (localDateTime == null ? 0 : localDateTime.hashCode())) * 31;
        Boolean bool = this.f51773j;
        int iHashCode10 = (iHashCode9 + (bool == null ? 0 : bool.hashCode())) * 31;
        Long l2 = this.f51774k;
        int iHashCode11 = (iHashCode10 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.l;
        return iHashCode11 + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CalendarEventUiModel(key=");
        sb.append(this.f51766a);
        sb.append(", eventId=");
        sb.append(this.f51767b);
        sb.append(", name=");
        cj.C(sb, this.f51768c, ", title=", this.d, ", calendarTitle=");
        cj.C(sb, this.f51769e, ", description=", this.f51770f, ", firstReminderBeforeTime=");
        sb.append(this.g);
        sb.append(", secondReminderBeforeTime=");
        sb.append(this.f51771h);
        sb.append(", eventStartTimeInUserTimeZone=");
        sb.append(this.f51772i);
        sb.append(", isAlreadyInCalendar=");
        sb.append(this.f51773j);
        sb.append(", beginTime=");
        sb.append(this.f51774k);
        sb.append(", endTime=");
        sb.append(this.l);
        sb.append(")");
        return sb.toString();
    }

    public CalendarEventUiModel(String str, Long l, String str2, String str3, String str4, String str5, Integer num, Integer num2, LocalDateTime localDateTime, Boolean bool, Long l2, Long l3) {
        this.f51766a = str;
        this.f51767b = l;
        this.f51768c = str2;
        this.d = str3;
        this.f51769e = str4;
        this.f51770f = str5;
        this.g = num;
        this.f51771h = num2;
        this.f51772i = localDateTime;
        this.f51773j = bool;
        this.f51774k = l2;
        this.l = l3;
    }

    public CalendarEventUiModel() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }
}
