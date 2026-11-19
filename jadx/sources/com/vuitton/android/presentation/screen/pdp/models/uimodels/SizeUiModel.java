package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;", "Landroid/os/Parcelable;", "", "value", "", "unit", "<init>", "(DLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SizeUiModel implements Parcelable {
    public static final Parcelable.Creator<SizeUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f61757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61758c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<SizeUiModel> {
        @Override // android.os.Parcelable.Creator
        public final SizeUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new SizeUiModel(parcel.readDouble(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final SizeUiModel[] newArray(int i2) {
            return new SizeUiModel[i2];
        }
    }

    public SizeUiModel(double d, String str) {
        this.f61757b = d;
        this.f61758c = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeUiModel)) {
            return false;
        }
        SizeUiModel sizeUiModel = (SizeUiModel) obj;
        return Double.compare(this.f61757b, sizeUiModel.f61757b) == 0 && Intrinsics.c(this.f61758c, sizeUiModel.f61758c);
    }

    public final int hashCode() {
        int iHashCode = Double.hashCode(this.f61757b) * 31;
        String str = this.f61758c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "SizeUiModel(value=" + this.f61757b + ", unit=" + this.f61758c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeDouble(this.f61757b);
        parcel.writeString(this.f61758c);
    }
}
