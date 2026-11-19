package com.google.android.gms.internal.measurement;

import defpackage.cj;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class zzvd extends zzve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafc f30999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzadf f31000b;

    public zzvd(zzafc zzafcVar, zzadf zzadfVar) {
        this.f30999a = zzafcVar;
        if (zzadfVar != null) {
            this.f31000b = zzadfVar;
        } else {
            r81.d("Null extensionRegistryLite");
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzve
    public final zzafc a() {
        return this.f30999a;
    }

    @Override // com.google.android.gms.internal.measurement.zzve
    public final zzadf b() {
        return this.f31000b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzve)) {
            return false;
        }
        zzve zzveVar = (zzve) obj;
        return this.f30999a.equals(zzveVar.a()) && this.f31000b.equals(zzveVar.b());
    }

    public final int hashCode() {
        return this.f31000b.hashCode() ^ ((this.f30999a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        String string = this.f30999a.toString();
        int length = string.length();
        String string2 = this.f31000b.toString();
        StringBuilder sb = new StringBuilder(length + 53 + string2.length() + 1);
        cj.C(sb, "ProtoSerializer{defaultValue=", string, ", extensionRegistryLite=", string2);
        sb.append("}");
        return sb.toString();
    }
}
