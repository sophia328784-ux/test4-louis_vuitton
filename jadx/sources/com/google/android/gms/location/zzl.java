package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzl implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        float fQ4 = 0.0f;
        byte bN = 0;
        long jV = 0;
        while (true) {
            float[] fArr = null;
            while (true) {
                if (parcel.dataPosition() >= iZ) {
                    SafeParcelReader.l(iZ, parcel);
                    return new DeviceOrientation(fArr, fQ, fQ2, jV, bN, fQ3, fQ4);
                }
                int i2 = parcel.readInt();
                char c2 = (char) i2;
                if (c2 != 1) {
                    switch (c2) {
                        case 4:
                            fQ = SafeParcelReader.q(i2, parcel);
                            break;
                        case 5:
                            fQ2 = SafeParcelReader.q(i2, parcel);
                            break;
                        case 6:
                            jV = SafeParcelReader.v(i2, parcel);
                            break;
                        case 7:
                            bN = SafeParcelReader.n(i2, parcel);
                            break;
                        case '\b':
                            fQ3 = SafeParcelReader.q(i2, parcel);
                            break;
                        case '\t':
                            fQ4 = SafeParcelReader.q(i2, parcel);
                            break;
                        default:
                            SafeParcelReader.y(i2, parcel);
                            break;
                    }
                } else {
                    int iX = SafeParcelReader.x(i2, parcel);
                    int iDataPosition = parcel.dataPosition();
                    if (iX == 0) {
                        break;
                    }
                    float[] fArrCreateFloatArray = parcel.createFloatArray();
                    parcel.setDataPosition(iDataPosition + iX);
                    fArr = fArrCreateFloatArray;
                }
            }
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new DeviceOrientation[i2];
    }
}
