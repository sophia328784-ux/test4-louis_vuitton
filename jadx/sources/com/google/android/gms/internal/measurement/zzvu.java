package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import defpackage.r81;
import java.util.ArrayList;
import java.util.UUID;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzvu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WeakHashMap f31024a = new WeakHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f31025b = new WeakHashMap();

    public static void a(Throwable th) {
        Throwable cause;
        zzxc zzxcVar;
        zzws zzwsVarE0;
        WeakHashMap weakHashMap = f31025b;
        synchronized (weakHashMap) {
            cause = th;
            while (cause != null) {
                try {
                    if (weakHashMap.containsKey(cause)) {
                        break;
                    } else {
                        cause = cause.getCause();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            weakHashMap.put(th, Boolean.valueOf(cause != null));
        }
        if (cause != null) {
            return;
        }
        WeakHashMap weakHashMap2 = f31024a;
        synchronized (weakHashMap2) {
            Throwable cause2 = th;
            while (cause2 != null) {
                try {
                    if (weakHashMap2.containsKey(cause2)) {
                        break;
                    } else {
                        cause2 = cause2.getCause();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            if (cause2 == null) {
                zzxcVar = null;
            } else {
                weakHashMap2.put(th, (zzww) weakHashMap2.get(cause2));
                zzxcVar = new zzxc();
            }
        }
        if (zzxcVar != null || (zzwsVarE0 = zzvy.c().f31057b) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (zzwsVarE0 = zzvy.c().f31057b; zzwsVarE0 != null; zzwsVarE0 = zzwsVarE0.e0()) {
            arrayList.add(zzwsVarE0);
        }
        zzvo zzvoVar = new zzvo();
        UUID uuidF0 = ((zzws) arrayList.get(0)).f0();
        if (uuidF0 == null) {
            r81.d("Null rootTraceId");
            return;
        }
        zzvoVar.f31019c = uuidF0;
        ((zzws) arrayList.get(0)).getClass();
        zzvoVar.d = -1L;
        zzvoVar.f31020e = (byte) 1;
        ImmutableList.Builder builderR = ImmutableList.r(arrayList.size());
        ImmutableList.Builder builderR2 = ImmutableList.r(arrayList.size());
        for (zzws zzwsVar : Lists.c(arrayList)) {
            builderR2.e(zzwsVar.h0());
            builderR.e(zzwsVar.K());
        }
        WeakHashMap weakHashMap3 = f31024a;
        synchronized (weakHashMap3) {
            try {
                ImmutableList immutableListJ = builderR2.j();
                if (immutableListJ == null) {
                    throw new NullPointerException("Null spansNames");
                }
                zzvoVar.f31017a = immutableListJ;
                ImmutableList immutableListJ2 = builderR.j();
                if (immutableListJ2 == null) {
                    throw new NullPointerException("Null extras");
                }
                zzvoVar.f31018b = immutableListJ2;
                weakHashMap3.put(th, zzvoVar.a());
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }
}
