package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "", "absolutePositionOnLine", "displayedPositionOnLine", "Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;", "deliveryStateTitle", "", "milestone", "Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;", "state", "<init>", "(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DeliveryStateUiModel implements Parcelable {
    public static final Parcelable.Creator<DeliveryStateUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f60240c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DeliveryStateTitle f60241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f60242f;
    public final StateUiModel g;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<DeliveryStateUiModel> {
        @Override // android.os.Parcelable.Creator
        public final DeliveryStateUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new DeliveryStateUiModel(parcel.readString(), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), DeliveryStateTitle.CREATOR.createFromParcel(parcel), parcel.readInt() != 0, StateUiModel.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final DeliveryStateUiModel[] newArray(int i2) {
            return new DeliveryStateUiModel[i2];
        }
    }

    public DeliveryStateUiModel(String str, int i2, Integer num, DeliveryStateTitle deliveryStateTitle, boolean z, StateUiModel stateUiModel) {
        str.getClass();
        deliveryStateTitle.getClass();
        stateUiModel.getClass();
        this.f60239b = str;
        this.f60240c = i2;
        this.d = num;
        this.f60241e = deliveryStateTitle;
        this.f60242f = z;
        this.g = stateUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeliveryStateUiModel)) {
            return false;
        }
        DeliveryStateUiModel deliveryStateUiModel = (DeliveryStateUiModel) obj;
        return Intrinsics.c(this.f60239b, deliveryStateUiModel.f60239b) && this.f60240c == deliveryStateUiModel.f60240c && Intrinsics.c(this.d, deliveryStateUiModel.d) && Intrinsics.c(this.f60241e, deliveryStateUiModel.f60241e) && this.f60242f == deliveryStateUiModel.f60242f && this.g == deliveryStateUiModel.g;
    }

    public final int hashCode() {
        int iB = tr.b(this.f60240c, this.f60239b.hashCode() * 31, 31);
        Integer num = this.d;
        return this.g.hashCode() + o60.b((this.f60241e.hashCode() + ((iB + (num == null ? 0 : num.hashCode())) * 31)) * 31, 31, this.f60242f);
    }

    public final String toString() {
        StringBuilder sbR = fc.r(this.f60240c, "DeliveryStateUiModel(id=", this.f60239b, ", absolutePositionOnLine=", ", displayedPositionOnLine=");
        sbR.append(this.d);
        sbR.append(", deliveryStateTitle=");
        sbR.append(this.f60241e);
        sbR.append(", milestone=");
        sbR.append(this.f60242f);
        sbR.append(", state=");
        sbR.append(this.g);
        sbR.append(")");
        return sbR.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iIntValue;
        parcel.getClass();
        parcel.writeString(this.f60239b);
        parcel.writeInt(this.f60240c);
        Integer num = this.d;
        if (num == null) {
            iIntValue = 0;
        } else {
            parcel.writeInt(1);
            iIntValue = num.intValue();
        }
        parcel.writeInt(iIntValue);
        this.f60241e.writeToParcel(parcel, i2);
        parcel.writeInt(this.f60242f ? 1 : 0);
        parcel.writeString(this.g.name());
    }

    public /* synthetic */ DeliveryStateUiModel(String str, int i2, Integer num, DeliveryStateTitle deliveryStateTitle, boolean z, StateUiModel stateUiModel, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? new String() : str, i2, (i3 & 4) != 0 ? null : num, deliveryStateTitle, z, stateUiModel);
    }
}
