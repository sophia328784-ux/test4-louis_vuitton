package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new zaa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29163c;

    public ClientIdentity(int i2, String str) {
        this.f29162b = i2;
        this.f29163c = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f29162b == this.f29162b && Objects.a(clientIdentity.f29163c, this.f29163c);
    }

    public final int hashCode() {
        return this.f29162b;
    }

    public final String toString() {
        int i2 = this.f29162b;
        int length = String.valueOf(i2).length();
        String str = this.f29163c;
        StringBuilder sb = new StringBuilder(length + 1 + String.valueOf(str).length());
        sb.append(i2);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29162b);
        SafeParcelWriter.k(parcel, 2, this.f29163c, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
