package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzadp;
import com.google.android.gms.internal.measurement.zzadu;
import defpackage.md;
import defpackage.n91;
import defpackage.r81;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzadp<MessageType extends zzadu<MessageType, BuilderType>, BuilderType extends zzadp<MessageType, BuilderType>> extends zzaca<MessageType, BuilderType> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzadu f30405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzadu f30406c;

    public zzadp(zzadu zzaduVar) {
        this.f30405b = zzaduVar;
        if (zzaduVar.m()) {
            md.n("Default instance must be immutable.");
            throw null;
        }
        this.f30406c = zzaduVar.o();
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final boolean c() {
        return zzadu.x(this.f30406c, false);
    }

    public final /* bridge */ /* synthetic */ zzaca k(int i2, byte[] bArr) throws zzaeh {
        zzadf zzadfVar = zzadf.f30397b;
        int i3 = zzacf.f30358a;
        x(bArr, i2, zzadf.f30398c);
        return this;
    }

    public final void l() {
        if (this.f30406c.m()) {
            return;
        }
        zzadu zzaduVarO = this.f30405b.o();
        zzafl.f30448c.a(zzaduVarO.getClass()).d(zzaduVarO, this.f30406c);
        this.f30406c = zzaduVarO;
    }

    @Override // com.google.android.gms.internal.measurement.zzafb
    public final zzadu t() {
        boolean zM = this.f30406c.m();
        zzadu zzaduVar = this.f30406c;
        if (!zM) {
            return zzaduVar;
        }
        zzaduVar.p();
        return this.f30406c;
    }

    @Override // com.google.android.gms.internal.measurement.zzaca
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzadp j() {
        zzadp zzadpVar = (zzadp) this.f30405b.z(5);
        boolean zM = this.f30406c.m();
        zzadu zzaduVar = this.f30406c;
        if (zM) {
            zzaduVar.p();
            zzaduVar = this.f30406c;
        }
        zzadpVar.f30406c = zzaduVar;
        return zzadpVar;
    }

    public final zzadu v() {
        boolean zM = this.f30406c.m();
        zzadu zzaduVar = this.f30406c;
        if (zM) {
            zzaduVar.p();
            zzaduVar = this.f30406c;
        }
        zzaduVar.getClass();
        if (zzadu.x(zzaduVar, true)) {
            return zzaduVar;
        }
        throw new zzafy(zzaduVar);
    }

    public final void w(zzadu zzaduVar) {
        zzadu zzaduVar2 = this.f30405b;
        if (zzaduVar2.equals(zzaduVar)) {
            return;
        }
        if (!this.f30406c.m()) {
            zzadu zzaduVarO = zzaduVar2.o();
            zzafl.f30448c.a(zzaduVarO.getClass()).d(zzaduVarO, this.f30406c);
            this.f30406c = zzaduVarO;
        }
        zzadu zzaduVar3 = this.f30406c;
        zzafl.f30448c.a(zzaduVar3.getClass()).d(zzaduVar3, zzaduVar);
    }

    public final void x(byte[] bArr, int i2, zzadf zzadfVar) throws zzaeh {
        if (!this.f30406c.m()) {
            zzadu zzaduVarO = this.f30405b.o();
            zzafl.f30448c.a(zzaduVarO.getClass()).d(zzaduVarO, this.f30406c);
            this.f30406c = zzaduVarO;
        }
        try {
            zzafl.f30448c.a(this.f30406c.getClass()).b(this.f30406c, bArr, 0, i2, new zzacg(zzadfVar));
        } catch (zzaeh e2) {
            throw e2;
        } catch (IOException e3) {
            r81.g("Reading from byte array should not throw IOException.", e3);
        } catch (IndexOutOfBoundsException unused) {
            n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }
}
