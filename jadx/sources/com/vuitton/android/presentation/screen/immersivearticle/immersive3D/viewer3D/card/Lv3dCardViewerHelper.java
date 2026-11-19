package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.Choreographer;
import android.view.SurfaceView;
import com.google.android.filament.Camera;
import com.google.android.filament.Engine;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Float4;
import com.google.android.filament.utils.Mat4;
import com.google.android.filament.utils.Quaternion;
import com.google.android.filament.utils.TextureType;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.BaseLv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MaterialHelperKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MeshResources;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.ModelViewer;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;", "Landroid/view/SurfaceView;", "surfaceView", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lkotlin/Function1;", "", "", "isSceneLoaded", "isFrontCardLoaded", "isCardLoaded", "isStartAnimationFinished", "is3DSceneInError", "Lkotlin/Function0;", "onCardTap", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;", "scene3DConfiguration", "<init>", "(Landroid/view/SurfaceView;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Lv3dCardViewerHelper extends BaseLv3dViewerHelper {
    public final Function1 A;
    public final Function0 B;
    public Mat4 C;
    public Material D;
    public MaterialInstance E;
    public MeshResources F;
    public int G;
    public int H;
    public SensorDataManager.SensorData I;
    public Bitmap J;
    public Bitmap K;
    public Bitmap L;
    public Bitmap M;
    public boolean N;
    public boolean O;
    public final ValueAnimator P;
    public final ValueAnimator Q;
    public boolean R;
    public final long S;
    public final Lv3dCardViewerHelper$frameCallback$1 T;
    public final Context v;
    public final Function1 w;
    public final Function1 x;
    public final Function1 y;
    public final Function1 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper$frameCallback$1] */
    public Lv3dCardViewerHelper(SurfaceView surfaceView, Context context, Function1<? super Boolean, Unit> function1, Function1<? super Boolean, Unit> function2, Function1<? super Boolean, Unit> function3, Function1<? super Boolean, Unit> function4, Function1<? super Boolean, Unit> function5, Function0<Unit> function0, Scene3DConfiguration scene3DConfiguration) {
        super(surfaceView, scene3DConfiguration);
        surfaceView.getClass();
        context.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function0.getClass();
        scene3DConfiguration.getClass();
        this.v = context;
        this.w = function1;
        this.x = function2;
        this.y = function3;
        this.z = function4;
        this.A = function5;
        this.B = function0;
        this.N = true;
        this.P = new ValueAnimator();
        this.Q = new ValueAnimator();
        this.S = 16666666L;
        this.T = new Choreographer.FrameCallback() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper$frameCallback$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f58570b;

            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                long j3;
                Mat4 mat4;
                Lv3dCardViewerHelper lv3dCardViewerHelper = this.f58571c;
                Choreographer choreographer = lv3dCardViewerHelper.q;
                long j4 = this.f58570b;
                if (j4 != 0) {
                    long j5 = j2 - j4;
                    long j6 = lv3dCardViewerHelper.S;
                    if (j5 < j6) {
                        long j7 = (j6 - j5) / 1000000;
                        if (j7 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            choreographer.postFrameCallbackDelayed(this, j7);
                            return;
                        }
                    }
                }
                if (lv3dCardViewerHelper.O) {
                    if (lv3dCardViewerHelper.I != null && !lv3dCardViewerHelper.N && (mat4 = lv3dCardViewerHelper.C) != null) {
                        Float4 float4 = mat4.f28665a;
                        Float4 float5 = mat4.f28666b;
                        Float4 float6 = mat4.f28667c;
                        Float4 float7 = mat4.d;
                        float4.getClass();
                        float5.getClass();
                        float6.getClass();
                        float7.getClass();
                        Mat4 mat5 = new Mat4(float4, float5, float6, float7);
                        Quaternion.Companion companion = Quaternion.f28668e;
                        Float3 float3 = new Float3(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        SensorDataManager.SensorData sensorData = lv3dCardViewerHelper.I;
                        if (sensorData == null) {
                            Intrinsics.h("sensorData");
                            throw null;
                        }
                        float f2 = sensorData.f58540b;
                        companion.getClass();
                        Quaternion quaternionA = Quaternion.Companion.a(float3, f2);
                        Float3 float8 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        SensorDataManager.SensorData sensorData2 = lv3dCardViewerHelper.I;
                        if (sensorData2 == null) {
                            Intrinsics.h("sensorData");
                            throw null;
                        }
                        Quaternion quaternionA2 = Quaternion.Companion.a(float8, sensorData2.f58541c);
                        float f3 = quaternionA.d;
                        float f4 = quaternionA2.f28669a;
                        float f5 = quaternionA.f28669a;
                        float f6 = quaternionA2.d;
                        float f7 = quaternionA.f28670b;
                        float f8 = quaternionA2.f28671c;
                        float f9 = quaternionA.f28671c;
                        float f10 = quaternionA2.f28670b;
                        Quaternion quaternion = new Quaternion(((f7 * f8) + ((f5 * f6) + (f3 * f4))) - (f9 * f10), (f9 * f4) + (f7 * f6) + ((f3 * f10) - (f5 * f8)), (f9 * f6) + (((f5 * f10) + (f3 * f8)) - (f7 * f4)), (((f3 * f6) - (f5 * f4)) - (f7 * f10)) - (f9 * f8));
                        int i2 = lv3dCardViewerHelper.G;
                        Mat4 mat4A = quaternion.a();
                        Float4 float9 = mat5.f28665a;
                        float f11 = float9.f28643a;
                        float f12 = float9.f28645c;
                        float f13 = float9.f28644b;
                        Float4 float10 = mat4A.f28665a;
                        float f14 = float10.f28643a;
                        float f15 = f11 * f14;
                        Float4 float11 = mat5.f28666b;
                        float f16 = float11.f28643a;
                        float f17 = float11.f28645c;
                        float f18 = float11.f28644b;
                        float f19 = float10.f28644b;
                        float f20 = (f16 * f19) + f15;
                        Float4 float12 = mat5.f28667c;
                        float f21 = float12.f28643a;
                        float f22 = float12.f28645c;
                        float f23 = float12.f28644b;
                        float f24 = float10.f28645c;
                        float f25 = (f21 * f24) + f20;
                        Float4 float13 = mat5.d;
                        float f26 = float13.f28643a;
                        float f27 = float13.f28645c;
                        float f28 = float13.f28644b;
                        float f29 = float10.d;
                        Float4 float14 = new Float4((f26 * f29) + f25, (f28 * f29) + (f23 * f24) + (f18 * f19) + (f13 * f14), (f27 * f29) + (f22 * f24) + (f17 * f19) + (f12 * f14), (float13.d * f29) + (float12.d * f24) + (float11.d * f19) + (float9.d * f14));
                        Float4 float15 = mat4A.f28666b;
                        float f30 = float15.f28643a;
                        float f31 = f11 * f30;
                        float f32 = float15.f28644b;
                        float f33 = (f16 * f32) + f31;
                        float f34 = float15.f28645c;
                        float f35 = (f21 * f34) + f33;
                        float f36 = float15.d;
                        Float4 float16 = new Float4((f26 * f36) + f35, (f28 * f36) + (f23 * f34) + (f18 * f32) + (f13 * f30), (f27 * f36) + (f22 * f34) + (f17 * f32) + (f12 * f30), (float13.d * f36) + (float12.d * f34) + (float11.d * f32) + (float9.d * f30));
                        Float4 float17 = mat4A.f28667c;
                        float f37 = float17.f28643a;
                        float f38 = f11 * f37;
                        float f39 = float17.f28644b;
                        float f40 = (f16 * f39) + f38;
                        float f41 = float17.f28645c;
                        float f42 = (f21 * f41) + f40;
                        float f43 = float17.d;
                        Float4 float18 = new Float4((f26 * f43) + f42, (f28 * f43) + (f23 * f41) + (f18 * f39) + (f13 * f37), (f27 * f43) + (f22 * f41) + (f17 * f39) + (f12 * f37), (float13.d * f43) + (float12.d * f41) + (float11.d * f39) + (float9.d * f37));
                        Float4 float19 = mat4A.d;
                        float f44 = float19.f28643a;
                        float f45 = float19.f28644b;
                        float f46 = float19.f28645c;
                        float f47 = float19.d;
                        lv3dCardViewerHelper.d(i2, new Mat4(float14, float16, float18, new Float4((f26 * f47) + (f21 * f46) + (f16 * f45) + (f11 * f44), (f28 * f47) + (f23 * f46) + (f18 * f45) + (f13 * f44), (f27 * f47) + (f22 * f46) + (f17 * f45) + (f12 * f44), (float13.d * f47) + (float12.d * f46) + (float11.d * f45) + (float9.d * f44))));
                    }
                    j3 = j2;
                    lv3dCardViewerHelper.r.d(j3);
                } else {
                    j3 = j2;
                    choreographer = choreographer;
                }
                this.f58570b = j3;
                choreographer.postFrameCallback(this);
            }
        };
    }

    public final void e() {
        FilamentAsset filamentAsset = this.r.d;
        if (filamentAsset != null) {
            int iB = filamentAsset.b(this.d);
            this.G = iB;
            this.C = b(iB);
            filamentAsset.b(this.g);
            filamentAsset.b(this.f58508h);
            filamentAsset.b(this.f58509i);
            this.H = filamentAsset.b(this.f58510j);
            filamentAsset.b(this.f58506e);
            this.n = filamentAsset.b(this.l);
        }
    }

    public final void f() {
        FilamentAsset filamentAsset;
        ModelViewer modelViewer = this.r;
        Engine engine = modelViewer.f58516b;
        if (engine.f28534a == 0 || (filamentAsset = modelViewer.d) == null) {
            return;
        }
        Bitmap bitmap = this.L;
        if (bitmap == null) {
            Intrinsics.h("bitmapCardBackNormal");
            throw null;
        }
        TextureType textureType = TextureType.NORMAL;
        Texture textureB = MaterialHelperKt.b(engine, bitmap, textureType);
        Engine engine2 = modelViewer.f58516b;
        Bitmap bitmap2 = this.M;
        if (bitmap2 == null) {
            Intrinsics.h("bitmapCardBackBaseColor");
            throw null;
        }
        Texture textureB2 = MaterialHelperKt.b(engine2, bitmap2, textureType);
        int iB = filamentAsset.b(this.f58509i);
        RenderableManager renderableManager = this.u;
        MaterialInstance materialInstanceL = renderableManager.m(iB) ? renderableManager.l(renderableManager.k(iB)) : null;
        TextureSampler textureSampler = new TextureSampler();
        if (materialInstanceL != null) {
            materialInstanceL.i("normalMap", textureB, textureSampler);
        }
        if (materialInstanceL != null) {
            materialInstanceL.i("baseColorMap", textureB2, textureSampler);
        }
        if (materialInstanceL != null) {
            materialInstanceL.h("metallicFactor", 1.5f);
        }
        if (materialInstanceL != null) {
            materialInstanceL.h("roughnessFactor", 0.8f);
        }
    }

    public final void g() {
        FilamentAsset filamentAsset;
        ModelViewer modelViewer = this.r;
        Engine engine = modelViewer.f58516b;
        if (engine.f28534a == 0 || (filamentAsset = modelViewer.d) == null) {
            return;
        }
        Bitmap bitmap = this.J;
        if (bitmap == null) {
            Intrinsics.h("bitmapCardFrontNormal");
            throw null;
        }
        TextureType textureType = TextureType.NORMAL;
        Texture textureB = MaterialHelperKt.b(engine, bitmap, textureType);
        Engine engine2 = modelViewer.f58516b;
        Bitmap bitmap2 = this.K;
        if (bitmap2 == null) {
            Intrinsics.h("bitmapCardFrontBaseColor");
            throw null;
        }
        Texture textureB2 = MaterialHelperKt.b(engine2, bitmap2, textureType);
        int iB = filamentAsset.b(this.f58508h);
        RenderableManager renderableManager = this.u;
        MaterialInstance materialInstanceL = renderableManager.m(iB) ? renderableManager.l(renderableManager.k(iB)) : null;
        TextureSampler textureSampler = new TextureSampler();
        textureSampler.c(TextureSampler.MinFilter.LINEAR_MIPMAP_LINEAR);
        textureSampler.b(TextureSampler.MagFilter.LINEAR);
        textureSampler.a();
        if (materialInstanceL != null) {
            materialInstanceL.i("normalMap", textureB, textureSampler);
        }
        if (materialInstanceL != null) {
            materialInstanceL.i("baseColorMap", textureB2, textureSampler);
        }
        if (materialInstanceL != null) {
            materialInstanceL.h("metallicFactor", 1.5f);
        }
        if (materialInstanceL != null) {
            materialInstanceL.h("roughnessFactor", 0.8f);
        }
        if (materialInstanceL != null) {
            materialInstanceL.h("normalScale", 1.0f);
        }
        this.x.invoke(Boolean.TRUE);
    }

    public final void h() {
        ModelViewer modelViewer = this.r;
        FilamentAsset filamentAsset = modelViewer.d;
        if (filamentAsset != null) {
            int iB = filamentAsset.b(this.g);
            RenderableManager renderableManager = this.u;
            MaterialInstance materialInstanceL = renderableManager.m(iB) ? renderableManager.l(renderableManager.k(iB)) : null;
            if (materialInstanceL != null) {
                materialInstanceL.f();
                materialInstanceL.b();
                materialInstanceL.e();
                materialInstanceL.d();
                materialInstanceL.c(Material.CullingMode.NONE);
            }
        }
        Camera camera = modelViewer.f58522j;
        Scene3DConfiguration scene3DConfiguration = this.f58504b;
        camera.d(scene3DConfiguration.t, scene3DConfiguration.u, scene3DConfiguration.v);
    }
}
