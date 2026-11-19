package com.vuitton.android.presentation.model.common;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "video", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetUiModel implements Parcelable {
    public static final Parcelable.Creator<AssetUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImageUiModel f51780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetVideoUiModel f51781c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AssetUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AssetUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AssetUiModel(parcel.readInt() == 0 ? null : AssetImageUiModel.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? AssetVideoUiModel.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final AssetUiModel[] newArray(int i2) {
            return new AssetUiModel[i2];
        }
    }

    public AssetUiModel(AssetImageUiModel assetImageUiModel, AssetVideoUiModel assetVideoUiModel) {
        this.f51780b = assetImageUiModel;
        this.f51781c = assetVideoUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetUiModel)) {
            return false;
        }
        AssetUiModel assetUiModel = (AssetUiModel) obj;
        return Intrinsics.c(this.f51780b, assetUiModel.f51780b) && Intrinsics.c(this.f51781c, assetUiModel.f51781c);
    }

    public final int hashCode() {
        AssetImageUiModel assetImageUiModel = this.f51780b;
        int iHashCode = (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode()) * 31;
        AssetVideoUiModel assetVideoUiModel = this.f51781c;
        return iHashCode + (assetVideoUiModel != null ? assetVideoUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "AssetUiModel(image=" + this.f51780b + ", video=" + this.f51781c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        AssetImageUiModel assetImageUiModel = this.f51780b;
        if (assetImageUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assetImageUiModel.writeToParcel(parcel, i2);
        }
        AssetVideoUiModel assetVideoUiModel = this.f51781c;
        if (assetVideoUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assetVideoUiModel.writeToParcel(parcel, i2);
        }
    }
}
