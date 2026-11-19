package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.lc0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RegisterRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegisterRequest> CREATOR = new zzg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProtocolVersion f29527c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f29528e;

    public RegisterRequest(ProtocolVersion protocolVersion, byte[] bArr, String str) {
        this.f29526b = 1;
        Preconditions.h(protocolVersion);
        this.f29527c = protocolVersion;
        Preconditions.h(bArr);
        this.d = bArr;
        if (protocolVersion == ProtocolVersion.V1) {
            Preconditions.b(bArr.length == 65, "invalid challengeValue length for V1");
        }
        this.f29528e = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequest)) {
            return false;
        }
        RegisterRequest registerRequest = (RegisterRequest) obj;
        if (!Arrays.equals(this.d, registerRequest.d) || this.f29527c != registerRequest.f29527c) {
            return false;
        }
        String str = registerRequest.f29528e;
        String str2 = this.f29528e;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = this.f29527c.hashCode() + ((Arrays.hashCode(this.d) + 31) * 31);
        String str = this.f29528e;
        return (iHashCode * 31) + (str == null ? 0 : str.hashCode());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29526b);
        SafeParcelWriter.k(parcel, 2, this.f29527c.toString(), false);
        SafeParcelWriter.b(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f29528e, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public RegisterRequest(int i2, String str, String str2, byte[] bArr) {
        this.f29526b = i2;
        try {
            this.f29527c = ProtocolVersion.a(str);
            this.d = bArr;
            this.f29528e = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e2) {
            lc0.u(e2);
            throw null;
        }
    }
}
