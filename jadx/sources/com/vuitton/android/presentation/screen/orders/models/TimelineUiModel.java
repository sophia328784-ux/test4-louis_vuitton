package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;", "validation", "", "Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;", "steps", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TimelineUiModel implements Parcelable {
    public static final Parcelable.Creator<TimelineUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ValidationUiModel f60407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f60408c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<TimelineUiModel> {
        @Override // android.os.Parcelable.Creator
        public final TimelineUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            ValidationUiModel validationUiModelValueOf = ValidationUiModel.valueOf(parcel.readString());
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(DeliveryStateUiModel.CREATOR, parcel, arrayList, iD, 1);
            }
            return new TimelineUiModel(validationUiModelValueOf, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final TimelineUiModel[] newArray(int i2) {
            return new TimelineUiModel[i2];
        }
    }

    public TimelineUiModel(ValidationUiModel validationUiModel, List<DeliveryStateUiModel> list) {
        validationUiModel.getClass();
        list.getClass();
        this.f60407b = validationUiModel;
        this.f60408c = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimelineUiModel)) {
            return false;
        }
        TimelineUiModel timelineUiModel = (TimelineUiModel) obj;
        return this.f60407b == timelineUiModel.f60407b && Intrinsics.c(this.f60408c, timelineUiModel.f60408c);
    }

    public final int hashCode() {
        return this.f60408c.hashCode() + (this.f60407b.hashCode() * 31);
    }

    public final String toString() {
        return "TimelineUiModel(validation=" + this.f60407b + ", steps=" + this.f60408c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f60407b.name());
        Iterator itP = cj.p(this.f60408c, parcel);
        while (itP.hasNext()) {
            ((DeliveryStateUiModel) itP.next()).writeToParcel(parcel, i2);
        }
    }
}
