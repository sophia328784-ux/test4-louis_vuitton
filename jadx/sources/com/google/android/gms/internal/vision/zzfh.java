package com.google.android.gms.internal.vision;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzfh extends zzfd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzfg f31166a = new zzfg();

    @Override // com.google.android.gms.internal.vision.zzfd
    public final void a(Exception exc) {
        exc.printStackTrace();
        zzfg zzfgVar = this.f31166a;
        ConcurrentHashMap concurrentHashMap = zzfgVar.f31164a;
        ReferenceQueue referenceQueue = zzfgVar.f31165b;
        for (Reference referencePoll = referenceQueue.poll(); referencePoll != null; referencePoll = referenceQueue.poll()) {
            concurrentHashMap.remove(referencePoll);
        }
        List<Throwable> list = (List) concurrentHashMap.get(new zzff(exc, null));
        if (list == null) {
            return;
        }
        synchronized (list) {
            try {
                for (Throwable th : list) {
                    System.err.print("Suppressed: ");
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
