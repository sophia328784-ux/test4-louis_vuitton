package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.Renderer;
import com.google.android.filament.Scene;
import com.google.android.filament.Texture;
import com.google.android.filament.View;
import com.google.android.filament.gltfio.AssetLoader;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Float4;
import com.google.android.filament.utils.KTX1Loader;
import com.google.android.filament.utils.Mat4;
import com.google.android.filament.utils.Quaternion;
import com.google.android.filament.utils.QuaternionKt;
import com.google.android.filament.utils.RotationsOrder;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.BaseLv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MaterialHelperKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MeshResources;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.ModelViewer;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper;
import defpackage.ft;
import defpackage.md;
import defpackage.v40;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.XorWowRandom;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000f\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/view/SurfaceView;", "surfaceView", "Landroidx/lifecycle/LifecycleCoroutineScope;", "lifecycleCoroutineScope", "Lkotlin/Function1;", "", "", "isFocusedChanged", "isLoadedChanged", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;", "is3DSceneInError", "Lkotlin/Function0;", "onTrackProductTouched", "onTrackProductZoomed", "<init>", "(Landroid/content/Context;Landroid/view/SurfaceView;Landroidx/lifecycle/LifecycleCoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Lv3dViewerHelper extends BaseLv3dViewerHelper {
    public final Function0 A;
    public final Function0 B;
    public int C;
    public int D;
    public int E;
    public Material F;
    public MaterialInstance G;
    public MeshResources H;
    public final ValueAnimator I;
    public final ValueAnimator J;
    public final ValueAnimator K;
    public final ValueAnimator L;
    public SensorDataManager.SensorData M;
    public float N;
    public float O;
    public Quaternion P;
    public Float3 Q;
    public Float3 R;
    public float S;
    public float T;
    public float U;
    public float V;
    public final float W;
    public final float X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public String b0;
    public String c0;
    public FilamentAsset d0;
    public AssetLoader e0;
    public final Path f0;
    public final XorWowRandom g0;
    public final PathMeasure h0;
    public boolean i0;
    public boolean j0;
    public final long k0;
    public final Lv3dViewerHelper$frameCallback$1 l0;
    public final Context v;
    public final LifecycleCoroutineScope w;
    public final Function1 x;
    public final Function1 y;
    public final Function1 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r7v16, types: [com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$frameCallback$1] */
    public Lv3dViewerHelper(Context context, SurfaceView surfaceView, LifecycleCoroutineScope lifecycleCoroutineScope, Function1<? super Boolean, Unit> function1, Function1<? super Boolean, Unit> function2, Function1<? super Error3dType, Unit> function3, Function0<Unit> function0, Function0<Unit> function4) {
        super(surfaceView, new Scene3DConfiguration.PDPConfiguration());
        context.getClass();
        surfaceView.getClass();
        lifecycleCoroutineScope.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function0.getClass();
        function4.getClass();
        this.v = context;
        this.w = lifecycleCoroutineScope;
        this.x = function1;
        this.y = function2;
        this.z = function3;
        this.A = function0;
        this.B = function4;
        this.I = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 180.0f);
        this.J = new ValueAnimator();
        this.K = new ValueAnimator();
        this.L = new ValueAnimator();
        this.P = new Quaternion(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 15, null);
        this.Q = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
        this.R = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
        this.T = 1.0f;
        this.U = 1.0f;
        this.V = 1.0f;
        this.W = 1.0f;
        this.X = 1.4f;
        this.Y = true;
        this.f0 = new Path();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.g0 = new XorWowRandom((int) jCurrentTimeMillis, (int) (jCurrentTimeMillis >> 32));
        this.h0 = new PathMeasure();
        this.k0 = 16666666L;
        this.l0 = new Choreographer.FrameCallback() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$frameCallback$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f58598b;

            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                Quaternion quaternion;
                Lv3dViewerHelper lv3dViewerHelper = this.f58599c;
                Choreographer choreographer = lv3dViewerHelper.q;
                long j3 = this.f58598b;
                if (j3 != 0) {
                    long j4 = j2 - j3;
                    long j5 = lv3dViewerHelper.k0;
                    if (j4 < j5) {
                        long j6 = (j5 - j4) / 1000000;
                        if (j6 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            choreographer.postFrameCallbackDelayed(this, j6);
                            return;
                        }
                    }
                }
                if (lv3dViewerHelper.Z) {
                    if (lv3dViewerHelper.M != null && lv3dViewerHelper.Y) {
                        Quaternion.Companion companion = Quaternion.f28668e;
                        Float3 float3 = new Float3(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        SensorDataManager.SensorData sensorData = lv3dViewerHelper.M;
                        if (sensorData == null) {
                            Intrinsics.h("sensorData");
                            throw null;
                        }
                        float f2 = -sensorData.f58540b;
                        companion.getClass();
                        Quaternion quaternionA = Quaternion.Companion.a(float3, f2);
                        Float3 float4 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        SensorDataManager.SensorData sensorData2 = lv3dViewerHelper.M;
                        if (sensorData2 == null) {
                            Intrinsics.h("sensorData");
                            throw null;
                        }
                        Quaternion quaternionA2 = Quaternion.Companion.a(float4, sensorData2.f58541c);
                        float f3 = quaternionA.d;
                        float f4 = quaternionA2.f28669a;
                        float f5 = quaternionA.f28669a;
                        float f6 = quaternionA2.d;
                        float f7 = quaternionA.f28670b;
                        float f8 = quaternionA2.f28671c;
                        float f9 = quaternionA.f28671c;
                        float f10 = quaternionA2.f28670b;
                        Quaternion quaternionA3 = QuaternionKt.a(lv3dViewerHelper.P, new Quaternion(((f7 * f8) + ((f5 * f6) + (f3 * f4))) - (f9 * f10), (f9 * f4) + (f7 * f6) + ((f3 * f10) - (f5 * f8)), (f9 * f6) + (((f5 * f10) + (f3 * f8)) - (f7 * f4)), (((f3 * f6) - (f5 * f4)) - (f7 * f10)) - (f9 * f8)), 0.12f);
                        lv3dViewerHelper.P = quaternionA3;
                        lv3dViewerHelper.d(lv3dViewerHelper.C, quaternionA3.a());
                    }
                    Quaternion quaternionA4 = lv3dViewerHelper.b(lv3dViewerHelper.D).a();
                    Quaternion.Companion companion2 = Quaternion.f28668e;
                    Float3 float5 = lv3dViewerHelper.R;
                    RotationsOrder rotationsOrder = RotationsOrder.ZYX;
                    companion2.getClass();
                    float5.getClass();
                    rotationsOrder.getClass();
                    Float3 float6 = new Float3(float5.f28639a, float5.f28640b, float5.f28641c);
                    float6.f28639a *= 0.017453292f;
                    float6.f28640b *= 0.017453292f;
                    float6.f28641c *= 0.017453292f;
                    float fA = float6.a(rotationsOrder.getYaw());
                    float fA2 = float6.a(rotationsOrder.getPitch());
                    float fA3 = float6.a(rotationsOrder.getRoll());
                    double d = fA * 0.5f;
                    float fCos = (float) Math.cos(d);
                    float fSin = (float) Math.sin(d);
                    double d2 = fA2 * 0.5f;
                    float fCos2 = (float) Math.cos(d2);
                    float fSin2 = (float) Math.sin(d2);
                    double d3 = fA3 * 0.5f;
                    float fCos3 = (float) Math.cos(d3);
                    float fSin3 = (float) Math.sin(d3);
                    switch (Quaternion.Companion.WhenMappings.f28672a[rotationsOrder.ordinal()]) {
                        case 1:
                            float f11 = fSin * fCos2;
                            float f12 = fCos * fSin2;
                            float f13 = fCos * fCos2;
                            float f14 = fSin * fSin2;
                            quaternion = new Quaternion((f11 * fCos3) - (f12 * fSin3), (f13 * fSin3) - (f14 * fCos3), (f12 * fCos3) + (f11 * fSin3), (f13 * fCos3) + (f14 * fSin3));
                            break;
                        case 2:
                            float f15 = (fSin2 * fSin3 * fCos) + (fSin * fCos2 * fCos3);
                            float f16 = ((fSin2 * fCos) * fCos3) - ((fSin * fSin3) * fCos2);
                            float f17 = fSin * fSin2;
                            quaternion = new Quaternion(f15, f16, (fSin3 * fCos * fCos2) + (f17 * fCos3), ((fCos * fCos2) * fCos3) - (f17 * fSin3));
                            break;
                        case 3:
                            float f18 = fSin * fCos2;
                            float f19 = fCos * fSin2;
                            float f20 = fCos * fCos2;
                            float f21 = fSin * fSin2;
                            quaternion = new Quaternion((f19 * fCos3) + (f18 * fSin3), (f18 * fCos3) - (f19 * fSin3), (f20 * fSin3) - (f21 * fCos3), (f20 * fCos3) + (f21 * fSin3));
                            break;
                        case 4:
                            float f22 = fSin * fSin2;
                            float f23 = fCos * fCos2;
                            float f24 = fSin * fCos2;
                            float f25 = fCos * fSin2;
                            quaternion = new Quaternion((f23 * fSin3) + (f22 * fCos3), (f25 * fSin3) + (f24 * fCos3), (f25 * fCos3) - (f24 * fSin3), (f23 * fCos3) - (f22 * fSin3));
                            break;
                        case 5:
                            float f26 = fCos * fCos2;
                            float f27 = fSin * fSin2;
                            float f28 = fSin * fCos2;
                            float f29 = fCos * fSin2;
                            quaternion = new Quaternion((f26 * fSin3) - (f27 * fCos3), (f29 * fCos3) + (f28 * fSin3), (f28 * fCos3) - (f29 * fSin3), (f26 * fCos3) + (f27 * fSin3));
                            break;
                        case 6:
                            float f30 = fCos * fSin2;
                            float f31 = fSin * fCos2;
                            float f32 = fSin * fSin2;
                            float f33 = fCos * fCos2;
                            quaternion = new Quaternion((f30 * fCos3) - (f31 * fSin3), (f33 * fSin3) + (f32 * fCos3), (f30 * fSin3) + (f31 * fCos3), (f33 * fCos3) - (f32 * fSin3));
                            break;
                        default:
                            v40.g();
                            return;
                    }
                    if (Math.abs((quaternionA4.d * quaternion.d) + (quaternionA4.f28671c * quaternion.f28671c) + (quaternionA4.f28670b * quaternion.f28670b) + (quaternionA4.f28669a * quaternion.f28669a)) <= 0.99999f) {
                        lv3dViewerHelper.d(lv3dViewerHelper.D, QuaternionKt.c(quaternionA4, quaternion, 0.12f).a());
                    }
                    if (lv3dViewerHelper.a0) {
                        ValueAnimator valueAnimator = lv3dViewerHelper.L;
                        ValueAnimator valueAnimator2 = lv3dViewerHelper.K;
                        ValueAnimator valueAnimator3 = lv3dViewerHelper.J;
                        if (valueAnimator3.isRunning()) {
                            valueAnimator3.cancel();
                        }
                        if (valueAnimator2.isRunning()) {
                            valueAnimator2.cancel();
                        }
                        if (valueAnimator.isRunning()) {
                            valueAnimator.cancel();
                        }
                    } else {
                        lv3dViewerHelper.x.invoke(Boolean.FALSE);
                    }
                    lv3dViewerHelper.r.d(j2);
                }
                this.f58598b = j2;
                choreographer.postFrameCallback(this);
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object e(Lv3dViewerHelper lv3dViewerHelper, String str, ContinuationImpl continuationImpl) throws Throwable {
        Lv3dViewerHelper$loadAssetAndAddSneaker$1 lv3dViewerHelper$loadAssetAndAddSneaker$1;
        if (continuationImpl instanceof Lv3dViewerHelper$loadAssetAndAddSneaker$1) {
            lv3dViewerHelper$loadAssetAndAddSneaker$1 = (Lv3dViewerHelper$loadAssetAndAddSneaker$1) continuationImpl;
            int i2 = lv3dViewerHelper$loadAssetAndAddSneaker$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lv3dViewerHelper$loadAssetAndAddSneaker$1.d = i2 - Integer.MIN_VALUE;
            } else {
                lv3dViewerHelper$loadAssetAndAddSneaker$1 = new Lv3dViewerHelper$loadAssetAndAddSneaker$1(lv3dViewerHelper, continuationImpl);
            }
        } else {
            lv3dViewerHelper$loadAssetAndAddSneaker$1 = new Lv3dViewerHelper$loadAssetAndAddSneaker$1(lv3dViewerHelper, continuationImpl);
        }
        Object obj = lv3dViewerHelper$loadAssetAndAddSneaker$1.f58601b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = lv3dViewerHelper$loadAssetAndAddSneaker$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                Lv3dViewerHelper$loadAssetAndAddSneaker$2 lv3dViewerHelper$loadAssetAndAddSneaker$2 = new Lv3dViewerHelper$loadAssetAndAddSneaker$2(lv3dViewerHelper, str, null);
                lv3dViewerHelper$loadAssetAndAddSneaker$1.d = 1;
                Object objF = BuildersKt.f(defaultIoScheduler, lv3dViewerHelper$loadAssetAndAddSneaker$2, lv3dViewerHelper$loadAssetAndAddSneaker$1);
                lv3dViewerHelper = objF;
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                lv3dViewerHelper = lv3dViewerHelper;
            }
        } catch (Exception unused) {
            lv3dViewerHelper.z.invoke(Error3dType.MissingModel);
        }
        return Unit.f71739a;
    }

    public static float f(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((y * y) + (x * x));
    }

    public final void g() {
        FilamentAsset filamentAsset = this.r.d;
        if (filamentAsset != null) {
            this.D = filamentAsset.b(this.f58506e);
            this.E = filamentAsset.b(this.f58507f);
            this.C = filamentAsset.b(this.d);
            EntityManager.c().b(filamentAsset.b(this.f58511k));
        }
    }

    public final void h(boolean z) {
        Path path = this.f0;
        path.reset();
        float f2 = b(this.m).f28665a.d;
        float f3 = b(this.m).f28666b.d;
        float f4 = f2;
        float f5 = f3;
        int i2 = 0;
        while (i2 < 20) {
            path.moveTo(f4, f5);
            XorWowRandom xorWowRandom = this.g0;
            float fC = (float) xorWowRandom.c();
            float fC2 = (float) xorWowRandom.c();
            float fC3 = i2 == 19 ? f2 : (float) xorWowRandom.c();
            float fC4 = i2 == 19 ? f3 : (float) xorWowRandom.c();
            path.quadTo(fC, fC2, fC3, fC4);
            i2++;
            f5 = fC4;
            f4 = fC3;
        }
        this.h0.setPath(path, false);
        ValueAnimator valueAnimator = this.L;
        if (z) {
            valueAnimator.start();
            return;
        }
        final float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        final float[] fArr2 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        valueAnimator.setDuration(4000L);
        valueAnimator.setInterpolator(new LinearInterpolator());
        valueAnimator.setObjectValues(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), Float.valueOf(1.0f));
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: bb0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                valueAnimator2.getClass();
                Object animatedValue = valueAnimator2.getAnimatedValue();
                animatedValue.getClass();
                float fFloatValue = ((Float) animatedValue).floatValue();
                Lv3dViewerHelper lv3dViewerHelper = this.f20814a;
                PathMeasure pathMeasure = lv3dViewerHelper.h0;
                float length = pathMeasure.getLength() * fFloatValue;
                float[] fArr3 = fArr2;
                pathMeasure.getPosTan(length, fArr3, fArr);
                float f6 = fArr3[0];
                float f7 = fArr3[1];
                Mat4 mat4B = lv3dViewerHelper.b(lv3dViewerHelper.m);
                mat4B.f28665a.d = f6;
                mat4B.f28666b.d = f7;
                lv3dViewerHelper.d(lv3dViewerHelper.m, mat4B);
            }
        });
        valueAnimator.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$idleAnimate$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                Lv3dViewerHelper lv3dViewerHelper = this.f58600a;
                boolean z2 = lv3dViewerHelper.Y;
                PathMeasure pathMeasure = lv3dViewerHelper.h0;
                if (z2) {
                    if (!pathMeasure.nextContour()) {
                        pathMeasure.setPath(lv3dViewerHelper.f0, false);
                    }
                    lv3dViewerHelper.L.start();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        valueAnimator.start();
    }

    public final boolean i() {
        Mat4 mat4B = b(this.E);
        Float4 float4 = mat4B.f28665a;
        Float3 float3 = new Float3(float4.f28643a, float4.f28644b, float4.f28645c);
        float f2 = float3.f28639a;
        float f3 = float3.f28640b;
        float f4 = (f3 * f3) + (f2 * f2);
        float f5 = float3.f28641c;
        float fSqrt = (float) Math.sqrt((f5 * f5) + f4);
        Float4 float5 = mat4B.f28666b;
        Float3 float6 = new Float3(float5.f28643a, float5.f28644b, float5.f28645c);
        float f6 = float6.f28639a;
        float f7 = float6.f28640b;
        float f8 = (f7 * f7) + (f6 * f6);
        float f9 = float6.f28641c;
        float fSqrt2 = (float) Math.sqrt((f9 * f9) + f8);
        Float4 float7 = mat4B.f28667c;
        Float3 float8 = new Float3(float7.f28643a, float7.f28644b, float7.f28645c);
        float f10 = float8.f28639a;
        float f11 = float8.f28640b;
        float f12 = (f11 * f11) + (f10 * f10);
        float f13 = float8.f28641c;
        return !(new Float3(fSqrt, fSqrt2, (float) Math.sqrt((double) ((f13 * f13) + f12))).f28639a == 1.0f);
    }

    public final void j() throws IOException {
        EntityManager entityManagerC = EntityManager.c();
        ModelViewer modelViewer = this.r;
        int i2 = modelViewer.l;
        Scene scene = modelViewer.f58520h;
        entityManagerC.b(i2);
        SurfaceView surfaceView = this.f58503a;
        ByteBuffer byteBufferC = BaseLv3dViewerHelper.c(surfaceView, "models/sneakers_ibl.ktx");
        Engine engine = modelViewer.f58516b;
        Texture texture = KTX1Loader.f28658a.a(engine, byteBufferC, new KTX1Loader.Options()).f28659a;
        if (texture != null) {
            IndirectLight.Builder builder = new IndirectLight.Builder();
            long nativeObject = texture.getNativeObject();
            long j2 = builder.f28551b;
            IndirectLight.nBuilderReflections(j2, nativeObject);
            IndirectLight.nIntensity(j2, this.f58504b.f58526a);
            scene.f(builder.a(engine));
        }
        ByteBuffer byteBufferE = MatrixKt.e(this.v, "materials/lit.filamat");
        Material.Builder builder2 = new Material.Builder();
        int iRemaining = byteBufferE.remaining();
        builder2.f28559a = byteBufferE;
        builder2.f28560b = iRemaining;
        Material materialA = builder2.a(engine);
        this.F = materialA;
        this.G = materialA.b();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(this.w, MainDispatcherLoader.f75131a, null, new Lv3dViewerHelper$setupMaterial$1(this, null), 2);
        MaterialInstance materialInstance = this.G;
        if (materialInstance == null) {
            Intrinsics.h("backgroundMaterialInstance");
            throw null;
        }
        MeshResources meshResourcesA = MaterialHelperKt.a(modelViewer, materialInstance);
        this.H = meshResourcesA;
        this.n = meshResourcesA.f58513a;
        surfaceView.setBackgroundColor(0);
        surfaceView.getHolder().setFormat(-3);
        scene.g();
        Renderer renderer = modelViewer.f58523k;
        Renderer.ClearOptions clearOptions = new Renderer.ClearOptions();
        clearOptions.f28572b = true;
        renderer.e(clearOptions);
        modelViewer.f58521i.d(View.BlendMode.TRANSLUCENT);
    }

    public final void k() {
        try {
            Result.Companion companion = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
        }
    }

    public final void l() {
        ValueAnimator valueAnimator = this.J;
        valueAnimator.setDuration(1000L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.setObjectValues(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), Float.valueOf(1.0f));
        valueAnimator.addUpdateListener(new ft(this, 4));
        valueAnimator.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$userControlsAnimate$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                Lv3dViewerHelper lv3dViewerHelper = this.f58611a;
                if (lv3dViewerHelper.i()) {
                    return;
                }
                lv3dViewerHelper.U = 1.0f;
                lv3dViewerHelper.T = 1.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
    }
}
