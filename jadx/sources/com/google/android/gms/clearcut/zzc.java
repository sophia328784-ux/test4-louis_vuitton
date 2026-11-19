package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.o60;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f28890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f28891c;
    public final long d;

    public zzc(boolean z, long j2, long j3) {
        this.f28890b = z;
        this.f28891c = j2;
        this.d = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzc) {
            zzc zzcVar = (zzc) obj;
            if (this.f28890b == zzcVar.f28890b && this.f28891c == zzcVar.f28891c && this.d == zzcVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f28890b), Long.valueOf(this.f28891c), Long.valueOf(this.d)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CollectForDebugParcelable[skipPersistentStorage: ");
        sb.append(this.f28890b);
        sb.append(",collectForDebugStartTimeMillis: ");
        sb.append(this.f28891c);
        sb.append(",collectForDebugExpiryTimeMillis: ");
        return o60.j(this.d, "]", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28890b ? 1 : 0);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.f28891c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
