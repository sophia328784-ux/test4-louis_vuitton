package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;", "Landroid/os/Parcelable;", "", "amount", "", "display", "currency", "<init>", "(DLjava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PriceItemUiModel implements Parcelable {
    public static final Parcelable.Creator<PriceItemUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f60383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60384c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PriceItemUiModel> {
        @Override // android.os.Parcelable.Creator
        public final PriceItemUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PriceItemUiModel(parcel.readDouble(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final PriceItemUiModel[] newArray(int i2) {
            return new PriceItemUiModel[i2];
        }
    }

    public PriceItemUiModel(double d, String str, String str2) {
        str.getClass();
        this.f60383b = d;
        this.f60384c = str;
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
        if (!(obj instanceof PriceItemUiModel)) {
            return false;
        }
        PriceItemUiModel priceItemUiModel = (PriceItemUiModel) obj;
        return Double.compare(this.f60383b, priceItemUiModel.f60383b) == 0 && Intrinsics.c(this.f60384c, priceItemUiModel.f60384c) && Intrinsics.c(this.d, priceItemUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(Double.hashCode(this.f60383b) * 31, 31, this.f60384c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PriceItemUiModel(amount=");
        sb.append(this.f60383b);
        sb.append(", display=");
        sb.append(this.f60384c);
        return d21.p(sb, ", currency=", this.d, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeDouble(this.f60383b);
        parcel.writeString(this.f60384c);
        parcel.writeString(this.d);
    }

    public /* synthetic */ PriceItemUiModel(double d, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, str, (i2 & 4) != 0 ? null : str2);
    }
}
