package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.md;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Month f32516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Month f32517c;
    public final DateValidator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Month f32518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f32519f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f32520h;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.CalendarConstraints$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<CalendarConstraints> {
        @Override // android.os.Parcelable.Creator
        public final CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final CalendarConstraints[] newArray(int i2) {
            return new CalendarConstraints[i2];
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Long f32521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DateValidator f32522b = new DateValidatorPointForward(Long.MIN_VALUE);

        static {
            UtcDates.a(Month.a(1900, 0).g);
            UtcDates.a(Month.a(HarvestConfiguration.S_DOM_THR, 11).g);
        }
    }

    public interface DateValidator extends Parcelable {
        boolean G(long j2);
    }

    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i2) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.f32516b = month;
        this.f32517c = month2;
        this.f32518e = month3;
        this.f32519f = i2;
        this.d = dateValidator;
        if (month3 != null && month.f32567b.compareTo(month3.f32567b) > 0) {
            md.n("start Month cannot be after current Month");
            throw null;
        }
        if (month3 != null && month3.f32567b.compareTo(month2.f32567b) > 0) {
            md.n("current Month cannot be after end Month");
            throw null;
        }
        if (i2 < 0 || i2 > UtcDates.g(null).getMaximum(7)) {
            md.n("firstDayOfWeek is not valid");
            throw null;
        }
        this.f32520h = month.d(month2) + 1;
        this.g = (month2.d - month.d) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f32516b.equals(calendarConstraints.f32516b) && this.f32517c.equals(calendarConstraints.f32517c) && Objects.equals(this.f32518e, calendarConstraints.f32518e) && this.f32519f == calendarConstraints.f32519f && this.d.equals(calendarConstraints.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f32516b, this.f32517c, this.f32518e, Integer.valueOf(this.f32519f), this.d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f32516b, 0);
        parcel.writeParcelable(this.f32517c, 0);
        parcel.writeParcelable(this.f32518e, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeInt(this.f32519f);
    }
}
