package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;", "Landroid/os/Parcelable;", "", "configuratorUrl", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;", "currentConfiguration", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "tag", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;", "type", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConfigurationUiModel implements Parcelable {
    public static final Parcelable.Creator<ConfigurationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CustomizationConfigurationUiModel f61665c;
    public final AssetImageUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CustomizationIdTypeUiModel f61667f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ConfigurationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ConfigurationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ConfigurationUiModel(parcel.readString(), parcel.readInt() == 0 ? null : CustomizationConfigurationUiModel.CREATOR.createFromParcel(parcel), AssetImageUiModel.CREATOR.createFromParcel(parcel), parcel.readString(), CustomizationIdTypeUiModel.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final ConfigurationUiModel[] newArray(int i2) {
            return new ConfigurationUiModel[i2];
        }
    }

    public ConfigurationUiModel(String str, CustomizationConfigurationUiModel customizationConfigurationUiModel, AssetImageUiModel assetImageUiModel, String str2, CustomizationIdTypeUiModel customizationIdTypeUiModel) {
        str.getClass();
        assetImageUiModel.getClass();
        customizationIdTypeUiModel.getClass();
        this.f61664b = str;
        this.f61665c = customizationConfigurationUiModel;
        this.d = assetImageUiModel;
        this.f61666e = str2;
        this.f61667f = customizationIdTypeUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigurationUiModel)) {
            return false;
        }
        ConfigurationUiModel configurationUiModel = (ConfigurationUiModel) obj;
        return Intrinsics.c(this.f61664b, configurationUiModel.f61664b) && Intrinsics.c(this.f61665c, configurationUiModel.f61665c) && Intrinsics.c(this.d, configurationUiModel.d) && Intrinsics.c(this.f61666e, configurationUiModel.f61666e) && this.f61667f == configurationUiModel.f61667f;
    }

    public final int hashCode() {
        int iHashCode = this.f61664b.hashCode() * 31;
        CustomizationConfigurationUiModel customizationConfigurationUiModel = this.f61665c;
        int iHashCode2 = (this.d.hashCode() + ((iHashCode + (customizationConfigurationUiModel == null ? 0 : customizationConfigurationUiModel.hashCode())) * 31)) * 31;
        String str = this.f61666e;
        return this.f61667f.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ConfigurationUiModel(configuratorUrl=" + this.f61664b + ", currentConfiguration=" + this.f61665c + ", image=" + this.d + ", tag=" + this.f61666e + ", type=" + this.f61667f + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61664b);
        CustomizationConfigurationUiModel customizationConfigurationUiModel = this.f61665c;
        if (customizationConfigurationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            customizationConfigurationUiModel.writeToParcel(parcel, i2);
        }
        this.d.writeToParcel(parcel, i2);
        parcel.writeString(this.f61666e);
        parcel.writeString(this.f61667f.name());
    }
}
