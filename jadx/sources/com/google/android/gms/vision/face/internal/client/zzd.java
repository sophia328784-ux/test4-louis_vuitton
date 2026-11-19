package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzd implements Parcelable.Creator<FaceParcel> {
    @Override // android.os.Parcelable.Creator
    public final FaceParcel createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        float fQ4 = 0.0f;
        float fQ5 = 0.0f;
        float fQ6 = 0.0f;
        float fQ7 = 0.0f;
        float fQ8 = Float.MAX_VALUE;
        float fQ9 = Float.MAX_VALUE;
        float fQ10 = Float.MAX_VALUE;
        LandmarkParcel[] landmarkParcelArr = null;
        zza[] zzaVarArr = null;
        float fQ11 = -1.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 3:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 4:
                    fQ2 = SafeParcelReader.q(i2, parcel);
                    break;
                case 5:
                    fQ3 = SafeParcelReader.q(i2, parcel);
                    break;
                case 6:
                    fQ4 = SafeParcelReader.q(i2, parcel);
                    break;
                case 7:
                    fQ8 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\b':
                    fQ9 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\t':
                    landmarkParcelArr = (LandmarkParcel[]) SafeParcelReader.j(parcel, i2, LandmarkParcel.CREATOR);
                    break;
                case '\n':
                    fQ5 = SafeParcelReader.q(i2, parcel);
                    break;
                case 11:
                    fQ6 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\f':
                    fQ7 = SafeParcelReader.q(i2, parcel);
                    break;
                case '\r':
                    zzaVarArr = (zza[]) SafeParcelReader.j(parcel, i2, zza.CREATOR);
                    break;
                case 14:
                    fQ10 = SafeParcelReader.q(i2, parcel);
                    break;
                case 15:
                    fQ11 = SafeParcelReader.q(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new FaceParcel(iT, iT2, fQ, fQ2, fQ3, fQ4, fQ8, fQ9, fQ10, landmarkParcelArr, fQ5, fQ6, fQ7, zzaVarArr, fQ11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel[] newArray(int i2) {
        return new FaceParcel[i2];
    }
}
