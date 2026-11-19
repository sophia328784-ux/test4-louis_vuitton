package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzgx;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f29512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29513c;
    public final zzgx d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzgx f29514e;

    public zzq(long j2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        Preconditions.h(bArr);
        zzgx zzgxVarP = zzgx.p(bArr.length, bArr);
        Preconditions.h(bArr2);
        zzgx zzgxVarP2 = zzgx.p(bArr2.length, bArr2);
        Preconditions.h(bArr3);
        zzgx zzgxVarP3 = zzgx.p(bArr3.length, bArr3);
        this.f29512b = j2;
        this.f29513c = zzgxVarP;
        this.d = zzgxVarP2;
        this.f29514e = zzgxVarP3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzq)) {
            return false;
        }
        zzq zzqVar = (zzq) obj;
        return this.f29512b == zzqVar.f29512b && Objects.a(this.f29513c, zzqVar.f29513c) && Objects.a(this.d, zzqVar.d) && Objects.a(this.f29514e, zzqVar.f29514e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f29512b), this.f29513c, this.d, this.f29514e});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f29512b);
        SafeParcelWriter.b(parcel, 2, this.f29513c.q(), false);
        SafeParcelWriter.b(parcel, 3, this.d.q(), false);
        SafeParcelWriter.b(parcel, 4, this.f29514e.q(), false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
