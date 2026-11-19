package com.google.android.gms.internal.measurement;

import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzvx extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        zzrn.a(Thread.currentThread());
        zzwq zzwqVar = new zzwq();
        zzwqVar.f31056a = false;
        zzwqVar.f31057b = null;
        Thread threadCurrentThread = Thread.currentThread();
        WeakHashMap weakHashMap = zzvy.f31027b;
        synchronized (weakHashMap) {
            weakHashMap.put(threadCurrentThread, zzwqVar);
        }
        return zzwqVar;
    }
}
