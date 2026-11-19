package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;", "Landroid/os/Parcelable;", "", "price", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;", "priceSpecification", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PriceUiModel implements Parcelable {
    public static final Parcelable.Creator<PriceUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PriceSpecificationUiModel f61723c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PriceUiModel> {
        @Override // android.os.Parcelable.Creator
        public final PriceUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PriceUiModel(parcel.readString(), parcel.readInt() == 0 ? null : PriceSpecificationUiModel.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final PriceUiModel[] newArray(int i2) {
            return new PriceUiModel[i2];
        }
    }

    public PriceUiModel(String str, PriceSpecificationUiModel priceSpecificationUiModel) {
        str.getClass();
        this.f61722b = str;
        this.f61723c = priceSpecificationUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PriceUiModel)) {
            return false;
        }
        PriceUiModel priceUiModel = (PriceUiModel) obj;
        return Intrinsics.c(this.f61722b, priceUiModel.f61722b) && Intrinsics.c(this.f61723c, priceUiModel.f61723c);
    }

    public final int hashCode() {
        int iHashCode = this.f61722b.hashCode() * 31;
        PriceSpecificationUiModel priceSpecificationUiModel = this.f61723c;
        return iHashCode + (priceSpecificationUiModel == null ? 0 : priceSpecificationUiModel.hashCode());
    }

    public final String toString() {
        return "PriceUiModel(price=" + this.f61722b + ", priceSpecification=" + this.f61723c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61722b);
        PriceSpecificationUiModel priceSpecificationUiModel = this.f61723c;
        if (priceSpecificationUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            priceSpecificationUiModel.writeToParcel(parcel, i2);
        }
    }
}
