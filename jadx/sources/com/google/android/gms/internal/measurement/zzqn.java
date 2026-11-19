package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class zzqn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f30836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f30837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzacr f30838c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f30839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f30840f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f30841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f30842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f30843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zznf f30844k;

    public zzqn(boolean z, List list, zzacr zzacrVar, String str, String str2, List list2, List list3, boolean z2, boolean z3, boolean z4, zznf zznfVar) {
        list.getClass();
        zzacrVar.getClass();
        str.getClass();
        str2.getClass();
        list2.getClass();
        list3.getClass();
        zznfVar.getClass();
        this.f30836a = z;
        this.f30837b = list;
        this.f30838c = zzacrVar;
        this.d = str;
        this.f30839e = str2;
        this.f30840f = list2;
        this.g = list3;
        this.f30841h = z2;
        this.f30842i = z3;
        this.f30843j = z4;
        this.f30844k = zznfVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzqn)) {
            return false;
        }
        zzqn zzqnVar = (zzqn) obj;
        return this.f30836a == zzqnVar.f30836a && Intrinsics.c(this.f30837b, zzqnVar.f30837b) && Intrinsics.c(this.f30838c, zzqnVar.f30838c) && Intrinsics.c(this.d, zzqnVar.d) && Intrinsics.c(this.f30839e, zzqnVar.f30839e) && Intrinsics.c(this.f30840f, zzqnVar.f30840f) && Intrinsics.c(this.g, zzqnVar.g) && this.f30841h == zzqnVar.f30841h && this.f30842i == zzqnVar.f30842i && this.f30843j == zzqnVar.f30843j && Intrinsics.c(this.f30844k, zzqnVar.f30844k);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f30836a), this.f30837b, this.f30838c, this.d, this.f30839e, this.f30840f, this.g, Boolean.valueOf(this.f30841h), Boolean.valueOf(this.f30842i), Boolean.valueOf(this.f30843j));
    }

    public final String toString() {
        boolean z = this.f30836a;
        int length = String.valueOf(z).length();
        List list = this.f30837b;
        int length2 = String.valueOf(list).length();
        zzacr zzacrVar = this.f30838c;
        int length3 = String.valueOf(zzacrVar).length();
        String str = this.d;
        int length4 = String.valueOf(str).length();
        String str2 = this.f30839e;
        int length5 = String.valueOf(str2).length();
        List list2 = this.f30840f;
        int length6 = String.valueOf(list2).length();
        List list3 = this.g;
        int length7 = String.valueOf(list3).length();
        boolean z2 = this.f30841h;
        int length8 = String.valueOf(z2).length();
        boolean z3 = this.f30842i;
        int length9 = String.valueOf(z3).length();
        boolean z4 = this.f30843j;
        int length10 = String.valueOf(z4).length();
        zznf zznfVar = this.f30844k;
        StringBuilder sb = new StringBuilder(length + 59 + length2 + 9 + length3 + 10 + length4 + 17 + length5 + 30 + length6 + 30 + length7 + 24 + length8 + 26 + length9 + 20 + length10 + 14 + String.valueOf(zznfVar).length() + 1);
        sb.append("SharedStorageInfo(shouldUseSharedStorage=");
        sb.append(z);
        sb.append(", enabledBackings=");
        sb.append(list);
        sb.append(", secret=");
        sb.append(zzacrVar);
        sb.append(", dirPath=");
        sb.append(str);
        sb.append(", gmsCoreDirPath=");
        sb.append(str2);
        sb.append(", includeStaticConfigPackages=");
        sb.append(list2);
        sb.append(", excludeStaticConfigPackages=");
        sb.append(list3);
        sb.append(", hasStorageInfoFromGms=");
        sb.append(z2);
        sb.append(", allowEmptySnapshotToken=");
        sb.append(z3);
        sb.append(", enableCommitV2Api=");
        sb.append(z4);
        sb.append(", clientFlags=");
        sb.append(zznfVar);
        sb.append(")");
        return sb.toString();
    }
}
