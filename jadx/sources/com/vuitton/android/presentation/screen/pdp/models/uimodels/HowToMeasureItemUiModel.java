package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HowToMeasureItemUiModel;", "Landroid/os/Parcelable;", "", "imageUrl", "text", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HowToMeasureItemUiModel implements Parcelable {
    public static final Parcelable.Creator<HowToMeasureItemUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61698c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<HowToMeasureItemUiModel> {
        @Override // android.os.Parcelable.Creator
        public final HowToMeasureItemUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new HowToMeasureItemUiModel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final HowToMeasureItemUiModel[] newArray(int i2) {
            return new HowToMeasureItemUiModel[i2];
        }
    }

    public HowToMeasureItemUiModel(String str, String str2) {
        str2.getClass();
        this.f61697b = str;
        this.f61698c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HowToMeasureItemUiModel)) {
            return false;
        }
        HowToMeasureItemUiModel howToMeasureItemUiModel = (HowToMeasureItemUiModel) obj;
        return Intrinsics.c(this.f61697b, howToMeasureItemUiModel.f61697b) && Intrinsics.c(this.f61698c, howToMeasureItemUiModel.f61698c);
    }

    public final int hashCode() {
        String str = this.f61697b;
        return this.f61698c.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return d21.l("HowToMeasureItemUiModel(imageUrl=", this.f61697b, ", text=", this.f61698c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61697b);
        parcel.writeString(this.f61698c);
    }
}
