package com.google.android.gms.internal.measurement;

import defpackage.cj;
import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
final class zzbx extends zzcd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30594c;
    public final int d;

    public /* synthetic */ zzbx(String str, int i2, int i3) {
        this.f30593b = str;
        this.f30594c = i2;
        this.d = i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final String a() {
        return this.f30593b;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final int b() {
        return this.f30594c;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final int c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzcd)) {
                return false;
            }
            zzcd zzcdVar = (zzcd) obj;
            if (!this.f30593b.equals(zzcdVar.a())) {
                return false;
            }
            int iB = zzcdVar.b();
            int i2 = this.f30594c;
            if (i2 == 0) {
                throw null;
            }
            if (i2 != iB) {
                return false;
            }
            int iC = zzcdVar.c();
            if (this.d == 0) {
                throw null;
            }
            if (iC != 1) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = this.f30593b.hashCode() ^ 1000003;
        int i2 = this.f30594c;
        if (i2 == 0) {
            throw null;
        }
        int i3 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i2;
        if (this.d != 0) {
            return (i3 * (-721379959)) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i2 = this.f30594c;
        if (i2 == 1) {
            str = "ALL_CHECKS";
        } else if (i2 == 2) {
            str = "SKIP_COMPLIANCE_CHECK";
        } else if (i2 != 3) {
            str = i2 != 4 ? "null" : "NO_CHECKS";
        } else {
            str = "SKIP_SECURITY_CHECK";
        }
        String str2 = this.d == 1 ? "READ_AND_WRITE" : "null";
        String str3 = this.f30593b;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + String.valueOf(str3).length() + 73 + 52 + 1);
        cj.C(sb, "FileComplianceOptions{fileOwner=", str3, ", hasDifferentDmaOwner=false, fileChecks=", str);
        return d21.p(sb, ", multipleProductIdGroupsResolver=null, filePurpose=", str2, "}");
    }
}
