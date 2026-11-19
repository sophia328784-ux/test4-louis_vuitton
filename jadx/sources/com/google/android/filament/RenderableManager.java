package com.google.android.filament;

import defpackage.md;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class RenderableManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28565a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28567b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28568a;

            public BuilderFinalizer(long j2) {
                this.f28568a = j2;
            }

            public final void finalize() {
                long j2 = this.f28568a;
                try {
                    super.finalize();
                    RenderableManager.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    RenderableManager.nDestroyBuilder(j2);
                }
            }
        }

        public Builder(int i2) {
            long jNCreateBuilder = RenderableManager.nCreateBuilder(i2);
            this.f28567b = jNCreateBuilder;
            this.f28566a = new BuilderFinalizer(jNCreateBuilder);
        }

        public final void a(Engine engine, int i2) {
            if (RenderableManager.b(i2, this.f28567b, engine.getNativeObject())) {
                return;
            }
            md.k(n00.m(i2, "Couldn't create Renderable component for entity ", ", see log."));
        }
    }

    public enum PrimitiveType {
        POINTS(0),
        LINES(1),
        LINE_STRIP(3),
        TRIANGLES(4),
        TRIANGLE_STRIP(5);

        private final int mType;

        PrimitiveType(int i2) {
            this.mType = i2;
        }

        public final int a() {
            return this.mType;
        }
    }

    static {
        VertexBuffer.VertexAttribute.values();
    }

    public static /* bridge */ /* synthetic */ boolean b(int i2, long j2, long j3) {
        return nBuilderBuild(j2, j3, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderBoundingBox(long j2, float f2, float f3, float f4, float f5, float f6, float f7);

    private static native boolean nBuilderBuild(long j2, long j3, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderCastShadows(long j2, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderCulling(long j2, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderGeometry(long j2, int i2, int i3, long j3, long j4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderGeometry(long j2, int i2, int i3, long j3, long j4, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderMaterial(long j2, int i2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nBuilderReceiveShadows(long j2, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native int nGetInstance(long j2, int i2);

    private static native long nGetMaterialInstanceAt(long j2, int i2, int i3);

    private static native boolean nHasComponent(long j2, int i2);

    private static native void nSetScreenSpaceContactShadows(long j2, int i2, boolean z);

    public final int k(int i2) {
        return nGetInstance(this.f28565a, i2);
    }

    public final MaterialInstance l(int i2) {
        return new MaterialInstance(nGetMaterialInstanceAt(this.f28565a, i2, 0));
    }

    public final boolean m(int i2) {
        return nHasComponent(this.f28565a, i2);
    }

    public final void n(int i2) {
        nSetScreenSpaceContactShadows(this.f28565a, i2, true);
    }
}
