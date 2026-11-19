package com.google.android.filament;

import android.opengl.EGLContext;
import android.view.Surface;
import defpackage.az;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class Engine {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f28533f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TransformManager f28535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LightManager f28536c;
    public final RenderableManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EntityManager f28537e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Backend {
        private static final /* synthetic */ Backend[] $VALUES;
        public static final Backend DEFAULT;
        public static final Backend METAL;
        public static final Backend NOOP;
        public static final Backend OPENGL;
        public static final Backend VULKAN;
        public static final Backend WEBGPU;

        static {
            Backend backend = new Backend("DEFAULT", 0);
            DEFAULT = backend;
            Backend backend2 = new Backend("OPENGL", 1);
            OPENGL = backend2;
            Backend backend3 = new Backend("VULKAN", 2);
            VULKAN = backend3;
            Backend backend4 = new Backend("METAL", 3);
            METAL = backend4;
            Backend backend5 = new Backend("WEBGPU", 4);
            WEBGPU = backend5;
            Backend backend6 = new Backend("NOOP", 5);
            NOOP = backend6;
            $VALUES = new Backend[]{backend, backend2, backend3, backend4, backend5, backend6};
        }

        public static Backend valueOf(String str) {
            return (Backend) Enum.valueOf(Backend.class, str);
        }

        public static Backend[] values() {
            return (Backend[]) $VALUES.clone();
        }
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderFinalizer f28538a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f28539b;

        public static class BuilderFinalizer {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f28540a;

            public BuilderFinalizer(long j2) {
                this.f28540a = j2;
            }

            public final void finalize() {
                long j2 = this.f28540a;
                try {
                    super.finalize();
                    Engine.nDestroyBuilder(j2);
                } catch (Throwable unused) {
                    Engine.nDestroyBuilder(j2);
                }
            }
        }

        public Builder() {
            long jNCreateBuilder = Engine.nCreateBuilder();
            this.f28539b = jNCreateBuilder;
            this.f28538a = new BuilderFinalizer(jNCreateBuilder);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FeatureLevel {
        private static final /* synthetic */ FeatureLevel[] $VALUES;
        public static final FeatureLevel FEATURE_LEVEL_0;
        public static final FeatureLevel FEATURE_LEVEL_1;
        public static final FeatureLevel FEATURE_LEVEL_2;
        public static final FeatureLevel FEATURE_LEVEL_3;

        static {
            FeatureLevel featureLevel = new FeatureLevel("FEATURE_LEVEL_0", 0);
            FEATURE_LEVEL_0 = featureLevel;
            FeatureLevel featureLevel2 = new FeatureLevel("FEATURE_LEVEL_1", 1);
            FEATURE_LEVEL_1 = featureLevel2;
            FeatureLevel featureLevel3 = new FeatureLevel("FEATURE_LEVEL_2", 2);
            FEATURE_LEVEL_2 = featureLevel3;
            FeatureLevel featureLevel4 = new FeatureLevel("FEATURE_LEVEL_3", 3);
            FEATURE_LEVEL_3 = featureLevel4;
            $VALUES = new FeatureLevel[]{featureLevel, featureLevel2, featureLevel3, featureLevel4};
        }

        public static FeatureLevel valueOf(String str) {
            return (FeatureLevel) Enum.valueOf(FeatureLevel.class, str);
        }

        public static FeatureLevel[] values() {
            return (FeatureLevel[]) $VALUES.clone();
        }
    }

    static {
        Backend.values();
        FeatureLevel.values();
    }

    public Engine(long j2) {
        this.f28534a = j2;
        long jNGetTransformManager = nGetTransformManager(j2);
        TransformManager transformManager = new TransformManager();
        transformManager.f28593a = jNGetTransformManager;
        this.f28535b = transformManager;
        long jNGetLightManager = nGetLightManager(j2);
        LightManager lightManager = new LightManager();
        lightManager.f28553a = jNGetLightManager;
        this.f28536c = lightManager;
        long jNGetRenderableManager = nGetRenderableManager(j2);
        RenderableManager renderableManager = new RenderableManager();
        renderableManager.f28565a = jNGetRenderableManager;
        this.d = renderableManager;
        this.f28537e = new EntityManager(nGetEntityManager(j2));
    }

    public static void d(boolean z) {
        if (z) {
            return;
        }
        md.k("Object couldn't be destroyed (double destroy()?)");
    }

    public static Engine e(EGLContext eGLContext) {
        Builder builder = new Builder();
        if (!Platform.a().c(eGLContext)) {
            az.m(eGLContext, "Invalid shared context ");
            return null;
        }
        long jB = Platform.a().b(eGLContext);
        long j2 = builder.f28539b;
        nSetBuilderSharedContext(j2, jB);
        long jNBuilderBuild = nBuilderBuild(j2);
        if (jNBuilderBuild != 0) {
            return new Engine(jNBuilderBuild);
        }
        md.k("Couldn't create Engine");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nBuilderBuild(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateBuilder();

    private static native long nCreateCamera(long j2, int i2);

    private static native long nCreateFence(long j2);

    private static native long nCreateRenderer(long j2);

    private static native long nCreateScene(long j2);

    private static native long nCreateSwapChain(long j2, Object obj, long j3);

    private static native long nCreateView(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyBuilder(long j2);

    private static native void nDestroyCameraComponent(long j2, int i2);

    private static native void nDestroyEngine(long j2);

    private static native void nDestroyEntity(long j2, int i2);

    private static native boolean nDestroyFence(long j2, long j3);

    private static native boolean nDestroyIndexBuffer(long j2, long j3);

    private static native boolean nDestroyMaterial(long j2, long j3);

    private static native boolean nDestroyMaterialInstance(long j2, long j3);

    private static native boolean nDestroyRenderer(long j2, long j3);

    private static native boolean nDestroyScene(long j2, long j3);

    private static native boolean nDestroySwapChain(long j2, long j3);

    private static native boolean nDestroyTexture(long j2, long j3);

    private static native boolean nDestroyVertexBuffer(long j2, long j3);

    private static native boolean nDestroyView(long j2, long j3);

    private static native boolean nFlushAndWait(long j2, long j3);

    private static native long nGetEntityManager(long j2);

    private static native long nGetJobSystem(long j2);

    private static native long nGetLightManager(long j2);

    private static native long nGetRenderableManager(long j2);

    private static native long nGetTransformManager(long j2);

    private static native void nSetBuilderSharedContext(long j2, long j3);

    public final Camera f(int i2) {
        long jNCreateCamera = nCreateCamera(getNativeObject(), i2);
        if (jNCreateCamera != 0) {
            return new Camera(jNCreateCamera, i2);
        }
        md.k("Couldn't create Camera");
        return null;
    }

    public final Fence g() {
        long jNCreateFence = nCreateFence(getNativeObject());
        if (jNCreateFence == 0) {
            md.k("Couldn't create Fence");
            return null;
        }
        Fence fence = new Fence();
        fence.f28543a = jNCreateFence;
        return fence;
    }

    public long getNativeJobSystem() {
        if (this.f28534a != 0) {
            return nGetJobSystem(getNativeObject());
        }
        md.k("Calling method on destroyed Engine");
        return 0L;
    }

    public long getNativeObject() {
        long j2 = this.f28534a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed Engine");
        return 0L;
    }

    public final Renderer h() {
        long jNCreateRenderer = nCreateRenderer(getNativeObject());
        if (jNCreateRenderer == 0) {
            md.k("Couldn't create Renderer");
            return null;
        }
        Renderer renderer = new Renderer();
        renderer.f28569a = jNCreateRenderer;
        return renderer;
    }

    public final Scene i() {
        long jNCreateScene = nCreateScene(getNativeObject());
        if (jNCreateScene == 0) {
            md.k("Couldn't create Scene");
            return null;
        }
        Scene scene = new Scene();
        scene.f28574a = jNCreateScene;
        return scene;
    }

    public final SwapChain j(Surface surface) {
        if (!Platform.a().d(surface)) {
            az.m(surface, "Invalid surface ");
            return null;
        }
        long jNCreateSwapChain = nCreateSwapChain(getNativeObject(), surface, 0L);
        if (jNCreateSwapChain != 0) {
            return new SwapChain(jNCreateSwapChain, surface);
        }
        md.k("Couldn't create SwapChain");
        return null;
    }

    public final View k() {
        long jNCreateView = nCreateView(getNativeObject());
        if (jNCreateView == 0) {
            md.k("Couldn't create View");
            return null;
        }
        View view = new View();
        view.f28599b = new Viewport(0, 0, 0, 0);
        view.f28598a = jNCreateView;
        return view;
    }

    public final void l() {
        nDestroyEngine(getNativeObject());
        this.f28534a = 0L;
    }

    public final void m(int i2) {
        nDestroyCameraComponent(getNativeObject(), i2);
    }

    public final void n(int i2) {
        nDestroyEntity(getNativeObject(), i2);
    }

    public final void o(Fence fence) {
        long nativeObject = getNativeObject();
        long j2 = fence.f28543a;
        if (j2 == 0) {
            md.k("Calling method on destroyed Fence");
        } else {
            d(nDestroyFence(nativeObject, j2));
            fence.f28543a = 0L;
        }
    }

    public final void p(IndexBuffer indexBuffer) {
        d(nDestroyIndexBuffer(getNativeObject(), indexBuffer.f()));
        indexBuffer.f28545a = 0L;
    }

    public final void q(Material material) {
        d(nDestroyMaterial(getNativeObject(), material.c()));
        material.f28557a = 0L;
    }

    public final void r(MaterialInstance materialInstance) {
        d(nDestroyMaterialInstance(getNativeObject(), materialInstance.a()));
        materialInstance.f28563a = 0L;
    }

    public final void s(Renderer renderer) {
        d(nDestroyRenderer(getNativeObject(), renderer.c()));
        renderer.f28569a = 0L;
    }

    public final void t(Scene scene) {
        d(nDestroyScene(getNativeObject(), scene.c()));
        scene.f28574a = 0L;
    }

    public final void u(SwapChain swapChain) {
        long nativeObject = getNativeObject();
        long j2 = swapChain.f28577b;
        if (j2 == 0) {
            md.k("Calling method on destroyed SwapChain");
        } else {
            d(nDestroySwapChain(nativeObject, j2));
            swapChain.f28577b = 0L;
        }
    }

    public final void v(Texture texture) {
        d(nDestroyTexture(getNativeObject(), texture.getNativeObject()));
        texture.f28578a = 0L;
    }

    public final void w(VertexBuffer vertexBuffer) {
        d(nDestroyVertexBuffer(getNativeObject(), vertexBuffer.g()));
        vertexBuffer.f28594a = 0L;
    }

    public final void x(View view) {
        d(nDestroyView(getNativeObject(), view.a()));
        view.f28598a = 0L;
    }

    public final void y() {
        nFlushAndWait(getNativeObject(), -1L);
    }
}
