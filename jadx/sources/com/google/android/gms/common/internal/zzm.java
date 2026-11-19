package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm implements Parcelable.Creator {
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int i3 = getServiceRequest.f29178b;
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(i3);
        int i4 = getServiceRequest.f29179c;
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(i4);
        int i5 = getServiceRequest.d;
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(i5);
        SafeParcelWriter.k(parcel, 4, getServiceRequest.f29180e, false);
        SafeParcelWriter.f(parcel, 5, getServiceRequest.f29181f);
        SafeParcelWriter.n(parcel, 6, getServiceRequest.g, i2);
        SafeParcelWriter.a(parcel, 7, getServiceRequest.f29182h);
        SafeParcelWriter.j(parcel, 8, getServiceRequest.f29183i, i2, false);
        SafeParcelWriter.n(parcel, 10, getServiceRequest.f29184j, i2);
        SafeParcelWriter.n(parcel, 11, getServiceRequest.f29185k, i2);
        boolean z = getServiceRequest.l;
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeInt(z ? 1 : 0);
        int i6 = getServiceRequest.m;
        SafeParcelWriter.p(parcel, 13, 4);
        parcel.writeInt(i6);
        boolean z2 = getServiceRequest.n;
        SafeParcelWriter.p(parcel, 14, 4);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.k(parcel, 15, getServiceRequest.o, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Scope[] scopeArr = GetServiceRequest.p;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.q;
        Feature[] featureArr2 = featureArr;
        String strG = null;
        IBinder iBinderS = null;
        Account account = null;
        String strG2 = null;
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        boolean zM = false;
        int iT4 = 0;
        boolean zM2 = false;
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
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 4:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    iBinderS = SafeParcelReader.s(i2, parcel);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.j(parcel, i2, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.b(i2, parcel);
                    break;
                case '\b':
                    account = (Account) SafeParcelReader.f(parcel, i2, Account.CREATOR);
                    break;
                case '\t':
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case '\n':
                    featureArr = (Feature[]) SafeParcelReader.j(parcel, i2, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.j(parcel, i2, Feature.CREATOR);
                    break;
                case '\f':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\r':
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 14:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 15:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GetServiceRequest(iT, iT2, iT3, strG, iBinderS, scopeArr, bundle, account, featureArr, featureArr2, zM, iT4, zM2, strG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GetServiceRequest[i2];
    }
}
