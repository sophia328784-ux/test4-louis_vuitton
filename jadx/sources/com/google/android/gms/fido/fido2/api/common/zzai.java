package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzgx;
import com.google.android.gms.internal.fido.zzhk;
import defpackage.a;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzai> CREATOR = new zzaj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgx f29502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29503c;
    public final zzgx d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29504e;

    static {
        new zzhk(1L);
        new zzhk(2L);
        new zzhk(3L);
        new zzhk(4L);
    }

    public zzai(zzgx zzgxVar, zzgx zzgxVar2, zzgx zzgxVar3, int i2) {
        this.f29502b = zzgxVar;
        this.f29503c = zzgxVar2;
        this.d = zzgxVar3;
        this.f29504e = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzai)) {
            return false;
        }
        zzai zzaiVar = (zzai) obj;
        return Objects.a(this.f29502b, zzaiVar.f29502b) && Objects.a(this.f29503c, zzaiVar.f29503c) && Objects.a(this.d, zzaiVar.d) && this.f29504e == zzaiVar.f29504e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29502b, this.f29503c, this.d, Integer.valueOf(this.f29504e)});
    }

    public final String toString() {
        zzgx zzgxVar = this.f29502b;
        String strB = Base64Utils.b(zzgxVar == null ? null : zzgxVar.q());
        zzgx zzgxVar2 = this.f29503c;
        String strB2 = Base64Utils.b(zzgxVar2 == null ? null : zzgxVar2.q());
        zzgx zzgxVar3 = this.d;
        String strB3 = Base64Utils.b(zzgxVar3 != null ? zzgxVar3.q() : null);
        StringBuilder sbS = fc.s("HmacSecretExtension{coseKeyAgreement=", strB, ", saltEnc=", strB2, ", saltAuth=");
        sbS.append(strB3);
        sbS.append(", getPinUvAuthProtocol=");
        return a.i(this.f29504e, "}", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        zzgx zzgxVar = this.f29502b;
        SafeParcelWriter.b(parcel, 1, zzgxVar == null ? null : zzgxVar.q(), false);
        zzgx zzgxVar2 = this.f29503c;
        SafeParcelWriter.b(parcel, 2, zzgxVar2 == null ? null : zzgxVar2.q(), false);
        zzgx zzgxVar3 = this.d;
        SafeParcelWriter.b(parcel, 3, zzgxVar3 != null ? zzgxVar3.q() : null, false);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29504e);
        SafeParcelWriter.r(iQ, parcel);
    }
}
