package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.md;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Calendar f32567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32568c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f32570f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f32571h;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.Month$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        public final Month createFromParcel(Parcel parcel) {
            return Month.a(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final Month[] newArray(int i2) {
            return new Month[i2];
        }
    }

    public Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarC = UtcDates.c(calendar);
        this.f32567b = calendarC;
        this.f32568c = calendarC.get(2);
        this.d = calendarC.get(1);
        this.f32569e = calendarC.getMaximum(7);
        this.f32570f = calendarC.getActualMaximum(5);
        this.g = calendarC.getTimeInMillis();
    }

    public static Month a(int i2, int i3) {
        Calendar calendarG = UtcDates.g(null);
        calendarG.set(1, i2);
        calendarG.set(2, i3);
        return new Month(calendarG);
    }

    public static Month b(long j2) {
        Calendar calendarG = UtcDates.g(null);
        calendarG.setTimeInMillis(j2);
        return new Month(calendarG);
    }

    public final String c() {
        if (this.f32571h == null) {
            this.f32571h = UtcDates.b("yMMMM", Locale.getDefault()).format(new Date(this.f32567b.getTimeInMillis()));
        }
        return this.f32571h;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Month month) {
        return this.f32567b.compareTo(month.f32567b);
    }

    public final int d(Month month) {
        if (this.f32567b instanceof GregorianCalendar) {
            return (month.f32568c - this.f32568c) + ((month.d - this.d) * 12);
        }
        md.n("Only Gregorian calendars are supported.");
        return 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f32568c == month.f32568c && this.d == month.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f32568c), Integer.valueOf(this.d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.d);
        parcel.writeInt(this.f32568c);
    }
}
