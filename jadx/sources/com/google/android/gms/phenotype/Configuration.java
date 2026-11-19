package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class Configuration extends AbstractSafeParcelable implements Comparable<Configuration> {
    public static final Parcelable.Creator<Configuration> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzi[] f32039c;
    public final String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TreeMap f32040e = new TreeMap();

    public Configuration(int i2, zzi[] zziVarArr, String[] strArr) {
        this.f32038b = i2;
        this.f32039c = zziVarArr;
        for (zzi zziVar : zziVarArr) {
            this.f32040e.put(zziVar.f32047b, zziVar);
        }
        this.d = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Configuration configuration) {
        return this.f32038b - configuration.f32038b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Configuration)) {
            return false;
        }
        Configuration configuration = (Configuration) obj;
        return this.f32038b == configuration.f32038b && zzn.a(this.f32040e, configuration.f32040e) && Arrays.equals(this.d, configuration.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f32038b);
        sb.append(", (");
        Iterator it = this.f32040e.values().iterator();
        while (it.hasNext()) {
            sb.append((zzi) it.next());
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
        parcel.writeInt(this.f32038b);
        SafeParcelWriter.n(parcel, 3, this.f32039c, i2);
        SafeParcelWriter.l(parcel, 4, this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
