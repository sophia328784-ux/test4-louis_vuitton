package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjf extends AbstractSafeParcelable implements Comparable<zzjf> {
    public static final Parcelable.Creator<zzjf> CREATOR = new zzjg();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzjo[] f30645c;
    public final String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TreeMap f30646e = new TreeMap();

    public zzjf(int i2, zzjo[] zzjoVarArr, String[] strArr) {
        this.f30644b = i2;
        this.f30645c = zzjoVarArr;
        for (zzjo zzjoVar : zzjoVarArr) {
            this.f30646e.put(zzjoVar.f30664b, zzjoVar);
        }
        this.d = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzjf zzjfVar) {
        return this.f30644b - zzjfVar.f30644b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjf)) {
            return false;
        }
        zzjf zzjfVar = (zzjf) obj;
        return this.f30644b == zzjfVar.f30644b && zzkl.a(this.f30646e, zzjfVar.f30646e) && Arrays.equals(this.d, zzjfVar.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f30644b);
        sb.append(", (");
        Iterator it = this.f30646e.values().iterator();
        while (it.hasNext()) {
            sb.append((zzjo) it.next());
            sb.append(", ");
        }
        sb.append("), (");
        String[] strArr = this.d;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append("))");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f30644b);
        SafeParcelWriter.n(parcel, 3, this.f30645c, i2);
        SafeParcelWriter.l(parcel, 4, this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
