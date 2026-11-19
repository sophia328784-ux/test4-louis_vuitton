package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzei implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zzef zzefVar = null;
        IBinder iBinderS = null;
        IBinder iBinderS2 = null;
        PendingIntent pendingIntent = null;
        IBinder iBinderS3 = null;
        String strG = null;
        int iT = 1;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    zzefVar = (zzef) SafeParcelReader.f(parcel, i2, zzef.CREATOR);
                    break;
                case 3:
                    iBinderS = SafeParcelReader.s(i2, parcel);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) SafeParcelReader.f(parcel, i2, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinderS2 = SafeParcelReader.s(i2, parcel);
                    break;
                case 6:
                    iBinderS3 = SafeParcelReader.s(i2, parcel);
                    break;
                case 7:
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case '\b':
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzeh(iT, zzefVar, iBinderS, iBinderS2, pendingIntent, iBinderS3, strG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzeh[i2];
    }
}
