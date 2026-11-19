package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "name", "iconUrl", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;", "skuAvailability", "colorFamily", "finish", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VariationUiModel implements Parcelable {
    public static final Parcelable.Creator<VariationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61768c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SkuAvailabilityUiModel f61769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f61770f;
    public final String g;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VariationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final VariationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new VariationUiModel(SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : SkuAvailabilityUiModel.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final VariationUiModel[] newArray(int i2) {
            return new VariationUiModel[i2];
        }
    }

    public VariationUiModel(String str, String str2, String str3, SkuAvailabilityUiModel skuAvailabilityUiModel, String str4, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f61767b = str;
        this.f61768c = str2;
        this.d = str3;
        this.f61769e = skuAvailabilityUiModel;
        this.f61770f = str4;
        this.g = str5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VariationUiModel)) {
            return false;
        }
        VariationUiModel variationUiModel = (VariationUiModel) obj;
        String str = variationUiModel.f61767b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f61767b, str) && Intrinsics.c(this.f61768c, variationUiModel.f61768c) && Intrinsics.c(this.d, variationUiModel.d) && Intrinsics.c(this.f61769e, variationUiModel.f61769e) && Intrinsics.c(this.f61770f, variationUiModel.f61770f) && Intrinsics.c(this.g, variationUiModel.g);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(this.f61767b.hashCode() * 31, 31, this.f61768c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        SkuAvailabilityUiModel skuAvailabilityUiModel = this.f61769e;
        int iHashCode2 = (iHashCode + (skuAvailabilityUiModel == null ? 0 : skuAvailabilityUiModel.hashCode())) * 31;
        String str2 = this.f61770f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("VariationUiModel(sku=", this.f61767b, ", name=", this.f61768c, ", iconUrl=");
        sbS.append(this.d);
        sbS.append(", skuAvailability=");
        sbS.append(this.f61769e);
        sbS.append(", colorFamily=");
        return tr.l(sbS, this.f61770f, ", finish=", this.g, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f61767b);
        parcel.writeString(this.f61768c);
        parcel.writeString(this.d);
        SkuAvailabilityUiModel skuAvailabilityUiModel = this.f61769e;
        if (skuAvailabilityUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            skuAvailabilityUiModel.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f61770f);
        parcel.writeString(this.g);
    }

    public /* synthetic */ VariationUiModel(String str, String str2, String str3, SkuAvailabilityUiModel skuAvailabilityUiModel, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, skuAvailabilityUiModel, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, null);
    }
}
