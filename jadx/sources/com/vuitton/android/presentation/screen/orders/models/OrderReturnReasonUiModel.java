package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;", "Landroid/os/Parcelable;", "", m.v, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderReturnReasonUiModel implements Parcelable {
    public static final Parcelable.Creator<OrderReturnReasonUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60317c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<OrderReturnReasonUiModel> {
        @Override // android.os.Parcelable.Creator
        public final OrderReturnReasonUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new OrderReturnReasonUiModel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final OrderReturnReasonUiModel[] newArray(int i2) {
            return new OrderReturnReasonUiModel[i2];
        }
    }

    public OrderReturnReasonUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f60316b = str;
        this.f60317c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderReturnReasonUiModel)) {
            return false;
        }
        OrderReturnReasonUiModel orderReturnReasonUiModel = (OrderReturnReasonUiModel) obj;
        return Intrinsics.c(this.f60316b, orderReturnReasonUiModel.f60316b) && Intrinsics.c(this.f60317c, orderReturnReasonUiModel.f60317c);
    }

    public final int hashCode() {
        return this.f60317c.hashCode() + (this.f60316b.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("OrderReturnReasonUiModel(code=", this.f60316b, ", description=", this.f60317c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f60316b);
        parcel.writeString(this.f60317c);
    }
}
