package com.vuitton.android.presentation.model.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "Landroid/os/Parcelable;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/model/common/ScaleUiModel;", "scale", "altText", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetImageUiModel implements Parcelable {
    public static final Parcelable.Creator<AssetImageUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScaleUiModel f51779c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AssetImageUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AssetImageUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AssetImageUiModel(parcel.readString(), parcel.readInt() == 0 ? null : ScaleUiModel.valueOf(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AssetImageUiModel[] newArray(int i2) {
            return new AssetImageUiModel[i2];
        }
    }

    public /* synthetic */ AssetImageUiModel(String str, ScaleUiModel scaleUiModel, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : scaleUiModel, (i2 & 4) != 0 ? null : str2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetImageUiModel)) {
            return false;
        }
        AssetImageUiModel assetImageUiModel = (AssetImageUiModel) obj;
        return Intrinsics.c(this.f51778b, assetImageUiModel.f51778b) && this.f51779c == assetImageUiModel.f51779c && Intrinsics.c(this.d, assetImageUiModel.d);
    }

    public final int hashCode() {
        int iHashCode = this.f51778b.hashCode() * 31;
        ScaleUiModel scaleUiModel = this.f51779c;
        int iHashCode2 = (iHashCode + (scaleUiModel == null ? 0 : scaleUiModel.hashCode())) * 31;
        String str = this.d;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AssetImageUiModel(url=");
        sb.append(this.f51778b);
        sb.append(", scale=");
        sb.append(this.f51779c);
        sb.append(", altText=");
        return n00.r(this.d, ")", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f51778b);
        ScaleUiModel scaleUiModel = this.f51779c;
        if (scaleUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(scaleUiModel.name());
        }
        parcel.writeString(this.d);
    }

    public AssetImageUiModel(String str, ScaleUiModel scaleUiModel, String str2) {
        str.getClass();
        this.f51778b = str;
        this.f51779c = scaleUiModel;
        this.d = str2;
    }
}
