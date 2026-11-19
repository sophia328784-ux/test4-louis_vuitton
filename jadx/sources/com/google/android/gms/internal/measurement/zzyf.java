package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzyf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f31088a = new ConcurrentHashMap();

    public abstract Object a();

    public final Object b(zzyd zzydVar, zzzj zzzjVar) {
        ConcurrentHashMap concurrentHashMap = this.f31088a;
        Object obj = concurrentHashMap.get(zzydVar);
        if (obj != null) {
            return obj;
        }
        Object objA = a();
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(zzydVar, objA);
        if (objPutIfAbsent != null) {
            return objPutIfAbsent;
        }
        int iA = zzzjVar.a();
        for (int i2 = 0; i2 < iA; i2++) {
            if (zzxx.f31073f.equals(zzzjVar.b(i2))) {
                zzzjVar.c(i2);
            }
        }
        return objA;
    }
}
