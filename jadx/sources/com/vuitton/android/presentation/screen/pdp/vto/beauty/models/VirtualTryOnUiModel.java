package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", "type", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VirtualTryOnUiModel implements Parcelable {
    public static final Parcelable.Creator<VirtualTryOnUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BeautyProductTypeUiModel f62208b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VirtualTryOnUiModel> {
        @Override // android.os.Parcelable.Creator
        public final VirtualTryOnUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new VirtualTryOnUiModel(BeautyProductTypeUiModel.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final VirtualTryOnUiModel[] newArray(int i2) {
            return new VirtualTryOnUiModel[i2];
        }
    }

    public VirtualTryOnUiModel(BeautyProductTypeUiModel beautyProductTypeUiModel) {
        beautyProductTypeUiModel.getClass();
        this.f62208b = beautyProductTypeUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VirtualTryOnUiModel) && this.f62208b == ((VirtualTryOnUiModel) obj).f62208b;
    }

    public final int hashCode() {
        return this.f62208b.hashCode();
    }

    public final String toString() {
        return "VirtualTryOnUiModel(type=" + this.f62208b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f62208b.name());
    }
}
