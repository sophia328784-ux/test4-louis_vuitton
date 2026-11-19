package com.google.android.gms.dynamite;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.common.zzc;

/* JADX INFO: loaded from: classes2.dex */
public final class zzp extends com.google.android.gms.internal.common.zza implements IInterface {
    public final IObjectWrapper G2(ObjectWrapper objectWrapper, String str, int i2) {
        Parcel parcelF2 = F2();
        zzc.b(parcelF2, objectWrapper);
        parcelF2.writeString(str);
        parcelF2.writeInt(i2);
        Parcel parcelE2 = E2(2, parcelF2);
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcelE2.readStrongBinder());
        parcelE2.recycle();
        return iObjectWrapperF2;
    }

    public final IObjectWrapper H2(ObjectWrapper objectWrapper, String str, int i2) {
        Parcel parcelF2 = F2();
        zzc.b(parcelF2, objectWrapper);
        parcelF2.writeString(str);
        parcelF2.writeInt(i2);
        Parcel parcelE2 = E2(4, parcelF2);
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcelE2.readStrongBinder());
        parcelE2.recycle();
        return iObjectWrapperF2;
    }

    public final IObjectWrapper I2(ObjectWrapper objectWrapper, String str, boolean z, long j2) {
        Parcel parcelF2 = F2();
        zzc.b(parcelF2, objectWrapper);
        parcelF2.writeString(str);
        parcelF2.writeInt(z ? 1 : 0);
        parcelF2.writeLong(j2);
        Parcel parcelE2 = E2(7, parcelF2);
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcelE2.readStrongBinder());
        parcelE2.recycle();
        return iObjectWrapperF2;
    }

    public final IObjectWrapper J2(ObjectWrapper objectWrapper, String str, int i2, ObjectWrapper objectWrapper2) {
        Parcel parcelF2 = F2();
        zzc.b(parcelF2, objectWrapper);
        parcelF2.writeString(str);
        parcelF2.writeInt(i2);
        zzc.b(parcelF2, objectWrapper2);
        Parcel parcelE2 = E2(8, parcelF2);
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcelE2.readStrongBinder());
        parcelE2.recycle();
        return iObjectWrapperF2;
    }
}
