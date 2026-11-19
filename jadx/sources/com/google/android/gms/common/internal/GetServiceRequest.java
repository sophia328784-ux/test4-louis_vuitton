package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzm();
    public static final Scope[] p = new Scope[0];
    public static final Feature[] q = new Feature[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29179c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f29180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public IBinder f29181f;
    public Scope[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Bundle f29182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Account f29183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Feature[] f29184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Feature[] f29185k;
    public final boolean l;
    public final int m;
    public boolean n;
    public final String o;

    public GetServiceRequest(int i2, int i3, int i4, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i5, boolean z2, String str2) {
        scopeArr = scopeArr == null ? p : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        Feature[] featureArr3 = q;
        featureArr = featureArr == null ? featureArr3 : featureArr;
        featureArr2 = featureArr2 == null ? featureArr3 : featureArr2;
        this.f29178b = i2;
        this.f29179c = i3;
        this.d = i4;
        if ("com.google.android.gms".equals(str)) {
            this.f29180e = "com.google.android.gms";
        } else {
            this.f29180e = str;
        }
        if (i2 < 2) {
            Account accountE0 = null;
            if (iBinder != null) {
                int i6 = IAccountAccessor.Stub.f29189a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                IAccountAccessor zztVar = iInterfaceQueryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) iInterfaceQueryLocalInterface : new zzt(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
                int i7 = AccountAccessor.f29151b;
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    accountE0 = zztVar.e0();
                } catch (RemoteException unused) {
                } finally {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
            this.f29183i = accountE0;
        } else {
            this.f29181f = iBinder;
            this.f29183i = account;
        }
        this.g = scopeArr;
        this.f29182h = bundle;
        this.f29184j = featureArr;
        this.f29185k = featureArr2;
        this.l = z;
        this.m = i5;
        this.n = z2;
        this.o = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        zzm.a(this, parcel, i2);
    }
}
