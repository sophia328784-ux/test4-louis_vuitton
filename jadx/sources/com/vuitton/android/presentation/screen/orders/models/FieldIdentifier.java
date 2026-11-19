package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier;", "Landroid/os/Parcelable;", "Reason", "Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier$Reason;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FieldIdentifier extends Parcelable {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier$Reason;", "Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Reason implements FieldIdentifier {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Reason f60267b = new Reason();
        public static final Parcelable.Creator<Reason> CREATOR = new Creator();

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Reason> {
            @Override // android.os.Parcelable.Creator
            public final Reason createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Reason.f60267b;
            }

            @Override // android.os.Parcelable.Creator
            public final Reason[] newArray(int i2) {
                return new Reason[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Reason);
        }

        public final int hashCode() {
            return 1388574857;
        }

        public final String toString() {
            return "Reason";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }
}
