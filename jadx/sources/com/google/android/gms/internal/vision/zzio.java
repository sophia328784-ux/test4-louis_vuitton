package com.google.android.gms.internal.vision;

import defpackage.r81;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class zzio {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile zzio f31203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile zzio f31204c;
    public static final zzio d = new zzio();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f31205a = Collections.EMPTY_MAP;

    public static final class zza {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f31206a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f31207b;

        public zza(zzkk zzkkVar, int i2) {
            this.f31206a = zzkkVar;
            this.f31207b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.f31206a == zzaVar.f31206a && this.f31207b == zzaVar.f31207b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f31206a) * 65535) + this.f31207b;
        }
    }

    public static zzio b() {
        zzio zzioVar;
        zzio zzioVar2 = f31203b;
        if (zzioVar2 != null) {
            return zzioVar2;
        }
        synchronized (zzio.class) {
            try {
                zzioVar = f31203b;
                if (zzioVar == null) {
                    zzioVar = d;
                    f31203b = zzioVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzioVar;
    }

    public static zzio c() {
        zzio zzioVar = f31204c;
        if (zzioVar != null) {
            return zzioVar;
        }
        synchronized (zzio.class) {
            try {
                zzio zzioVar2 = f31204c;
                if (zzioVar2 != null) {
                    return zzioVar2;
                }
                zzio zzioVarA = zziz.a();
                f31204c = zzioVarA;
                return zzioVarA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(zzkk zzkkVar, int i2) {
        if (this.f31205a.get(new zza(zzkkVar, i2)) == null) {
            return;
        }
        r81.h();
    }
}
