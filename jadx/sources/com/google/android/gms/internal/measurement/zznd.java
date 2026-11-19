package com.google.android.gms.internal.measurement;

import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zznd {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zznd f30762c = new zznd(zzmw.f30752b, zzmq.H());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzmw f30763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzmq f30764b;

    public zznd(zzmw zzmwVar, zzmq zzmqVar) {
        zzmwVar.getClass();
        this.f30763a = zzmwVar;
        this.f30764b = zzmqVar;
    }

    public static zznd a(zzacv zzacvVar, boolean z) throws zzaeh {
        zzmw zzmwVarA;
        int iC = zzacvVar.C();
        if (iC > 1) {
            StringBuilder sb = new StringBuilder(String.valueOf(iC).length() + 44);
            sb.append("Unsupported version: ");
            sb.append(iC);
            sb.append(". Current version is: 1");
            throw new zzaeh(sb.toString());
        }
        zzacvVar.C();
        int iA = zzacvVar.a(zzacvVar.A());
        zzadf zzadfVar = zzadf.f30397b;
        int i2 = zzacf.f30358a;
        zzmq zzmqVarG = zzmq.G(zzacvVar, zzadf.f30398c);
        zzacvVar.b(iA);
        zzmu zzmuVar = new zzmu();
        Inflater inflater = zzmuVar.f30747b;
        try {
            if (z) {
                int iA2 = zzacvVar.a(zzacvVar.A());
                int iC2 = zzacvVar.c();
                try {
                    zzmwVarA = zzmw.a(zzacv.h(new InflaterInputStream(new zzms(zzmuVar, zzacvVar), inflater, iC2 < 0 ? 4096 : Math.min(iC2, 4096)), 4096));
                    inflater.reset();
                    if (zzacvVar.c() != 0) {
                        throw new zzaeh("Unexpected bytes remaining after FlagsBlob parsing.");
                    }
                    zzacvVar.b(iA2);
                } catch (Throwable th) {
                    inflater.reset();
                    throw th;
                }
            } else {
                inflater.setInput(zzacvVar.z());
                try {
                    zzmwVarA = zzmw.a(zzacv.h(new zzmr(zzmuVar), 4096));
                    inflater.reset();
                } catch (Throwable th2) {
                    inflater.reset();
                    throw th2;
                }
            }
            zzmuVar.close();
            return new zznd(zzmwVarA, zzmqVarG);
        } catch (Throwable th3) {
            try {
                zzmuVar.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }
}
