package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;", "Landroid/os/Parcelable;", "", "title", "", "address", "disclaimer", "", "isEditable", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShippingInformationUiModel implements Parcelable {
    public static final Parcelable.Creator<ShippingInformationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f64093c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f64094e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ShippingInformationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ShippingInformationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ShippingInformationUiModel(parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final ShippingInformationUiModel[] newArray(int i2) {
            return new ShippingInformationUiModel[i2];
        }
    }

    public ShippingInformationUiModel(String str, List<String> list, String str2, boolean z) {
        str.getClass();
        list.getClass();
        this.f64092b = str;
        this.f64093c = list;
        this.d = str2;
        this.f64094e = z;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingInformationUiModel)) {
            return false;
        }
        ShippingInformationUiModel shippingInformationUiModel = (ShippingInformationUiModel) obj;
        return Intrinsics.c(this.f64092b, shippingInformationUiModel.f64092b) && Intrinsics.c(this.f64093c, shippingInformationUiModel.f64093c) && Intrinsics.c(this.d, shippingInformationUiModel.d) && this.f64094e == shippingInformationUiModel.f64094e;
    }

    public final int hashCode() {
        int iA = n00.a(this.f64092b.hashCode() * 31, 31, this.f64093c);
        String str = this.d;
        return Boolean.hashCode(this.f64094e) + ((iA + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("ShippingInformationUiModel(title=", this.f64092b, ", address=", this.f64093c, ", disclaimer=");
        sbT.append(this.d);
        sbT.append(", isEditable=");
        sbT.append(this.f64094e);
        sbT.append(")");
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f64092b);
        parcel.writeStringList(this.f64093c);
        parcel.writeString(this.d);
        parcel.writeInt(this.f64094e ? 1 : 0);
    }
}
