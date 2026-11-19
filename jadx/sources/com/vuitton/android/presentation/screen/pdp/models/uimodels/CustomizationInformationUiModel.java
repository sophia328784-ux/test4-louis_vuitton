package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;", "Landroid/os/Parcelable;", "", "value", "title", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "color", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CustomizationInformationUiModel implements Parcelable {
    public static final Parcelable.Creator<CustomizationInformationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61674c;
    public final AssetImageUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61675e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CustomizationInformationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CustomizationInformationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CustomizationInformationUiModel(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : AssetImageUiModel.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final CustomizationInformationUiModel[] newArray(int i2) {
            return new CustomizationInformationUiModel[i2];
        }
    }

    public CustomizationInformationUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, String str3) {
        str.getClass();
        this.f61673b = str;
        this.f61674c = str2;
        this.d = assetImageUiModel;
        this.f61675e = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationInformationUiModel)) {
            return false;
        }
        CustomizationInformationUiModel customizationInformationUiModel = (CustomizationInformationUiModel) obj;
        return Intrinsics.c(this.f61673b, customizationInformationUiModel.f61673b) && Intrinsics.c(this.f61674c, customizationInformationUiModel.f61674c) && Intrinsics.c(this.d, customizationInformationUiModel.d) && Intrinsics.c(this.f61675e, customizationInformationUiModel.f61675e);
    }

    public final int hashCode() {
        int iHashCode = this.f61673b.hashCode() * 31;
        String str = this.f61674c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImageUiModel assetImageUiModel = this.d;
        int iHashCode3 = (iHashCode2 + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode())) * 31;
        String str2 = this.f61675e;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CustomizationInformationUiModel(value=", this.f61673b, ", title=", this.f61674c, ", image=");
        sbS.append(this.d);
        sbS.append(", color=");
        sbS.append(this.f61675e);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61673b);
        parcel.writeString(this.f61674c);
        AssetImageUiModel assetImageUiModel = this.d;
        if (assetImageUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assetImageUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f61675e);
    }
}
