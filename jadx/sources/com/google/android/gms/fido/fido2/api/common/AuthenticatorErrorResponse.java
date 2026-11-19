package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import defpackage.lc0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticatorErrorResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorErrorResponse> CREATOR = new zzl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ErrorCode f29433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29434c;
    public final int d;

    public AuthenticatorErrorResponse(int i2, String str, int i3) {
        try {
            this.f29433b = ErrorCode.b(i2);
            this.f29434c = str;
            this.d = i3;
        } catch (ErrorCode.UnsupportedErrorCodeException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorErrorResponse)) {
            return false;
        }
        AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) obj;
        return Objects.a(this.f29433b, authenticatorErrorResponse.f29433b) && Objects.a(this.f29434c, authenticatorErrorResponse.f29434c) && Objects.a(Integer.valueOf(this.d), Integer.valueOf(authenticatorErrorResponse.d));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29433b, this.f29434c, Integer.valueOf(this.d)});
    }

    public final String toString() {
        zzbi zzbiVarA = zzbj.a(this);
        zzbiVarA.a(this.f29433b.a());
        String str = this.f29434c;
        if (str != null) {
            zzbiVarA.b(str, "errorMessage");
        }
        return zzbiVarA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int iA = this.f29433b.a();
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(iA);
        SafeParcelWriter.k(parcel, 3, this.f29434c, false);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
