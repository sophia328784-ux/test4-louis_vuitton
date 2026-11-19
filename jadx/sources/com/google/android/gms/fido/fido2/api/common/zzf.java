package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzgx;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgx f29508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzgx f29509c;

    public zzf(zzgx zzgxVar, zzgx zzgxVar2) {
        this.f29508b = zzgxVar;
        this.f29509c = zzgxVar2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzf)) {
            return false;
        }
        zzf zzfVar = (zzf) obj;
        return Objects.a(this.f29508b, zzfVar.f29508b) && Objects.a(this.f29509c, zzfVar.f29509c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29508b, this.f29509c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        zzgx zzgxVar = this.f29508b;
        SafeParcelWriter.b(parcel, 1, zzgxVar == null ? null : zzgxVar.q(), false);
        zzgx zzgxVar2 = this.f29509c;
        SafeParcelWriter.b(parcel, 2, zzgxVar2 != null ? zzgxVar2.q() : null, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
