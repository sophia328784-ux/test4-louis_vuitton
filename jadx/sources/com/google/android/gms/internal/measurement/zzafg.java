package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.pq0;
import defpackage.z81;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzafg implements zzafp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafc f30444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzafz f30445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f30446c;

    public zzafg(zzafz zzafzVar, zzafc zzafcVar) {
        zzadh zzadhVar = zzadi.f30400a;
        this.f30445b = zzafzVar;
        this.f30446c = zzafcVar instanceof zzadr;
        this.f30444a = zzafcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void a(Object obj, zzadb zzadbVar) {
        Iterator itB = ((zzadr) obj).zzb.b();
        while (itB.hasNext()) {
            Map.Entry entry = (Map.Entry) itB.next();
            zzadj zzadjVar = (zzadj) entry.getKey();
            if (zzadjVar.f0() != zzagn.zzi || zzadjVar.g0() || zzadjVar.h0()) {
                md.k("Found invalid MessageSet item.");
                return;
            }
            zzadbVar.t(zzadjVar.d0(), entry.getValue());
        }
        zzaga zzagaVar = ((zzadu) obj).zzc;
        for (int i2 = 0; i2 < zzagaVar.f30471a; i2++) {
            zzadbVar.t(zzagaVar.f30472b[i2] >>> 3, zzagaVar.f30473c[i2]);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void b(Object obj, byte[] bArr, int i2, int i3, zzacg zzacgVar) {
        zzadu zzaduVar = (zzadu) obj;
        if (zzaduVar.zzc == zzaga.f30470f) {
            zzaduVar.zzc = zzaga.a();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final int c(zzadu zzaduVar) {
        int iHashCode = zzaduVar.zzc.hashCode();
        return this.f30446c ? (iHashCode * 53) + ((zzadr) zzaduVar).zzb.f30402a.hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void d(Object obj, Object obj2) {
        zzafq.b(obj, obj2);
        if (this.f30446c) {
            zzadh zzadhVar = zzadi.f30400a;
            if (((zzadr) obj2).zzb.f30402a.isEmpty()) {
                return;
            }
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final Object d0() {
        zzafc zzafcVar = this.f30444a;
        return zzafcVar instanceof zzadu ? ((zzadu) zzafcVar).o() : zzafcVar.b().t();
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final int e(zzadu zzaduVar) {
        zzaga zzagaVar = zzaduVar.zzc;
        int iD = zzagaVar.d;
        if (iD == -1) {
            iD = 0;
            for (int i2 = 0; i2 < zzagaVar.f30471a; i2++) {
                int i3 = zzagaVar.f30472b[i2] >>> 3;
                zzacr zzacrVar = (zzacr) zzagaVar.f30473c[i2];
                int iB = zzada.b(8);
                int iB2 = zzada.b(i3) + zzada.b(16);
                int iB3 = zzada.b(24);
                int iF = zzacrVar.f();
                iD = pq0.D(iB + iB, iB2, z81.a(iF, iF, iB3), iD);
            }
            zzagaVar.d = iD;
        }
        if (!this.f30446c) {
            return iD;
        }
        zzafr zzafrVar = ((zzadr) zzaduVar).zzb.f30402a;
        int i4 = zzafrVar.f30465c;
        int iJ = 0;
        for (int i5 = 0; i5 < i4; i5++) {
            iJ += zzadk.j(zzafrVar.a(i5));
        }
        Iterator it = zzafrVar.c().iterator();
        while (it.hasNext()) {
            iJ += zzadk.j((Map.Entry) it.next());
        }
        return iD + iJ;
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final boolean f(Object obj) {
        return ((zzadr) obj).zzb.d();
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void g(Object obj) {
        ((zzagb) this.f30445b).getClass();
        zzaga zzagaVar = ((zzadu) obj).zzc;
        if (zzagaVar.f30474e) {
            zzagaVar.f30474e = false;
        }
        zzadh zzadhVar = zzadi.f30400a;
        ((zzadr) obj).zzb.a();
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final boolean h(zzadu zzaduVar, zzadu zzaduVar2) {
        if (!zzaduVar.zzc.equals(zzaduVar2.zzc)) {
            return false;
        }
        if (this.f30446c) {
            return ((zzadr) zzaduVar).zzb.equals(((zzadr) zzaduVar2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzafp
    public final void i(Object obj, zzacw zzacwVar, zzadf zzadfVar) {
        this.f30445b.a(obj);
        throw null;
    }
}
