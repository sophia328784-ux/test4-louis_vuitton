package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Operator f32535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f32536c;
    public static final AnonymousClass1 d = new AnonymousClass1();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AnonymousClass2 f32534e = new AnonymousClass2();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new AnonymousClass3();

    /* JADX INFO: renamed from: com.google.android.material.datepicker.CompositeDateValidator$1, reason: invalid class name */
    public class AnonymousClass1 implements Operator {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final boolean a(ArrayList arrayList, long j2) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
                if (dateValidator != null && dateValidator.G(j2)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final int getId() {
            return 1;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.CompositeDateValidator$2, reason: invalid class name */
    public class AnonymousClass2 implements Operator {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final boolean a(ArrayList arrayList, long j2) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
                if (dateValidator != null && !dateValidator.G(j2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final int getId() {
            return 2;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.CompositeDateValidator$3, reason: invalid class name */
    public class AnonymousClass3 implements Parcelable.Creator<CompositeDateValidator> {
        @Override // android.os.Parcelable.Creator
        public final CompositeDateValidator createFromParcel(Parcel parcel) {
            ArrayList arrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int i2 = parcel.readInt();
            Operator operator = CompositeDateValidator.f32534e;
            if (i2 != 2 && i2 == 1) {
                operator = CompositeDateValidator.d;
            }
            arrayList.getClass();
            return new CompositeDateValidator(arrayList, operator);
        }

        @Override // android.os.Parcelable.Creator
        public final CompositeDateValidator[] newArray(int i2) {
            return new CompositeDateValidator[i2];
        }
    }

    public interface Operator {
        boolean a(ArrayList arrayList, long j2);

        int getId();
    }

    public CompositeDateValidator(ArrayList arrayList, Operator operator) {
        this.f32536c = arrayList;
        this.f32535b = operator;
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public final boolean G(long j2) {
        return this.f32535b.a(this.f32536c, j2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.f32536c.equals(compositeDateValidator.f32536c) && this.f32535b.getId() == compositeDateValidator.f32535b.getId();
    }

    public final int hashCode() {
        return this.f32536c.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeList(this.f32536c);
        parcel.writeInt(this.f32535b.getId());
    }
}
