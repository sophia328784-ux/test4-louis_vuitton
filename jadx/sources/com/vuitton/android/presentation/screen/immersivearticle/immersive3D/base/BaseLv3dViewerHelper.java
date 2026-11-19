package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import android.view.Choreographer;
import android.view.SurfaceView;
import com.google.android.filament.Camera;
import com.google.android.filament.ColorGrading;
import com.google.android.filament.Engine;
import com.google.android.filament.Filament;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.android.filament.View;
import com.google.android.filament.android.UiHelper;
import com.google.android.filament.utils.Float4;
import com.google.android.filament.utils.Manipulator;
import com.google.android.filament.utils.Mat4;
import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;", "", "Landroid/view/SurfaceView;", "surfaceView", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;", "scene3DConfiguration", "<init>", "(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class BaseLv3dViewerHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceView f58503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Scene3DConfiguration f58504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58505c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f58506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f58507f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f58508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f58509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f58510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f58511k;
    public final String l;
    public int m;
    public int n;
    public int o;
    public int p;
    public final Choreographer q;
    public final ModelViewer r;
    public final Manipulator s;
    public final TransformManager t;
    public final RenderableManager u;

    public BaseLv3dViewerHelper(SurfaceView surfaceView, Scene3DConfiguration scene3DConfiguration) {
        surfaceView.getClass();
        scene3DConfiguration.getClass();
        this.f58503a = surfaceView;
        this.f58504b = scene3DConfiguration;
        this.f58505c = "shoe";
        this.d = "gyroscope";
        this.f58506e = "userControls";
        this.f58507f = "parentUserControls";
        this.g = "occlusionMask";
        this.f58508h = "cardFront";
        this.f58509i = "cardBack";
        this.f58510j = "animations";
        this.f58511k = "emptyCube";
        this.l = "bgCard";
        int i2 = Filament.f28544a;
        System.loadLibrary("filament-utils-jni");
        Choreographer choreographer = Choreographer.getInstance();
        choreographer.getClass();
        this.q = choreographer;
        Manipulator.Builder builder = new Manipulator.Builder();
        float f2 = scene3DConfiguration.y;
        float f3 = scene3DConfiguration.z;
        float f4 = scene3DConfiguration.A;
        long j2 = builder.f28662b;
        Manipulator.nBuilderOrbitHomePosition(j2, f2, f3, f4);
        Manipulator.nBuilderViewport(j2, surfaceView.getWidth(), surfaceView.getHeight());
        Manipulator manipulatorA = builder.a(Manipulator.Mode.ORBIT);
        this.s = manipulatorA;
        ModelViewer modelViewer = new ModelViewer(surfaceView, (Engine) null, (UiHelper) null, manipulatorA, 6, (DefaultConstructorMarker) null);
        this.r = modelViewer;
        Engine engine = modelViewer.f58516b;
        TransformManager transformManager = engine.f28535b;
        transformManager.getClass();
        this.t = transformManager;
        RenderableManager renderableManager = engine.d;
        renderableManager.getClass();
        this.u = renderableManager;
    }

    public static ByteBuffer c(SurfaceView surfaceView, String str) throws IOException {
        surfaceView.getClass();
        str.getClass();
        InputStream inputStreamOpen = surfaceView.getContext().getAssets().open(str);
        inputStreamOpen.getClass();
        byte[] bArr = new byte[inputStreamOpen.available()];
        inputStreamOpen.read(bArr);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.getClass();
        return byteBufferWrap;
    }

    public final void a() {
        ColorGrading.Builder builder = new ColorGrading.Builder();
        Scene3DConfiguration scene3DConfiguration = this.f58504b;
        float f2 = scene3DConfiguration.o;
        long j2 = builder.f28531b;
        ColorGrading.nBuilderContrast(j2, f2);
        ColorGrading.nBuilderSaturation(j2, scene3DConfiguration.p);
        ColorGrading.nBuilderWhiteBalance(j2, scene3DConfiguration.q, scene3DConfiguration.r);
        ColorGrading.nBuilderExposure(j2, scene3DConfiguration.s);
        ModelViewer modelViewer = this.r;
        Engine engine = modelViewer.f58516b;
        Camera camera = modelViewer.f58522j;
        View view = modelViewer.f58521i;
        long jNBuilderBuild = ColorGrading.nBuilderBuild(j2, engine.getNativeObject());
        if (jNBuilderBuild == 0) {
            md.k("Couldn't create ColorGrading");
            return;
        }
        ColorGrading colorGrading = new ColorGrading(jNBuilderBuild);
        View.BloomOptions bloomOptions = new View.BloomOptions();
        bloomOptions.d = scene3DConfiguration.B;
        bloomOptions.f28602c = scene3DConfiguration.C;
        bloomOptions.f28603e = scene3DConfiguration.D;
        bloomOptions.g = scene3DConfiguration.E;
        bloomOptions.f28604f = scene3DConfiguration.F;
        bloomOptions.f28600a = scene3DConfiguration.G;
        view.c(View.AntiAliasing.FXAA);
        View.MultiSampleAntiAliasingOptions multiSampleAntiAliasingOptions = new View.MultiSampleAntiAliasingOptions();
        multiSampleAntiAliasingOptions.f28605a = true;
        view.h(multiSampleAntiAliasingOptions);
        view.g(colorGrading);
        view.e(bloomOptions);
        double d = scene3DConfiguration.w;
        camera.g(d, d);
        camera.h(scene3DConfiguration.x);
        camera.d(scene3DConfiguration.t, scene3DConfiguration.u, scene3DConfiguration.v);
    }

    public final Mat4 b(int i2) {
        ModelViewer modelViewer = this.r;
        if (modelViewer.d == null) {
            Mat4.f28664e.getClass();
            return new Mat4((Float4) null, (Float4) null, (Float4) null, (Float4) null, 15, (DefaultConstructorMarker) null);
        }
        TransformManager transformManager = modelViewer.f58516b.f28535b;
        transformManager.getClass();
        Mat4.Companion companion = Mat4.f28664e;
        float[] fArr = new float[16];
        transformManager.d(fArr, transformManager.c(i2));
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        companion.getClass();
        if (fArrCopyOf.length >= 16) {
            return new Mat4(new Float4(fArrCopyOf[0], fArrCopyOf[4], fArrCopyOf[8], fArrCopyOf[12]), new Float4(fArrCopyOf[1], fArrCopyOf[5], fArrCopyOf[9], fArrCopyOf[13]), new Float4(fArrCopyOf[2], fArrCopyOf[6], fArrCopyOf[10], fArrCopyOf[14]), new Float4(fArrCopyOf[3], fArrCopyOf[7], fArrCopyOf[11], fArrCopyOf[15]));
        }
        md.n("Failed requirement.");
        return null;
    }

    public final void d(int i2, Mat4 mat4) {
        ModelViewer modelViewer = this.r;
        if (modelViewer.d != null) {
            TransformManager transformManager = modelViewer.f58516b.f28535b;
            transformManager.getClass();
            int iC = transformManager.c(i2);
            Float4 float4 = mat4.f28665a;
            float f2 = float4.f28643a;
            Float4 float5 = mat4.f28666b;
            float f3 = float5.f28643a;
            Float4 float6 = mat4.f28667c;
            float f4 = float6.f28643a;
            Float4 float7 = mat4.d;
            transformManager.g(new float[]{f2, f3, f4, float7.f28643a, float4.f28644b, float5.f28644b, float6.f28644b, float7.f28644b, float4.f28645c, float5.f28645c, float6.f28645c, float7.f28645c, float4.d, float5.d, float6.d, float7.d}, iC);
        }
    }

    public /* synthetic */ BaseLv3dViewerHelper(SurfaceView surfaceView, Scene3DConfiguration scene3DConfiguration, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(surfaceView, (i2 & 2) != 0 ? new Scene3DConfiguration.DefaultConfiguration() : scene3DConfiguration);
    }
}
