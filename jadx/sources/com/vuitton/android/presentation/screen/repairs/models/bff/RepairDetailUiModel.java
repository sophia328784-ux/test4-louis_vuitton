package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0014BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;", "transactionId", "", "imageUrl", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;", "header", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;", "shippingInformation", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;", "appointmentInformation", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;", "assessment", "description", "", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;", "trackingSteps", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Step", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairDetailUiModel implements Parcelable {
    public static final Parcelable.Creator<RepairDetailUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64076c;
    public final HeaderUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShippingInformationUiModel f64077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppointmentInformationUiModel f64078f;
    public final AssessmentUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f64079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f64080i;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<RepairDetailUiModel> {
        @Override // android.os.Parcelable.Creator
        public final RepairDetailUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String str = CareServiceTransactionIdUiModel.CREATOR.createFromParcel(parcel).f64072b;
            String string = parcel.readString();
            HeaderUiModel headerUiModelCreateFromParcel = HeaderUiModel.CREATOR.createFromParcel(parcel);
            ArrayList arrayList = null;
            ShippingInformationUiModel shippingInformationUiModelCreateFromParcel = parcel.readInt() == 0 ? null : ShippingInformationUiModel.CREATOR.createFromParcel(parcel);
            AppointmentInformationUiModel appointmentInformationUiModelCreateFromParcel = parcel.readInt() == 0 ? null : AppointmentInformationUiModel.CREATOR.createFromParcel(parcel);
            AssessmentUiModel assessmentUiModelCreateFromParcel = parcel.readInt() == 0 ? null : AssessmentUiModel.CREATOR.createFromParcel(parcel);
            String string2 = parcel.readString();
            if (parcel.readInt() != 0) {
                int i2 = parcel.readInt();
                arrayList = new ArrayList(i2);
                int iD = 0;
                while (iD != i2) {
                    iD = pq0.d(Step.CREATOR, parcel, arrayList, iD, 1);
                }
            }
            return new RepairDetailUiModel(str, string, headerUiModelCreateFromParcel, shippingInformationUiModelCreateFromParcel, appointmentInformationUiModelCreateFromParcel, assessmentUiModelCreateFromParcel, string2, arrayList, null);
        }

        @Override // android.os.Parcelable.Creator
        public final RepairDetailUiModel[] newArray(int i2) {
            return new RepairDetailUiModel[i2];
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;", "Landroid/os/Parcelable;", "", "identifier", "description", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;", "status", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Step implements Parcelable {
        public static final Parcelable.Creator<Step> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f64082c;
        public final CareServiceDetail.StepStatus d;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Step> {
            @Override // android.os.Parcelable.Creator
            public final Step createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Step(parcel.readString(), parcel.readString(), CareServiceDetail.StepStatus.valueOf(parcel.readString()));
            }

            @Override // android.os.Parcelable.Creator
            public final Step[] newArray(int i2) {
                return new Step[i2];
            }
        }

        public Step(String str, String str2, CareServiceDetail.StepStatus stepStatus) {
            str.getClass();
            str2.getClass();
            stepStatus.getClass();
            this.f64081b = str;
            this.f64082c = str2;
            this.d = stepStatus;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Step)) {
                return false;
            }
            Step step = (Step) obj;
            return Intrinsics.c(this.f64081b, step.f64081b) && Intrinsics.c(this.f64082c, step.f64082c) && this.d == step.d;
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(this.f64081b.hashCode() * 31, 31, this.f64082c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Step(identifier=", this.f64081b, ", description=", this.f64082c, ", status=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f64081b);
            parcel.writeString(this.f64082c);
            parcel.writeString(this.d.name());
        }
    }

    public RepairDetailUiModel(String str, String str2, HeaderUiModel headerUiModel, ShippingInformationUiModel shippingInformationUiModel, AppointmentInformationUiModel appointmentInformationUiModel, AssessmentUiModel assessmentUiModel, String str3, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        headerUiModel.getClass();
        str3.getClass();
        this.f64075b = str;
        this.f64076c = str2;
        this.d = headerUiModel;
        this.f64077e = shippingInformationUiModel;
        this.f64078f = appointmentInformationUiModel;
        this.g = assessmentUiModel;
        this.f64079h = str3;
        this.f64080i = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairDetailUiModel)) {
            return false;
        }
        RepairDetailUiModel repairDetailUiModel = (RepairDetailUiModel) obj;
        String str = repairDetailUiModel.f64075b;
        CareServiceTransactionIdUiModel.Companion companion = CareServiceTransactionIdUiModel.f64071c;
        return this.f64075b.equals(str) && Intrinsics.c(this.f64076c, repairDetailUiModel.f64076c) && this.d.equals(repairDetailUiModel.d) && Intrinsics.c(this.f64077e, repairDetailUiModel.f64077e) && Intrinsics.c(this.f64078f, repairDetailUiModel.f64078f) && Intrinsics.c(this.g, repairDetailUiModel.g) && this.f64079h.equals(repairDetailUiModel.f64079h) && Intrinsics.c(this.f64080i, repairDetailUiModel.f64080i);
    }

    public final int hashCode() {
        CareServiceTransactionIdUiModel.Companion companion = CareServiceTransactionIdUiModel.f64071c;
        int iHashCode = this.f64075b.hashCode() * 31;
        String str = this.f64076c;
        int iHashCode2 = (this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        ShippingInformationUiModel shippingInformationUiModel = this.f64077e;
        int iHashCode3 = (iHashCode2 + (shippingInformationUiModel == null ? 0 : shippingInformationUiModel.hashCode())) * 31;
        AppointmentInformationUiModel appointmentInformationUiModel = this.f64078f;
        int iHashCode4 = (iHashCode3 + (appointmentInformationUiModel == null ? 0 : appointmentInformationUiModel.hashCode())) * 31;
        AssessmentUiModel assessmentUiModel = this.g;
        int iB = fc.b((iHashCode4 + (assessmentUiModel == null ? 0 : assessmentUiModel.hashCode())) * 31, 31, this.f64079h);
        List list = this.f64080i;
        return iB + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        CareServiceTransactionIdUiModel.Companion companion = CareServiceTransactionIdUiModel.f64071c;
        StringBuilder sbS = fc.s("RepairDetailUiModel(transactionId=", this.f64075b, ", imageUrl=", this.f64076c, ", header=");
        sbS.append(this.d);
        sbS.append(", shippingInformation=");
        sbS.append(this.f64077e);
        sbS.append(", appointmentInformation=");
        sbS.append(this.f64078f);
        sbS.append(", assessment=");
        sbS.append(this.g);
        sbS.append(", description=");
        return o60.o(this.f64079h, ", trackingSteps=", ")", sbS, this.f64080i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        CareServiceTransactionIdUiModel.Companion companion = CareServiceTransactionIdUiModel.f64071c;
        parcel.writeString(this.f64075b);
        parcel.writeString(this.f64076c);
        this.d.writeToParcel(parcel, i2);
        ShippingInformationUiModel shippingInformationUiModel = this.f64077e;
        if (shippingInformationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            shippingInformationUiModel.writeToParcel(parcel, i2);
        }
        AppointmentInformationUiModel appointmentInformationUiModel = this.f64078f;
        if (appointmentInformationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            appointmentInformationUiModel.writeToParcel(parcel, i2);
        }
        AssessmentUiModel assessmentUiModel = this.g;
        if (assessmentUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assessmentUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f64079h);
        List list = this.f64080i;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Step) it.next()).writeToParcel(parcel, i2);
        }
    }
}
