package com.google.android.filament;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class Scene {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IndirectLight f28575b;

    public interface EntityProcessor {
    }

    private static native void nAddEntities(long j2, int[] iArr);

    private static native void nAddEntity(long j2, int i2);

    private static native void nRemove(long j2, int i2);

    private static native void nRemoveEntities(long j2, int[] iArr);

    private static native void nSetIndirectLight(long j2, long j3);

    private static native void nSetSkybox(long j2, long j3);

    public final void a(int[] iArr) {
        nAddEntities(c(), iArr);
    }

    public final void b(int i2) {
        nAddEntity(c(), i2);
    }

    public final long c() {
        long j2 = this.f28574a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed Scene");
        return 0L;
    }

    public final void d(int[] iArr) {
        nRemoveEntities(c(), iArr);
    }

    public final void e(int i2) {
        nRemove(c(), i2);
    }

    public final void f(IndirectLight indirectLight) {
        this.f28575b = indirectLight;
        long jC = c();
        IndirectLight indirectLight2 = this.f28575b;
        long j2 = 0;
        if (indirectLight2 != null) {
            long j3 = indirectLight2.f28549a;
            if (j3 == 0) {
                md.k("Calling method on destroyed IndirectLight");
                return;
            }
            j2 = j3;
        }
        nSetIndirectLight(jC, j2);
    }

    public final void g() {
        nSetSkybox(c(), 0L);
    }
}
