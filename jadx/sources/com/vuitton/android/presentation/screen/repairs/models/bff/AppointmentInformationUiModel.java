package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;", "Landroid/os/Parcelable;", "", "title", "date", "mail", "phone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AppointmentInformationUiModel implements Parcelable {
    public static final Parcelable.Creator<AppointmentInformationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64023c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64024e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AppointmentInformationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AppointmentInformationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AppointmentInformationUiModel(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AppointmentInformationUiModel[] newArray(int i2) {
            return new AppointmentInformationUiModel[i2];
        }
    }

    public AppointmentInformationUiModel(String str, String str2, String str3, String str4) {
        this.f64022b = str;
        this.f64023c = str2;
        this.d = str3;
        this.f64024e = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppointmentInformationUiModel)) {
            return false;
        }
        AppointmentInformationUiModel appointmentInformationUiModel = (AppointmentInformationUiModel) obj;
        return Intrinsics.c(this.f64022b, appointmentInformationUiModel.f64022b) && Intrinsics.c(this.f64023c, appointmentInformationUiModel.f64023c) && Intrinsics.c(this.d, appointmentInformationUiModel.d) && Intrinsics.c(this.f64024e, appointmentInformationUiModel.f64024e);
    }

    public final int hashCode() {
        String str = this.f64022b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f64023c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f64024e;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("AppointmentInformationUiModel(title=", this.f64022b, ", date=", this.f64023c, ", mail="), this.d, ", phone=", this.f64024e, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f64022b);
        parcel.writeString(this.f64023c);
        parcel.writeString(this.d);
        parcel.writeString(this.f64024e);
    }
}
