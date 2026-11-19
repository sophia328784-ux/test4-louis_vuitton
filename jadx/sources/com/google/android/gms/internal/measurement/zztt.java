package com.google.android.gms.internal.measurement;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AsyncFunction;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class zztt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f30942a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f30943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzru f30944c;
    public final AsyncFunction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f30945e;

    public zztt(Executor executor, zzru zzruVar, HashMap map) {
        executor.getClass();
        this.f30943b = executor;
        zzruVar.getClass();
        this.f30944c = zzruVar;
        map.getClass();
        this.f30945e = map;
        Preconditions.g(!map.isEmpty());
        this.d = zzts.f30941a;
    }
}
