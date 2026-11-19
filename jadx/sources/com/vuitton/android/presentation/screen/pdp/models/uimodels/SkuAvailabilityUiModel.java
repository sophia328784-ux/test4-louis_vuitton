package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "isBackOrder", "isPreOrder", "inStock", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;", "disclaimer", "<init>", "(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SkuAvailabilityUiModel implements Parcelable {
    public static final Parcelable.Creator<SkuAvailabilityUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f61760c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f61761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductDisclaimerUiModel f61762f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<SkuAvailabilityUiModel> {
        @Override // android.os.Parcelable.Creator
        public final SkuAvailabilityUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            SkuIdUiModel skuIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : SkuIdUiModel.CREATOR.createFromParcel(parcel);
            String str = skuIdUiModelCreateFromParcel != null ? skuIdUiModelCreateFromParcel.f61764b : null;
            boolean z = false;
            boolean z2 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                z = true;
            }
            return new SkuAvailabilityUiModel(str, z2, z, parcel.readInt() != 0, parcel.readInt() != 0 ? ProductDisclaimerUiModel.CREATOR.createFromParcel(parcel) : null, null);
        }

        @Override // android.os.Parcelable.Creator
        public final SkuAvailabilityUiModel[] newArray(int i2) {
            return new SkuAvailabilityUiModel[i2];
        }
    }

    public /* synthetic */ SkuAvailabilityUiModel(String str, boolean z, boolean z2, boolean z3, ProductDisclaimerUiModel productDisclaimerUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, productDisclaimerUiModel, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuAvailabilityUiModel)) {
            return false;
        }
        SkuAvailabilityUiModel skuAvailabilityUiModel = (SkuAvailabilityUiModel) obj;
        String str = skuAvailabilityUiModel.f61759b;
        String str2 = this.f61759b;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            zC = Intrinsics.c(str2, str);
        }
        return zC && this.f61760c == skuAvailabilityUiModel.f61760c && this.d == skuAvailabilityUiModel.d && this.f61761e == skuAvailabilityUiModel.f61761e && Intrinsics.c(this.f61762f, skuAvailabilityUiModel.f61762f);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f61759b;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            iHashCode = str.hashCode();
        }
        int iB = o60.b(o60.b(o60.b(iHashCode * 31, 31, this.f61760c), 31, this.d), 31, this.f61761e);
        ProductDisclaimerUiModel productDisclaimerUiModel = this.f61762f;
        return iB + (productDisclaimerUiModel != null ? productDisclaimerUiModel.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f61759b;
        if (str == null) {
            str = "null";
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        }
        StringBuilder sbS = d21.s("SkuAvailabilityUiModel(sku=", str, ", isBackOrder=", ", isPreOrder=", this.f61760c);
        fc.y(sbS, this.d, ", inStock=", this.f61761e, ", disclaimer=");
        sbS.append(this.f61762f);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        String str = this.f61759b;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            parcel.writeString(str);
        }
        parcel.writeInt(this.f61760c ? 1 : 0);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeInt(this.f61761e ? 1 : 0);
        ProductDisclaimerUiModel productDisclaimerUiModel = this.f61762f;
        if (productDisclaimerUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            productDisclaimerUiModel.writeToParcel(parcel, i2);
        }
    }

    public SkuAvailabilityUiModel(String str, boolean z, boolean z2, boolean z3, ProductDisclaimerUiModel productDisclaimerUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        this.f61759b = str;
        this.f61760c = z;
        this.d = z2;
        this.f61761e = z3;
        this.f61762f = productDisclaimerUiModel;
    }
}
