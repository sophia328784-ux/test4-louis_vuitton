package com.vuitton.android.presentation.screen.osa.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;", "storeAppointment", "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;", "appointmentType", "", "appointmentId", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "modifyTimeSlot", "<init>", "(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaPrebookResult implements Parcelable {
    public static final Parcelable.Creator<OsaPrebookResult> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OsaFormItemUiModel f60935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppointmentTypeUiModel f60936c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeSlotUiModel f60937e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<OsaPrebookResult> {
        @Override // android.os.Parcelable.Creator
        public final OsaPrebookResult createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new OsaPrebookResult(OsaFormItemUiModel.CREATOR.createFromParcel(parcel), AppointmentTypeUiModel.valueOf(parcel.readString()), parcel.readString(), parcel.readInt() == 0 ? null : TimeSlotUiModel.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final OsaPrebookResult[] newArray(int i2) {
            return new OsaPrebookResult[i2];
        }
    }

    public OsaPrebookResult(OsaFormItemUiModel osaFormItemUiModel, AppointmentTypeUiModel appointmentTypeUiModel, String str, TimeSlotUiModel timeSlotUiModel) {
        osaFormItemUiModel.getClass();
        appointmentTypeUiModel.getClass();
        str.getClass();
        this.f60935b = osaFormItemUiModel;
        this.f60936c = appointmentTypeUiModel;
        this.d = str;
        this.f60937e = timeSlotUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaPrebookResult)) {
            return false;
        }
        OsaPrebookResult osaPrebookResult = (OsaPrebookResult) obj;
        return Intrinsics.c(this.f60935b, osaPrebookResult.f60935b) && this.f60936c == osaPrebookResult.f60936c && Intrinsics.c(this.d, osaPrebookResult.d) && Intrinsics.c(this.f60937e, osaPrebookResult.f60937e);
    }

    public final int hashCode() {
        int iB = fc.b((this.f60936c.hashCode() + (this.f60935b.hashCode() * 31)) * 31, 31, this.d);
        TimeSlotUiModel timeSlotUiModel = this.f60937e;
        return iB + (timeSlotUiModel == null ? 0 : timeSlotUiModel.hashCode());
    }

    public final String toString() {
        return "OsaPrebookResult(storeAppointment=" + this.f60935b + ", appointmentType=" + this.f60936c + ", appointmentId=" + this.d + ", modifyTimeSlot=" + this.f60937e + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        this.f60935b.writeToParcel(parcel, i2);
        parcel.writeString(this.f60936c.name());
        parcel.writeString(this.d);
        TimeSlotUiModel timeSlotUiModel = this.f60937e;
        if (timeSlotUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            timeSlotUiModel.writeToParcel(parcel, i2);
        }
    }

    public /* synthetic */ OsaPrebookResult(OsaFormItemUiModel osaFormItemUiModel, AppointmentTypeUiModel appointmentTypeUiModel, String str, TimeSlotUiModel timeSlotUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(osaFormItemUiModel, appointmentTypeUiModel, str, (i2 & 8) != 0 ? null : timeSlotUiModel);
    }
}
