package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int i2 = parcel.readInt();
        try {
            Parcelable.Creator<ChannelIdValue> creator = ChannelIdValue.CREATOR;
            for (ChannelIdValue.ChannelIdValueType channelIdValueType : ChannelIdValue.ChannelIdValueType.values()) {
                if (i2 == channelIdValueType.zzb) {
                    return channelIdValueType;
                }
            }
            throw new ChannelIdValue.UnsupportedChannelIdValueTypeException(i2);
        } catch (ChannelIdValue.UnsupportedChannelIdValueTypeException e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ChannelIdValue.ChannelIdValueType[i2];
    }
}
