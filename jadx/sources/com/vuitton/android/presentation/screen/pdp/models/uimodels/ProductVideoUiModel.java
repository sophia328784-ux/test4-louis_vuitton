package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductVideoUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeHolder", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductVideoUiModel extends ProductMediaUiModel {
    public static final Parcelable.Creator<ProductVideoUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61744c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ProductVideoUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ProductVideoUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ProductVideoUiModel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final ProductVideoUiModel[] newArray(int i2) {
            return new ProductVideoUiModel[i2];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductVideoUiModel(String str, String str2) {
        super(null);
        str.getClass();
        this.f61743b = str;
        this.f61744c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductVideoUiModel)) {
            return false;
        }
        ProductVideoUiModel productVideoUiModel = (ProductVideoUiModel) obj;
        return Intrinsics.c(this.f61743b, productVideoUiModel.f61743b) && Intrinsics.c(this.f61744c, productVideoUiModel.f61744c);
    }

    public final int hashCode() {
        int iHashCode = this.f61743b.hashCode() * 31;
        String str = this.f61744c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("ProductVideoUiModel(url=", this.f61743b, ", placeHolder=", this.f61744c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61743b);
        parcel.writeString(this.f61744c);
    }
}
