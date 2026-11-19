package com.google.android.filament;

/* JADX INFO: loaded from: classes2.dex */
public class EntityManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28541a;

    public static class Holder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EntityManager f28542a = new EntityManager();
    }

    public EntityManager() {
        this.f28541a = nGetEntityManager();
    }

    public static EntityManager c() {
        return Holder.f28542a;
    }

    private static native int nCreate(long j2);

    private static native void nDestroy(long j2, int i2);

    private static native long nGetEntityManager();

    public final int a() {
        return nCreate(this.f28541a);
    }

    public final void b(int i2) {
        nDestroy(this.f28541a, i2);
    }

    public long getNativeObject() {
        return this.f28541a;
    }

    public EntityManager(long j2) {
        nGetEntityManager();
        this.f28541a = j2;
    }
}
