package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.md;
import java.util.List;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30224c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f30225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzeu f30226f;
    public final zzd g;

    static {
        Process.myUid();
        Process.myPid();
    }

    @Deprecated
    @SafeParcelable.Constructor
    public zzd(@SafeParcelable.Param int i2, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param List list, @SafeParcelable.Param zzd zzdVar) {
        str.getClass();
        if (zzdVar != null && zzdVar.g != null) {
            md.n("Failed requirement.");
            throw null;
        }
        this.f30223b = i2;
        this.f30224c = str;
        this.d = str2;
        this.f30225e = str3 == null ? zzdVar != null ? zzdVar.f30225e : null : str3;
        if (list == null) {
            list = zzdVar != null ? zzdVar.f30226f : null;
            if (list == null) {
                zzex zzexVar = zzeu.f30264c;
                list = zzev.f30265f;
                list.getClass();
            }
        }
        zzeu zzeuVarP = zzeu.p(list);
        zzeuVarP.getClass();
        this.f30226f = zzeuVarP;
        this.g = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzd)) {
            return false;
        }
        zzd zzdVar = (zzd) obj;
        return this.f30223b == zzdVar.f30223b && Intrinsics.c(this.f30224c, zzdVar.f30224c) && Intrinsics.c(this.d, zzdVar.d) && Intrinsics.c(this.f30225e, zzdVar.f30225e) && Intrinsics.c(this.g, zzdVar.g) && Intrinsics.c(this.f30226f, zzdVar.f30226f);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f30223b), this.f30224c, this.d, this.f30225e, this.g);
    }

    public final String toString() {
        String str = this.f30224c;
        int length = str.length() + 18;
        String str2 = this.d;
        StringBuilder sb = new StringBuilder(length + (str2 != null ? str2.length() : 0));
        sb.append(this.f30223b);
        sb.append("/");
        sb.append(str);
        if (str2 != null) {
            sb.append("[");
            if (StringsKt.P(str2, str, false)) {
                sb.append((CharSequence) str2, str.length(), str2.length());
            } else {
                sb.append(str2);
            }
            sb.append("]");
        }
        String str3 = this.f30225e;
        if (str3 != null) {
            sb.append("/");
            sb.append(Integer.toHexString(str3.hashCode()));
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f30223b);
        SafeParcelWriter.k(parcel, 3, this.f30224c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.k(parcel, 6, this.f30225e, false);
        SafeParcelWriter.j(parcel, 7, this.g, i2, false);
        SafeParcelWriter.o(parcel, 8, this.f30226f, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
