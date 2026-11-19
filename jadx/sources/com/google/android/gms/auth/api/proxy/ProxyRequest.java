package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zza();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28796c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f28797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f28798f;
    public final Bundle g;

    public ProxyRequest(int i2, String str, int i3, long j2, byte[] bArr, Bundle bundle) {
        this.f28798f = i2;
        this.f28795b = str;
        this.f28796c = i3;
        this.d = j2;
        this.f28797e = bArr;
        this.g = bundle;
    }

    public final String toString() {
        return "ProxyRequest[ url: " + this.f28795b + ", method: " + this.f28796c + " ]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28795b, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28796c);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.b(parcel, 4, this.f28797e, false);
        SafeParcelWriter.a(parcel, 5, this.g);
        SafeParcelWriter.p(parcel, 1000, 4);
        parcel.writeInt(this.f28798f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
