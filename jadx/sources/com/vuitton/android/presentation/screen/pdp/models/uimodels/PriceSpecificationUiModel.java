package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;", "Landroid/os/Parcelable;", "", "priceCurrency", "", "price", "<init>", "(Ljava/lang/String;D)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PriceSpecificationUiModel implements Parcelable {
    public static final Parcelable.Creator<PriceSpecificationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f61721c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PriceSpecificationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final PriceSpecificationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PriceSpecificationUiModel(parcel.readString(), parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        public final PriceSpecificationUiModel[] newArray(int i2) {
            return new PriceSpecificationUiModel[i2];
        }
    }

    public PriceSpecificationUiModel(String str, double d) {
        str.getClass();
        this.f61720b = str;
        this.f61721c = d;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PriceSpecificationUiModel)) {
            return false;
        }
        PriceSpecificationUiModel priceSpecificationUiModel = (PriceSpecificationUiModel) obj;
        return Intrinsics.c(this.f61720b, priceSpecificationUiModel.f61720b) && Double.compare(this.f61721c, priceSpecificationUiModel.f61721c) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.f61721c) + (this.f61720b.hashCode() * 31);
    }

    public final String toString() {
        return "PriceSpecificationUiModel(priceCurrency=" + this.f61720b + ", price=" + this.f61721c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61720b);
        parcel.writeDouble(this.f61721c);
    }
}
