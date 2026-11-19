package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "name", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceProductUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceProductUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64062c;
    public final AssetImageUiModel d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceProductUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceProductUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CareServiceProductUiModel(SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readString(), parcel.readInt() == 0 ? null : AssetImageUiModel.CREATOR.createFromParcel(parcel), null);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceProductUiModel[] newArray(int i2) {
            return new CareServiceProductUiModel[i2];
        }
    }

    public CareServiceProductUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f64061b = str;
        this.f64062c = str2;
        this.d = assetImageUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceProductUiModel)) {
            return false;
        }
        CareServiceProductUiModel careServiceProductUiModel = (CareServiceProductUiModel) obj;
        String str = careServiceProductUiModel.f64061b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f64061b.equals(str) && this.f64062c.equals(careServiceProductUiModel.f64062c) && Intrinsics.c(this.d, careServiceProductUiModel.d);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(this.f64061b.hashCode() * 31, 31, this.f64062c);
        AssetImageUiModel assetImageUiModel = this.d;
        return iB + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode());
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("CareServiceProductUiModel(sku=", this.f64061b, ", name=", this.f64062c, ", image=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f64061b);
        parcel.writeString(this.f64062c);
        AssetImageUiModel assetImageUiModel = this.d;
        if (assetImageUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            assetImageUiModel.writeToParcel(parcel, i2);
        }
    }
}
