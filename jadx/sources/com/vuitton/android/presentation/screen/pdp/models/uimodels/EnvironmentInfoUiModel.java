package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;", "Landroid/os/Parcelable;", "", "label", "", "bulletPoints", "imageUrl", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EnvironmentInfoUiModel implements Parcelable {
    public static final Parcelable.Creator<EnvironmentInfoUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f61692c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<EnvironmentInfoUiModel> {
        @Override // android.os.Parcelable.Creator
        public final EnvironmentInfoUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new EnvironmentInfoUiModel(parcel.readString(), parcel.createStringArrayList(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final EnvironmentInfoUiModel[] newArray(int i2) {
            return new EnvironmentInfoUiModel[i2];
        }
    }

    public EnvironmentInfoUiModel(String str, List<String> list, String str2) {
        str.getClass();
        this.f61691b = str;
        this.f61692c = list;
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
        if (!(obj instanceof EnvironmentInfoUiModel)) {
            return false;
        }
        EnvironmentInfoUiModel environmentInfoUiModel = (EnvironmentInfoUiModel) obj;
        return Intrinsics.c(this.f61691b, environmentInfoUiModel.f61691b) && Intrinsics.c(this.f61692c, environmentInfoUiModel.f61692c) && Intrinsics.c(this.d, environmentInfoUiModel.d);
    }

    public final int hashCode() {
        int iHashCode = this.f61691b.hashCode() * 31;
        List list = this.f61692c;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.d;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.d, ")", d21.t("EnvironmentInfoUiModel(label=", this.f61691b, ", bulletPoints=", this.f61692c, ", imageUrl="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61691b);
        parcel.writeStringList(this.f61692c);
        parcel.writeString(this.d);
    }
}
