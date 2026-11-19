package com.vuitton.android.presentation.screen.distantrepairs.models;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "Landroid/os/Parcelable;", "", "availabilityId", "startTime", "gmtStartTime", "appointmentId", "date", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TimeSlotUiModel implements Parcelable {
    public static final Parcelable.Creator<TimeSlotUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57417c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f57418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f57419f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<TimeSlotUiModel> {
        @Override // android.os.Parcelable.Creator
        public final TimeSlotUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new TimeSlotUiModel(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final TimeSlotUiModel[] newArray(int i2) {
            return new TimeSlotUiModel[i2];
        }
    }

    public TimeSlotUiModel(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f57416b = str;
        this.f57417c = str2;
        this.d = str3;
        this.f57418e = str4;
        this.f57419f = str5;
    }

    public static TimeSlotUiModel a(TimeSlotUiModel timeSlotUiModel, String str, String str2, String str3) {
        String str4 = timeSlotUiModel.f57418e;
        str4.getClass();
        return new TimeSlotUiModel(str, str2, str3, str4, "2023-02-25");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeSlotUiModel)) {
            return false;
        }
        TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) obj;
        return Intrinsics.c(this.f57416b, timeSlotUiModel.f57416b) && Intrinsics.c(this.f57417c, timeSlotUiModel.f57417c) && Intrinsics.c(this.d, timeSlotUiModel.d) && Intrinsics.c(this.f57418e, timeSlotUiModel.f57418e) && Intrinsics.c(this.f57419f, timeSlotUiModel.f57419f);
    }

    public final int hashCode() {
        return this.f57419f.hashCode() + fc.b(fc.b(fc.b(this.f57416b.hashCode() * 31, 31, this.f57417c), 31, this.d), 31, this.f57418e);
    }

    public final String toString() {
        String str = this.f57418e;
        StringBuilder sbS = fc.s("TimeSlotUiModel(availabilityId=", this.f57416b, ", startTime=", this.f57417c, ", gmtStartTime=");
        cj.C(sbS, this.d, ", appointmentId=", str, ", date=");
        return n00.r(this.f57419f, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f57416b);
        parcel.writeString(this.f57417c);
        parcel.writeString(this.d);
        parcel.writeString(this.f57418e);
        parcel.writeString(this.f57419f);
    }
}
