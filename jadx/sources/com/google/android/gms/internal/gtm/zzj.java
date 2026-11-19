package com.google.android.gms.internal.gtm;

import defpackage.fc;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
final class zzj extends zzp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30116c;
    public final int d;

    public /* synthetic */ zzj(String str, int i2, int i3) {
        this.f30115b = str;
        this.f30116c = i2;
        this.d = i3;
    }

    @Override // com.google.android.gms.internal.gtm.zzp
    public final String a() {
        return this.f30115b;
    }

    @Override // com.google.android.gms.internal.gtm.zzp
    public final int b() {
        return this.f30116c;
    }

    @Override // com.google.android.gms.internal.gtm.zzp
    public final int c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzp)) {
                return false;
            }
            zzp zzpVar = (zzp) obj;
            if (!this.f30115b.equals(zzpVar.a())) {
                return false;
            }
            int iB = zzpVar.b();
            int i2 = this.f30116c;
            if (i2 == 0) {
                throw null;
            }
            if (i2 != iB) {
                return false;
            }
            int iC = zzpVar.c();
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
        int iHashCode = this.f30115b.hashCode() ^ 1000003;
        int i2 = this.f30116c;
        if (i2 == 0) {
            throw null;
        }
        int i3 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i2;
        if (this.d != 0) {
            return (i3 * 583896283) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i2 = this.f30116c;
        if (i2 == 1) {
            str = "ALL_CHECKS";
        } else if (i2 == 2) {
            str = "SKIP_COMPLIANCE_CHECK";
        } else if (i2 != 3) {
            str = i2 != 4 ? "null" : "NO_CHECKS";
        } else {
            str = "SKIP_SECURITY_CHECK";
        }
        return n00.r(this.d == 1 ? "READ_AND_WRITE" : "null", "}", fc.s("FileComplianceOptions{fileOwner=", this.f30115b, ", hasDifferentDmaOwner=false, fileChecks=", str, ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose="));
    }
}
