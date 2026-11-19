package com.vuitton.android.presentation.screen.pdp.contextualsizing.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/WearingUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "", "humanModelHeight", "tag", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WearingUiModel implements Parcelable {
    public static final Parcelable.Creator<WearingUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImageUiModel f61538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61539c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WearingUiModel> {
        @Override // android.os.Parcelable.Creator
        public final WearingUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new WearingUiModel(AssetImageUiModel.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final WearingUiModel[] newArray(int i2) {
            return new WearingUiModel[i2];
        }
    }

    public WearingUiModel(AssetImageUiModel assetImageUiModel, String str, String str2) {
        assetImageUiModel.getClass();
        str.getClass();
        this.f61538b = assetImageUiModel;
        this.f61539c = str;
        this.d = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WearingUiModel)) {
            return false;
        }
        WearingUiModel wearingUiModel = (WearingUiModel) obj;
        return Intrinsics.c(this.f61538b, wearingUiModel.f61538b) && Intrinsics.c(this.f61539c, wearingUiModel.f61539c) && Intrinsics.c(this.d, wearingUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f61538b.hashCode() * 31, 31, this.f61539c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WearingUiModel(image=");
        sb.append(this.f61538b);
        sb.append(", humanModelHeight=");
        sb.append(this.f61539c);
        sb.append(", tag=");
        return n00.r(this.d, ")", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        this.f61538b.writeToParcel(parcel, i2);
        parcel.writeString(this.f61539c);
        parcel.writeString(this.d);
    }

    public /* synthetic */ WearingUiModel(AssetImageUiModel assetImageUiModel, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetImageUiModel, str, (i2 & 4) != 0 ? null : str2);
    }
}
