package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.fc;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeMap;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjh> CREATOR = new zzji();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f30648c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzjf[] f30649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TreeMap f30650f = new TreeMap();
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f30651h;

    public zzjh(String str, String str2, zzjf[] zzjfVarArr, boolean z, @Nullable byte[] bArr, long j2) {
        this.f30647b = str;
        this.d = str2;
        this.f30649e = zzjfVarArr;
        this.g = z;
        this.f30648c = bArr;
        this.f30651h = j2;
        for (zzjf zzjfVar : zzjfVarArr) {
            this.f30650f.put(Integer.valueOf(zzjfVar.f30644b), zzjfVar);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjh)) {
            return false;
        }
        zzjh zzjhVar = (zzjh) obj;
        return zzkl.a(this.f30647b, zzjhVar.f30647b) && zzkl.a(this.d, zzjhVar.d) && this.f30650f.equals(zzjhVar.f30650f) && this.g == zzjhVar.g && Arrays.equals(this.f30648c, zzjhVar.f30648c) && this.f30651h == zzjhVar.f30651h;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30647b, this.d, this.f30650f, Boolean.valueOf(this.g), this.f30648c, Long.valueOf(this.f30651h)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        sb.append(this.f30647b);
        sb.append("', '");
        sb.append(this.d);
        sb.append("', (");
        Iterator it = this.f30650f.values().iterator();
        while (it.hasNext()) {
            sb.append((zzjf) it.next());
            sb.append(", ");
        }
        sb.append("), ");
        sb.append(this.g);
        sb.append(", ");
        byte[] bArr = this.f30648c;
        sb.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        sb.append(", ");
        return fc.k(sb, this.f30651h, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f30647b, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.n(parcel, 4, this.f30649e, i2);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.b(parcel, 6, this.f30648c, false);
        SafeParcelWriter.p(parcel, 7, 8);
        parcel.writeLong(this.f30651h);
        SafeParcelWriter.r(iQ, parcel);
    }
}
