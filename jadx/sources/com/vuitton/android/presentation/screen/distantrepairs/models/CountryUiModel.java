package com.vuitton.android.presentation.screen.distantrepairs.models;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;", "Landroid/os/Parcelable;", "", "regionCodeIso31661Alpha2", "name", "callingCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CountryUiModel implements Parcelable {
    public static final Parcelable.Creator<CountryUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57373c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CountryUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CountryUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CountryUiModel(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final CountryUiModel[] newArray(int i2) {
            return new CountryUiModel[i2];
        }
    }

    public CountryUiModel(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.f57372b = str;
        this.f57373c = str2;
        this.d = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CountryUiModel)) {
            return false;
        }
        CountryUiModel countryUiModel = (CountryUiModel) obj;
        return Intrinsics.c(this.f57372b, countryUiModel.f57372b) && Intrinsics.c(this.f57373c, countryUiModel.f57373c) && Intrinsics.c(this.d, countryUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f57372b.hashCode() * 31, 31, this.f57373c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return n00.r(this.d, ")", fc.s("CountryUiModel(regionCodeIso31661Alpha2=", this.f57372b, ", name=", this.f57373c, ", callingCode="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f57372b);
        parcel.writeString(this.f57373c);
        parcel.writeString(this.d);
    }
}
