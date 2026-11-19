package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzadf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile zzadf f30397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzadf f30398c = new zzadf();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f30399a = Collections.EMPTY_MAP;

    public static zzadf a() {
        zzadf zzadfVar = f30397b;
        if (zzadfVar != null) {
            return zzadfVar;
        }
        synchronized (zzadf.class) {
            try {
                zzadf zzadfVar2 = f30397b;
                if (zzadfVar2 != null) {
                    return zzadfVar2;
                }
                int i2 = zzacf.f30358a;
                zzadf zzadfVarB = zzadn.b();
                f30397b = zzadfVarB;
                return zzadfVarB;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
