package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import com.google.android.filament.Camera;
import com.google.android.filament.Colors;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.Fence;
import com.google.android.filament.LightManager;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Renderer;
import com.google.android.filament.Scene;
import com.google.android.filament.SwapChain;
import com.google.android.filament.Viewport;
import com.google.android.filament.android.DisplayHelper;
import com.google.android.filament.android.UiHelper;
import com.google.android.filament.gltfio.AssetLoader;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.android.filament.gltfio.ResourceLoader;
import com.google.android.filament.gltfio.UbershaderProvider;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.GestureDetector;
import com.google.android.filament.utils.Manipulator;
import defpackage.b21;
import defpackage.md;
import defpackage.n00;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B1\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\fB1\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;", "Landroid/view/View$OnTouchListener;", "Lcom/google/android/filament/Engine;", "engine", "Lcom/google/android/filament/android/UiHelper;", "uiHelper", "<init>", "(Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;)V", "Landroid/view/SurfaceView;", "surfaceView", "Lcom/google/android/filament/utils/Manipulator;", "manipulator", "(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V", "Landroid/view/TextureView;", "textureView", "(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V", "SurfaceCallback", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ModelViewer implements View.OnTouchListener {
    public static final Float3 z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Engine f58516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UiHelper f58517c;
    public FilamentAsset d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f58518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f58519f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Scene f58520h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.google.android.filament.View f58521i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Camera f58522j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Renderer f58523k;
    public final int l;
    public final DisplayHelper m;
    public final Manipulator n;
    public final GestureDetector o;
    public final SurfaceView p;
    public final TextureView q;
    public SwapChain r;
    public final AssetLoader s;
    public final UbershaderProvider t;
    public final ResourceLoader u;
    public final int[] v;
    public final double[] w;
    public final double[] x;
    public final double[] y;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$Companion;", "", "Lcom/google/android/filament/utils/Float3;", "kDefaultObjectPosition", "Lcom/google/android/filament/utils/Float3;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;", "Lcom/google/android/filament/android/UiHelper$RendererCallback;", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class SurfaceCallback implements UiHelper.RendererCallback {
        public SurfaceCallback() {
        }

        @Override // com.google.android.filament.android.UiHelper.RendererCallback
        public final void a(Surface surface) {
            surface.getClass();
            ModelViewer modelViewer = ModelViewer.this;
            SwapChain swapChain = modelViewer.r;
            Renderer renderer = modelViewer.f58523k;
            DisplayHelper displayHelper = modelViewer.m;
            Engine engine = modelViewer.f58516b;
            if (swapChain != null) {
                engine.u(swapChain);
            }
            modelViewer.r = engine.j(surface);
            SurfaceView surfaceView = modelViewer.p;
            if (surfaceView != null) {
                if (displayHelper == null) {
                    Intrinsics.h("displayHelper");
                    throw null;
                }
                displayHelper.a(renderer, surfaceView.getDisplay());
            }
            TextureView textureView = modelViewer.q;
            if (textureView != null) {
                if (displayHelper != null) {
                    displayHelper.a(renderer, textureView.getDisplay());
                } else {
                    Intrinsics.h("displayHelper");
                    throw null;
                }
            }
        }

        @Override // com.google.android.filament.android.UiHelper.RendererCallback
        public final void b(int i2, int i3) {
            ModelViewer modelViewer = ModelViewer.this;
            modelViewer.f58521i.j(new Viewport(0, 0, i2, i3));
            Manipulator manipulator = modelViewer.n;
            if (manipulator == null) {
                Intrinsics.h("cameraManipulator");
                throw null;
            }
            manipulator.l(i2, i3);
            Viewport viewport = modelViewer.f58521i.f28599b;
            modelViewer.f58522j.e(modelViewer.f58518e, ((double) viewport.f28610c) / ((double) viewport.d), modelViewer.f58519f, modelViewer.g);
            Engine engine = modelViewer.f58516b;
            Fence fenceG = engine.g();
            fenceG.a(Fence.Mode.FLUSH);
            engine.o(fenceG);
        }

        @Override // com.google.android.filament.android.UiHelper.RendererCallback
        public final void c() {
            ModelViewer modelViewer = ModelViewer.this;
            DisplayHelper displayHelper = modelViewer.m;
            if (displayHelper == null) {
                Intrinsics.h("displayHelper");
                throw null;
            }
            displayHelper.b();
            SwapChain swapChain = modelViewer.r;
            if (swapChain != null) {
                modelViewer.f58516b.u(swapChain);
                modelViewer.f58516b.y();
                modelViewer.r = null;
            }
        }
    }

    static {
        new Companion(null);
        z = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -4.0f);
    }

    public ModelViewer(Engine engine, UiHelper uiHelper) {
        engine.getClass();
        uiHelper.getClass();
        this.f58516b = engine;
        this.f58517c = uiHelper;
        this.f58518e = 28.0f;
        this.f58519f = 0.05f;
        this.g = 100.0f;
        Scene sceneI = engine.i();
        this.f58520h = sceneI;
        com.google.android.filament.View viewK = engine.k();
        this.f58521i = viewK;
        Camera cameraF = engine.f(engine.f28537e.a());
        cameraF.d(16.0f, 0.008f, 100.0f);
        this.f58522j = cameraF;
        this.f58523k = engine.h();
        this.v = new int[128];
        this.w = new double[3];
        this.x = new double[3];
        this.y = new double[3];
        viewK.i(sceneI);
        viewK.f(cameraF);
        UbershaderProvider ubershaderProvider = new UbershaderProvider(engine);
        this.t = ubershaderProvider;
        this.s = new AssetLoader(engine, ubershaderProvider, EntityManager.c());
        this.u = new ResourceLoader(engine, true);
        int iA = EntityManager.c().a();
        this.l = iA;
        float[] fArrA = Colors.a();
        float f2 = fArrA[0];
        float f3 = fArrA[1];
        float f4 = fArrA[2];
        LightManager.Builder builder = new LightManager.Builder(LightManager.Type.DIRECTIONAL);
        long j2 = builder.f28555b;
        LightManager.nBuilderColor(j2, f2, f3, f4);
        LightManager.nBuilderIntensity(j2, 100000.0f);
        LightManager.nBuilderDirection(j2, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        LightManager.nBuilderCastShadows(j2, true);
        builder.a(engine, iA);
        sceneI.b(iA);
    }

    public final void a() {
        this.f58517c.d();
        b();
        this.s.b();
        UbershaderProvider ubershaderProvider = this.t;
        ubershaderProvider.b();
        ubershaderProvider.a();
        this.u.e();
        Engine engine = this.f58516b;
        int i2 = this.l;
        engine.n(i2);
        engine.s(this.f58523k);
        engine.x(this.f58521i);
        engine.t(this.f58520h);
        Camera camera = this.f58522j;
        engine.m(camera.f28528b);
        EntityManager.c().b(camera.f28528b);
        EntityManager.c().b(i2);
        engine.l();
    }

    public final void b() {
        ResourceLoader resourceLoader = this.u;
        resourceLoader.c();
        resourceLoader.f();
        FilamentAsset filamentAsset = this.d;
        if (filamentAsset != null) {
            this.f58520h.d(filamentAsset.a());
            this.s.c(filamentAsset);
            this.d = null;
        }
    }

    public final void c(ByteBuffer byteBuffer, Function1 function1) {
        byteBuffer.getClass();
        b();
        FilamentAsset filamentAssetA = this.s.a(byteBuffer);
        this.d = filamentAssetA;
        filamentAssetA.getClass();
        HashMap map = new HashMap();
        for (String str : filamentAssetA.e()) {
            str.getClass();
            map.put(str, function1.invoke(str));
        }
        Iterator it = map.entrySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            ResourceLoader resourceLoader = this.u;
            if (!zHasNext) {
                resourceLoader.b(filamentAssetA);
                filamentAssetA.c().a();
                filamentAssetA.h();
                return;
            }
            Map.Entry entry = (Map.Entry) it.next();
            resourceLoader.a((String) entry.getKey(), (Buffer) entry.getValue());
        }
    }

    public final void d(long j2) {
        Collection collectionO;
        if (this.f58517c.f28620c) {
            this.u.d();
            FilamentAsset filamentAsset = this.d;
            if (filamentAsset != null) {
                RenderableManager renderableManager = this.f58516b.d;
                renderableManager.getClass();
                Ref$IntRef ref$IntRef = new Ref$IntRef();
                while (true) {
                    int[] iArr = this.v;
                    int iG = filamentAsset.g(iArr);
                    ref$IntRef.f71919b = iG;
                    boolean z2 = iG != 0;
                    Scene scene = this.f58520h;
                    if (!z2) {
                        scene.a(filamentAsset.d());
                        break;
                    }
                    int i2 = ref$IntRef.f71919b;
                    for (int i3 = 0; i3 < i2; i3++) {
                        renderableManager.n(renderableManager.k(iArr[i3]));
                    }
                    int i4 = ref$IntRef.f71919b;
                    iArr.getClass();
                    if (i4 < 0) {
                        b21.n(n00.m(i4, "Requested element count ", " is less than zero."));
                        return;
                    }
                    if (i4 == 0) {
                        collectionO = EmptyList.f71768b;
                    } else if (i4 >= iArr.length) {
                        collectionO = ArraysKt.U(iArr);
                    } else if (i4 == 1) {
                        collectionO = CollectionsKt.O(Integer.valueOf(iArr[0]));
                    } else {
                        ArrayList arrayList = new ArrayList(i4);
                        int i5 = 0;
                        for (int i6 : iArr) {
                            arrayList.add(Integer.valueOf(i6));
                            i5++;
                            if (i5 == i4) {
                                break;
                            }
                        }
                        collectionO = arrayList;
                    }
                    scene.a(CollectionsKt.x0(collectionO));
                }
            }
            Manipulator manipulator = this.n;
            if (manipulator == null) {
                Intrinsics.h("cameraManipulator");
                throw null;
            }
            double[] dArr = this.w;
            double[] dArr2 = this.x;
            double[] dArr3 = this.y;
            manipulator.g(dArr, dArr2, dArr3);
            this.f58522j.b(dArr[0], dArr[1], dArr[2], dArr2[0], dArr2[1], dArr2[2], dArr3[0], dArr3[1], dArr3[2]);
            SwapChain swapChain = this.r;
            swapChain.getClass();
            Renderer renderer = this.f58523k;
            if (renderer.a(swapChain, j2)) {
                renderer.d(this.f58521i);
                renderer.b();
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        view.getClass();
        motionEvent.getClass();
        GestureDetector gestureDetector = this.o;
        if (gestureDetector != null) {
            gestureDetector.a(motionEvent);
            return true;
        }
        Intrinsics.h("gestureDetector");
        throw null;
    }

    public ModelViewer(SurfaceView surfaceView, Engine engine, UiHelper uiHelper, Manipulator manipulator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            int i3 = Engine.f28533f;
            long jNBuilderBuild = Engine.nBuilderBuild(new Engine.Builder().f28539b);
            if (jNBuilderBuild != 0) {
                engine = new Engine(jNBuilderBuild);
            } else {
                md.k("Couldn't create Engine");
                throw null;
            }
        }
        this(surfaceView, engine, (i2 & 4) != 0 ? new UiHelper(UiHelper.ContextErrorPolicy.DONT_CHECK) : uiHelper, (i2 & 8) != 0 ? null : manipulator);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModelViewer(SurfaceView surfaceView, Engine engine, UiHelper uiHelper, Manipulator manipulator) {
        this(engine, uiHelper);
        surfaceView.getClass();
        engine.getClass();
        uiHelper.getClass();
        if (manipulator == null) {
            Manipulator.Builder builder = new Manipulator.Builder();
            Float3 float3 = z;
            float f2 = float3.f28639a;
            float f3 = float3.f28640b;
            float f4 = float3.f28641c;
            long j2 = builder.f28662b;
            Manipulator.nBuilderTargetPosition(j2, f2, f3, f4);
            Manipulator.nBuilderViewport(j2, surfaceView.getWidth(), surfaceView.getHeight());
            manipulator = builder.a(Manipulator.Mode.ORBIT);
        }
        this.n = manipulator;
        this.p = surfaceView;
        this.o = new GestureDetector(surfaceView, manipulator);
        this.m = new DisplayHelper(surfaceView.getContext());
        uiHelper.f28619b = new SurfaceCallback();
        uiHelper.a(surfaceView);
    }

    public ModelViewer(TextureView textureView, Engine engine, UiHelper uiHelper, Manipulator manipulator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            int i3 = Engine.f28533f;
            long jNBuilderBuild = Engine.nBuilderBuild(new Engine.Builder().f28539b);
            if (jNBuilderBuild != 0) {
                engine = new Engine(jNBuilderBuild);
            } else {
                md.k("Couldn't create Engine");
                throw null;
            }
        }
        this(textureView, engine, (i2 & 4) != 0 ? new UiHelper(UiHelper.ContextErrorPolicy.DONT_CHECK) : uiHelper, (i2 & 8) != 0 ? null : manipulator);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModelViewer(TextureView textureView, Engine engine, UiHelper uiHelper, Manipulator manipulator) {
        this(engine, uiHelper);
        textureView.getClass();
        engine.getClass();
        uiHelper.getClass();
        if (manipulator == null) {
            Manipulator.Builder builder = new Manipulator.Builder();
            Float3 float3 = z;
            float f2 = float3.f28639a;
            float f3 = float3.f28640b;
            float f4 = float3.f28641c;
            long j2 = builder.f28662b;
            Manipulator.nBuilderTargetPosition(j2, f2, f3, f4);
            Manipulator.nBuilderViewport(j2, textureView.getWidth(), textureView.getHeight());
            manipulator = builder.a(Manipulator.Mode.ORBIT);
        }
        this.n = manipulator;
        this.q = textureView;
        this.o = new GestureDetector(textureView, manipulator);
        this.m = new DisplayHelper(textureView.getContext());
        uiHelper.f28619b = new SurfaceCallback();
        uiHelper.b(textureView);
        textureView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.ModelViewer$addDetachListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                view.getClass();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                view.getClass();
                ModelViewer modelViewer = this.f58525b;
                modelViewer.f58517c.d();
                modelViewer.b();
                modelViewer.s.b();
                UbershaderProvider ubershaderProvider = modelViewer.t;
                ubershaderProvider.b();
                ubershaderProvider.a();
                modelViewer.u.e();
                Engine engine2 = modelViewer.f58516b;
                int i2 = modelViewer.l;
                engine2.n(i2);
                engine2.s(modelViewer.f58523k);
                engine2.x(modelViewer.f58521i);
                engine2.t(modelViewer.f58520h);
                Camera camera = modelViewer.f58522j;
                engine2.m(camera.f28528b);
                EntityManager.c().b(camera.f28528b);
                EntityManager.c().b(i2);
                engine2.l();
            }
        });
    }
}
