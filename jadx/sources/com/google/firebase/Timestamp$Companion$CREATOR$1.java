package com.google.firebase;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/google/firebase/Timestamp$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/google/firebase/Timestamp;", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Timestamp$Companion$CREATOR$1 implements Parcelable.Creator<Timestamp> {
    @Override // android.os.Parcelable.Creator
    public final Timestamp createFromParcel(Parcel parcel) {
        parcel.getClass();
        return new Timestamp(parcel.readLong(), parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public final Timestamp[] newArray(int i2) {
        return new Timestamp[i2];
    }
}
