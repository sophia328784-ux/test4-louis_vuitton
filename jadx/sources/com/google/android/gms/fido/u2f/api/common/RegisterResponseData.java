package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import defpackage.lc0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RegisterResponseData extends ResponseData {
    public static final Parcelable.Creator<RegisterResponseData> CREATOR = new zzi();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProtocolVersion f29535c;
    public final String d;

    public RegisterResponseData(byte[] bArr, ProtocolVersion protocolVersion, String str) {
        Preconditions.h(bArr);
        this.f29534b = bArr;
        Preconditions.h(protocolVersion);
        this.f29535c = protocolVersion;
        Preconditions.a(protocolVersion != ProtocolVersion.UNKNOWN);
        if (protocolVersion == ProtocolVersion.V1) {
            Preconditions.a(str == null);
            this.d = null;
        } else {
            Preconditions.h(str);
            this.d = str;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RegisterResponseData)) {
            return false;
        }
        RegisterResponseData registerResponseData = (RegisterResponseData) obj;
        return Objects.a(this.f29535c, registerResponseData.f29535c) && Arrays.equals(this.f29534b, registerResponseData.f29534b) && Objects.a(this.d, registerResponseData.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29535c, Integer.valueOf(Arrays.hashCode(this.f29534b)), this.d});
    }

    public final String toString() {
        zzbi zzbiVarA = zzbj.a(this);
        zzbiVarA.b(this.f29535c, "protocolVersion");
        zzgf zzgfVar = zzgf.f29892a;
        byte[] bArr = this.f29534b;
        zzbiVarA.b(zzgfVar.b(bArr.length, bArr), "registerData");
        String str = this.d;
        if (str != null) {
            zzbiVarA.b(str, "clientDataString");
        }
        return zzbiVarA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.b(parcel, 2, this.f29534b, false);
        SafeParcelWriter.k(parcel, 3, this.f29535c.toString(), false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public RegisterResponseData(byte[] bArr) {
        Preconditions.h(bArr);
        this.f29534b = bArr;
        this.f29535c = ProtocolVersion.V1;
        this.d = null;
    }

    public RegisterResponseData(byte[] bArr, String str, String str2) {
        this.f29534b = bArr;
        try {
            this.f29535c = ProtocolVersion.a(str);
            this.d = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e2) {
            lc0.u(e2);
            throw null;
        }
    }
}
