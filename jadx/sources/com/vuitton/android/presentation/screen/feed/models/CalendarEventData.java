package com.vuitton.android.presentation.screen.feed.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;", "", "", ConfigurationName.KEY, "title", "Ljava/time/Instant;", "eventStartTimeInUTC", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarEventData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f57907c;

    public CalendarEventData(String str, String str2, Instant instant) {
        str.getClass();
        str2.getClass();
        instant.getClass();
        this.f57905a = str;
        this.f57906b = str2;
        this.f57907c = instant;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarEventData)) {
            return false;
        }
        CalendarEventData calendarEventData = (CalendarEventData) obj;
        return Intrinsics.c(this.f57905a, calendarEventData.f57905a) && Intrinsics.c(this.f57906b, calendarEventData.f57906b) && Intrinsics.c(this.f57907c, calendarEventData.f57907c);
    }

    public final int hashCode() {
        return this.f57907c.hashCode() + fc.b(this.f57905a.hashCode() * 31, 31, this.f57906b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CalendarEventData(key=", this.f57905a, ", title=", this.f57906b, ", eventStartTimeInUTC=");
        sbS.append(this.f57907c);
        sbS.append(")");
        return sbS.toString();
    }
}
