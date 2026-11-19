package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class zzju extends AbstractSafeParcelable implements Comparable<zzju> {
    public static final Parcelable.Creator<zzju> CREATOR = new zzjv();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30676c;

    public zzju(int i2, int i3) {
        this.f30675b = i2;
        this.f30676c = i3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(zzju zzjuVar) {
        zzju zzjuVar2 = zzjuVar;
        int i2 = zzjuVar2.f30675b;
        int i3 = this.f30675b;
        if (i3 < i2) {
            return -1;
        }
        if (i3 > i2) {
            return 1;
        }
        int i4 = zzjuVar2.f30676c;
        int i5 = this.f30676c;
        if (i5 < i4) {
            return -1;
        }
        return i5 > i4 ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0004, code lost:
    
        r0 = (r3 = (com.google.android.gms.internal.measurement.zzju) r3).f30675b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
    
        r3 = r3.f30676c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.zzju
            if (r0 == 0) goto L1c
            com.google.android.gms.internal.measurement.zzju r3 = (com.google.android.gms.internal.measurement.zzju) r3
            int r0 = r3.f30675b
            int r1 = r2.f30675b
            if (r1 >= r0) goto Ld
            goto L1c
        Ld:
            if (r1 <= r0) goto L10
            goto L1c
        L10:
            int r3 = r3.f30676c
            int r2 = r2.f30676c
            if (r2 >= r3) goto L17
            goto L1c
        L17:
            if (r2 <= r3) goto L1a
            goto L1c
        L1a:
            r2 = 1
            return r2
        L1c:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzju.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return (this.f30675b * 31) + this.f30676c;
    }

    public final String toString() {
        int i2 = this.f30675b;
        int length = String.valueOf(i2).length();
        int i3 = this.f30676c;
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(i3).length() + 1);
        tr.w(i2, i3, "GenericDimension(", ", ", sb);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f30675b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f30676c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
