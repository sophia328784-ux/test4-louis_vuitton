package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", b.a.f24015b, "", "title", "description", "stepTitle", "actionRequiredTitle", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "action", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceHotContentUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceHotContentUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64055c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f64057f;
    public final CareServiceAction g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AssetImageUiModel f64058h;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceHotContentUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceHotContentUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CareServiceHotContentUiModel(CareServiceIdUiModel.CREATOR.createFromParcel(parcel).f64060b, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : CareServiceAction.valueOf(parcel.readString()), parcel.readInt() != 0 ? AssetImageUiModel.CREATOR.createFromParcel(parcel) : null, null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceHotContentUiModel[] newArray(int i2) {
            return new CareServiceHotContentUiModel[i2];
        }
    }

    public CareServiceHotContentUiModel(String str, String str2, String str3, String str4, String str5, CareServiceAction careServiceAction, AssetImageUiModel assetImageUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f64054b = str;
        this.f64055c = str2;
        this.d = str3;
        this.f64056e = str4;
        this.f64057f = str5;
        this.g = careServiceAction;
        this.f64058h = assetImageUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceHotContentUiModel)) {
            return false;
        }
        CareServiceHotContentUiModel careServiceHotContentUiModel = (CareServiceHotContentUiModel) obj;
        String str = careServiceHotContentUiModel.f64054b;
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        return this.f64054b.equals(str) && this.f64055c.equals(careServiceHotContentUiModel.f64055c) && this.d.equals(careServiceHotContentUiModel.d) && Intrinsics.c(this.f64056e, careServiceHotContentUiModel.f64056e) && Intrinsics.c(this.f64057f, careServiceHotContentUiModel.f64057f) && this.g == careServiceHotContentUiModel.g && Intrinsics.c(this.f64058h, careServiceHotContentUiModel.f64058h);
    }

    public final int hashCode() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        int iB = fc.b(fc.b(this.f64054b.hashCode() * 31, 31, this.f64055c), 31, this.d);
        String str = this.f64056e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f64057f;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        CareServiceAction careServiceAction = this.g;
        int iHashCode3 = (iHashCode2 + (careServiceAction == null ? 0 : careServiceAction.hashCode())) * 31;
        AssetImageUiModel assetImageUiModel = this.f64058h;
        return iHashCode3 + (assetImageUiModel != null ? assetImageUiModel.hashCode() : 0);
    }

    public final String toString() {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        StringBuilder sbS = fc.s("CareServiceHotContentUiModel(id=", this.f64054b, ", title=", this.f64055c, ", description=");
        cj.C(sbS, this.d, ", stepTitle=", this.f64056e, ", actionRequiredTitle=");
        sbS.append(this.f64057f);
        sbS.append(", action=");
        sbS.append(this.g);
        sbS.append(", image=");
        sbS.append(this.f64058h);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        parcel.writeString(this.f64054b);
        parcel.writeString(this.f64055c);
        parcel.writeString(this.d);
        parcel.writeString(this.f64056e);
        parcel.writeString(this.f64057f);
        CareServiceAction careServiceAction = this.g;
        if (careServiceAction == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(careServiceAction.name());
        }
        AssetImageUiModel assetImageUiModel = this.f64058h;
        if (assetImageUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assetImageUiModel.writeToParcel(parcel, i2);
        }
    }
}
