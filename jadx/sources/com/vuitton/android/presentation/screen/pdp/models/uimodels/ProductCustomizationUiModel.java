package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;", "hotStamping", "perfumeEngraving", "beautyEngraving", "monogram", "diamondEngraving", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductCustomizationUiModel implements Parcelable {
    public static final Parcelable.Creator<ProductCustomizationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationUiModel f61725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigurationUiModel f61726c;
    public final ConfigurationUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConfigurationUiModel f61727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConfigurationUiModel f61728f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ProductCustomizationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ProductCustomizationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ProductCustomizationUiModel(parcel.readInt() == 0 ? null : ConfigurationUiModel.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ConfigurationUiModel.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ConfigurationUiModel.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ConfigurationUiModel.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? ConfigurationUiModel.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final ProductCustomizationUiModel[] newArray(int i2) {
            return new ProductCustomizationUiModel[i2];
        }
    }

    public ProductCustomizationUiModel(ConfigurationUiModel configurationUiModel, ConfigurationUiModel configurationUiModel2, ConfigurationUiModel configurationUiModel3, ConfigurationUiModel configurationUiModel4, ConfigurationUiModel configurationUiModel5) {
        this.f61725b = configurationUiModel;
        this.f61726c = configurationUiModel2;
        this.d = configurationUiModel3;
        this.f61727e = configurationUiModel4;
        this.f61728f = configurationUiModel5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductCustomizationUiModel)) {
            return false;
        }
        ProductCustomizationUiModel productCustomizationUiModel = (ProductCustomizationUiModel) obj;
        return Intrinsics.c(this.f61725b, productCustomizationUiModel.f61725b) && Intrinsics.c(this.f61726c, productCustomizationUiModel.f61726c) && Intrinsics.c(this.d, productCustomizationUiModel.d) && Intrinsics.c(this.f61727e, productCustomizationUiModel.f61727e) && Intrinsics.c(this.f61728f, productCustomizationUiModel.f61728f);
    }

    public final int hashCode() {
        ConfigurationUiModel configurationUiModel = this.f61725b;
        int iHashCode = (configurationUiModel == null ? 0 : configurationUiModel.hashCode()) * 31;
        ConfigurationUiModel configurationUiModel2 = this.f61726c;
        int iHashCode2 = (iHashCode + (configurationUiModel2 == null ? 0 : configurationUiModel2.hashCode())) * 31;
        ConfigurationUiModel configurationUiModel3 = this.d;
        int iHashCode3 = (iHashCode2 + (configurationUiModel3 == null ? 0 : configurationUiModel3.hashCode())) * 31;
        ConfigurationUiModel configurationUiModel4 = this.f61727e;
        int iHashCode4 = (iHashCode3 + (configurationUiModel4 == null ? 0 : configurationUiModel4.hashCode())) * 31;
        ConfigurationUiModel configurationUiModel5 = this.f61728f;
        return iHashCode4 + (configurationUiModel5 != null ? configurationUiModel5.hashCode() : 0);
    }

    public final String toString() {
        return "ProductCustomizationUiModel(hotStamping=" + this.f61725b + ", perfumeEngraving=" + this.f61726c + ", beautyEngraving=" + this.d + ", monogram=" + this.f61727e + ", diamondEngraving=" + this.f61728f + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        ConfigurationUiModel configurationUiModel = this.f61725b;
        if (configurationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            configurationUiModel.writeToParcel(parcel, i2);
        }
        ConfigurationUiModel configurationUiModel2 = this.f61726c;
        if (configurationUiModel2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            configurationUiModel2.writeToParcel(parcel, i2);
        }
        ConfigurationUiModel configurationUiModel3 = this.d;
        if (configurationUiModel3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            configurationUiModel3.writeToParcel(parcel, i2);
        }
        ConfigurationUiModel configurationUiModel4 = this.f61727e;
        if (configurationUiModel4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            configurationUiModel4.writeToParcel(parcel, i2);
        }
        ConfigurationUiModel configurationUiModel5 = this.f61728f;
        if (configurationUiModel5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            configurationUiModel5.writeToParcel(parcel, i2);
        }
    }
}
