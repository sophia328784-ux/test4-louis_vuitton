package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzou implements zzqc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzou f30788a = new zzou();

    /* JADX WARN: Code duplicated, block: B:39:0x0069 A[Catch: all -> 0x0067, TryCatch #0 {all -> 0x0067, blocks: (B:25:0x004c, B:27:0x0050, B:29:0x0054, B:34:0x005e, B:39:0x0069, B:40:0x0073), top: B:47:0x004c }] */
    @Override // com.google.android.gms.internal.measurement.zzqc
    public final boolean a(zzaef zzaefVar) {
        zzpe zzpeVar = zzpg.f30798i;
        zzpeVar.getClass();
        if (zzaefVar == null || zzaefVar.isEmpty()) {
            return false;
        }
        Iterator<E> it = zzaefVar.iterator();
        boolean z = false;
        while (it.hasNext()) {
            zzoo zzooVar = (zzoo) zzpeVar.f30796a.get((String) it.next());
            if (zzooVar != null) {
                zzpg zzpgVar = zzooVar.f30786a;
                boolean z2 = true;
                if (zzpgVar.f30803e) {
                    zzqs zzqsVar = zzpgVar.f30800a;
                    if (zzqsVar != null && (zzqsVar.f30848a || zzqsVar.f30851e.f30846a == 3 || zzpgVar.f30805h.b())) {
                        synchronized (zzpgVar) {
                            try {
                                zzqs zzqsVar2 = zzpgVar.f30800a;
                                if (zzqsVar2 != null) {
                                    if (zzqsVar2.f30848a) {
                                        zzpgVar.f30800a = null;
                                        zzpgVar.g.f30815a.incrementAndGet();
                                    } else {
                                        if (zzqsVar2.f30851e.f30846a != 3) {
                                            z2 = false;
                                        }
                                        if (z2 || zzpgVar.f30805h.b()) {
                                            zzpgVar.f30800a = null;
                                            zzpgVar.g.f30815a.incrementAndGet();
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    z2 = false;
                }
                z |= z2;
            }
        }
        return z;
    }
}
