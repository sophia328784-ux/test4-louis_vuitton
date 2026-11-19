package com.perfectcorp.perfectlib.makeupcam.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cyberlink.clgpuimage.CLNecklaceFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveConcealerFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.CLShowAlignFilter;
import com.cyberlink.clgpuimage.cosmetic.GPUImageBackgroundFilter;
import com.cyberlink.clgpuimage.cosmetic.x;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.debug.PerformanceCounter;
import com.perfectcorp.common.utility.Bitmaps;
import com.perfectcorp.common.utility.ImageUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.internal.NecklaceFilter;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.jniproxy.VN_EyebrowMode;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import defpackage.aa0;
import defpackage.fc;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Timer;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveMakeupCtrl implements SensorEventListener, LiveMakeupCtrlInterface {
    public int A;
    public int A1;
    public int B;
    public int B1;
    public boolean C;
    public int C1;
    public final int D;
    public int D1;
    public final LiveParameters.Eyebrow E;
    public final Rect[] E1;
    public final LiveParameters.Reshape[] F;
    public final ImmutableSet G;
    public final boolean[] H;
    public final int[] I;
    public final boolean[] J;
    public final n[] K;
    public final n[] L;
    public final int[] M;
    public final int[] N;
    public final int[] O;
    public final float[] P;
    public final EarringChainSettings[][] Q;
    public final EarringJointSettings[][] R;
    public final float[] S;
    public final float[] T;
    public final EarringConvexColliders[][] V;
    public final EarringObjectSettings[][] W;
    public final float[] X;
    public int Y;
    public q Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowManager f40715b;
    public volatile boolean b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseVenus f40716c;
    public final i c1;
    public final boolean d;
    public final com.perfectcorp.perfectlib.makeupcam.camera.c d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GPUImageRenderer f40717e;
    public final boolean e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f40718f;
    public final GPUImageBackgroundFilter f1;
    public final CLMakeupLiveFilter g;
    public final GPUImageBackgroundFilter g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l f40719h;
    public final LipShapeParameters[] h0;
    public final NecklaceFilter h1;
    public final boolean i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Rect[] f40721j;
    public final AccessoryCamWrapper j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile d f40722k;
    public CLNecklaceFilter.LiveNecklaceMetadata[] k1;
    public SensorManager l;
    public volatile boolean l1;
    public Sensor m;
    public volatile boolean m1;
    public g n1;
    public final PerformanceCounter o1;
    public volatile int p;
    public volatile c p1;
    public volatile boolean q;
    public final boolean[] q1;
    public volatile int r;
    public PupilAnalysisCallback r1;
    public volatile int s;
    public volatile PupilAnalysisCallback s1;
    public volatile int t;
    public volatile int t0;
    public volatile QualityCheckCallback t1;
    public volatile boolean u1;
    public final LiveSettingCtrl v;
    public volatile boolean v1;
    public final ApplyEffectCtrl w;
    public boolean w1;
    public final Object x;
    public final ArrayList x1;
    public int y;
    public final Object y1;
    public int z;
    public int z1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f40720i = false;
    public final float[] n = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    public final Object o = new Object();
    public final AtomicBoolean u = new AtomicBoolean(false);

    @FunctionalInterface
    public interface PupilAnalysisCallback {
        void onAnalyze(EstimatedPDInfo estimatedPDInfo, TrafficLightCheckResult trafficLightCheckResult);
    }

    @FunctionalInterface
    public interface QualityCheckCallback {
        void onAnalyze(MakeupCheckResult makeupCheckResult);
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Bitmap f40723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bitmap f40724b;

        public a(Bitmap bitmap, Bitmap bitmap2) {
            this.f40723a = bitmap;
            this.f40724b = bitmap2;
        }
    }

    public static final class c {
    }

    public interface e {
        void b(CLShowAlignFilter.ShowAlignData[] showAlignDataArr, List[] listArr);
    }

    public LiveMakeupCtrl(k kVar, BaseVenus baseVenus, CLMakeupLiveFilter cLMakeupLiveFilter, ApplyEffectParams applyEffectParams, boolean z, AccessoryCamWrapper accessoryCamWrapper) {
        int i2;
        LiveSettingCtrl liveSettingCtrl = new LiveSettingCtrl();
        this.v = liveSettingCtrl;
        this.x = new Object();
        this.y = CLMakeupLiveFilter.a.f25660a;
        int i3 = GPUImageBackgroundFilter.b.f25720a;
        this.z = i3;
        this.A = i3;
        this.B = 1;
        this.E = new LiveParameters.Eyebrow(liveSettingCtrl);
        this.K = new n[20];
        this.L = new n[20];
        this.M = new int[20];
        this.N = new int[20];
        this.O = new int[20];
        this.P = new float[20];
        this.Q = (EarringChainSettings[][]) Array.newInstance((Class<?>) EarringChainSettings.class, 20, 50);
        this.R = (EarringJointSettings[][]) Array.newInstance((Class<?>) EarringJointSettings.class, 20, 50);
        this.S = new float[20];
        this.T = new float[20];
        this.V = (EarringConvexColliders[][]) Array.newInstance((Class<?>) EarringConvexColliders.class, 20, 50);
        this.W = (EarringObjectSettings[][]) Array.newInstance((Class<?>) EarringObjectSettings.class, 20, 50);
        this.X = new float[DilithiumEngine.DilithiumPolyT1PackedBytes];
        this.t0 = 70;
        this.l1 = false;
        this.m1 = false;
        this.n1 = null;
        this.o1 = PerformanceCounter.f39180b;
        this.q1 = new boolean[3];
        this.u1 = false;
        this.v1 = false;
        this.x1 = new ArrayList();
        this.y1 = new Object();
        Object systemService = PfCommons.b().getSystemService("window");
        Objects.requireNonNull(systemService, "Can't get WINDOW_SERVICE.");
        this.f40715b = (WindowManager) systemService;
        this.f40716c = baseVenus;
        this.g = cLMakeupLiveFilter;
        GPUImageRenderer gPUImageRendererA = kVar.a();
        this.f40717e = gPUImageRendererA;
        gPUImageRendererA.l = true;
        Object obj = gPUImageRendererA.f25469k;
        this.f40718f = obj;
        cLMakeupLiveFilter.G6 = true;
        this.d = z;
        UIMakeupJNI.CUIMakeupLive_SetTrackingMode(baseVenus.f40398a, baseVenus, z);
        boolean z2 = applyEffectParams.q;
        this.e1 = z2;
        if (z2) {
            GPUImageBackgroundFilter gPUImageBackgroundFilter = new GPUImageBackgroundFilter(true, false);
            this.f1 = gPUImageBackgroundFilter;
            GPUImageBackgroundFilter gPUImageBackgroundFilter2 = new GPUImageBackgroundFilter(false, false);
            this.g1 = gPUImageBackgroundFilter2;
            this.d1 = new com.perfectcorp.perfectlib.makeupcam.camera.c(PfCommons.b(), baseVenus, gPUImageBackgroundFilter, gPUImageBackgroundFilter2, false, obj);
        }
        this.i1 = applyEffectParams.s;
        this.j1 = accessoryCamWrapper;
        this.k1 = new CLNecklaceFilter.LiveNecklaceMetadata[3];
        for (int i4 = 0; i4 < 3; i4++) {
            this.k1[i4] = new CLNecklaceFilter.LiveNecklaceMetadata();
        }
        if (this.i1) {
            this.h1 = new NecklaceFilter(0);
        }
        int iCUIMakeupLive_GetMaxDetectedFaceCount = UIMakeupJNI.CUIMakeupLive_GetMaxDetectedFaceCount();
        this.D = iCUIMakeupLive_GetMaxDetectedFaceCount;
        this.w = new ApplyEffectCtrl(this, iCUIMakeupLive_GetMaxDetectedFaceCount, ApplyEffectCtrl.H, applyEffectParams);
        this.f40719h = new l(this.f40716c, this.g, this.f1);
        this.f40721j = new Rect[iCUIMakeupLive_GetMaxDetectedFaceCount];
        int i5 = 0;
        while (true) {
            i2 = this.D;
            if (i5 >= i2) {
                break;
            }
            this.f40721j[i5] = new Rect();
            i5++;
        }
        this.E1 = new Rect[i2];
        for (int i6 = 0; i6 < this.D; i6++) {
            this.E1[i6] = new Rect();
        }
        ImmutableSet.Builder builder = new ImmutableSet.Builder();
        builder.h(this.E);
        this.F = new LiveParameters.Reshape[this.D];
        for (int i7 = 0; i7 < this.D; i7++) {
            this.F[i7] = new LiveParameters.Reshape(this.v);
            builder.h(this.F[i7]);
        }
        this.G = builder.j();
        int i8 = this.D;
        this.H = new boolean[i8];
        this.I = new int[i8];
        this.J = new boolean[i8];
        this.h0 = new LipShapeParameters[i8];
        for (int i9 = 0; i9 < this.D; i9++) {
            this.h0[i9] = new LipShapeParameters();
            builder.h(this.F[i9]);
        }
        this.c1 = new i(PfCommons.b(), this.f40716c, this.g, this.f40718f);
        BaseVenus baseVenus2 = this.f40716c;
        UIMakeupJNI.CUIMakeupLive_EnableCheckForMakeup(baseVenus2.f40398a, baseVenus2, baseVenus2.g);
        BaseVenus baseVenus3 = this.f40716c;
        UIMakeupJNI.CUIMakeupLive_SetStricknessForMakeupCheckResult(baseVenus3.f40398a, baseVenus3, baseVenus3.f40076h);
    }

    public static void e(LiveMakeupCtrl liveMakeupCtrl, FrameProcessingThread.Frame frame) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        NecklaceFilter necklaceFilter;
        AccessoryCamWrapper accessoryCamWrapper;
        int i6;
        boolean z2 = liveMakeupCtrl.q;
        int i7 = frame.g;
        if (i7 < 0) {
            synchronized (liveMakeupCtrl.o) {
                try {
                    float[] fArr = liveMakeupCtrl.n;
                    if (liveMakeupCtrl.m != null && ((Math.abs(fArr[0]) >= 0.01d || Math.abs(fArr[1]) >= 0.01d || Math.abs(fArr[2]) >= 0.01d) && Math.abs(fArr[2]) <= 9.2f)) {
                        if (Math.abs(fArr[0]) > Math.abs(fArr[1]) + 3.0f) {
                            float f2 = fArr[0];
                            int i8 = liveMakeupCtrl.p;
                            i6 = f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? (i8 + Sink.ORIENTATION_270) % 360 : (i8 + 90) % 360;
                        } else {
                            float f3 = fArr[1];
                            i6 = liveMakeupCtrl.p;
                            if (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                i6 = (i6 + Sink.ORIENTATION_180) % 360;
                            }
                        }
                        i7 = i6;
                    } else {
                        i7 = 90;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i9 = i7;
        BaseVenus baseVenus = liveMakeupCtrl.f40716c;
        if (baseVenus.f40074e && baseVenus.f40075f != liveMakeupCtrl.l1) {
            BaseVenus baseVenus2 = liveMakeupCtrl.f40716c;
            int i10 = baseVenus2.f40075f ? 1 : liveMakeupCtrl.D;
            if (i10 < 0 || i10 >= 4) {
                i10 = 1;
            }
            UIMakeupJNI.CUIMakeupLive_SetMaxDetectedFaceNumber(baseVenus2.f40398a, baseVenus2, i10);
            liveMakeupCtrl.l1 = liveMakeupCtrl.f40716c.f40075f;
        }
        synchronized (liveMakeupCtrl.x) {
            try {
                int i11 = liveMakeupCtrl.y;
                int i12 = liveMakeupCtrl.z;
                int i13 = liveMakeupCtrl.A;
                int i14 = liveMakeupCtrl.B;
                if (i11 != CLMakeupLiveFilter.a.f25660a) {
                    if (i14 == 0) {
                        if (liveMakeupCtrl.C) {
                            BaseVenus baseVenus3 = liveMakeupCtrl.f40716c;
                            UIMakeupJNI.CUIMakeupLive_TrackYUV420Biplanar(baseVenus3.f40398a, baseVenus3, frame.d, frame.f40082b, frame.f40083c, i9, z2, liveMakeupCtrl.d, frame.f40085f, liveMakeupCtrl.l1);
                        }
                        return;
                    }
                    liveMakeupCtrl.B = i14 - 1;
                }
                PerformanceCounter.Tracer tracerA = liveMakeupCtrl.o1.a();
                if (liveMakeupCtrl.d) {
                    if (frame.f40085f) {
                        BaseVenus baseVenus4 = liveMakeupCtrl.f40716c;
                        UIMakeupJNI.CUIMakeupLive_AnalyzeFrameYUV420Biplanar(baseVenus4.f40398a, baseVenus4, frame.d, frame.f40082b, frame.f40083c, i9, z2);
                        i9 = i9;
                        z2 = z2;
                    }
                    liveMakeupCtrl.q();
                    BaseVenus baseVenus5 = liveMakeupCtrl.f40716c;
                    i5 = i9;
                    z = z2;
                    i4 = i13;
                    i3 = i12;
                    i2 = i14;
                    UIMakeupJNI.CUIMakeupLive_TrackYUV420Biplanar(baseVenus5.f40398a, baseVenus5, frame.d, frame.f40082b, frame.f40083c, i5, z, true, false, false);
                } else {
                    i2 = i14;
                    i3 = i12;
                    i4 = i13;
                    liveMakeupCtrl.q();
                    BaseVenus baseVenus6 = liveMakeupCtrl.f40716c;
                    i5 = i9;
                    z = z2;
                    UIMakeupJNI.CUIMakeupLive_TrackYUV420Biplanar(baseVenus6.f40398a, baseVenus6, frame.d, frame.f40082b, frame.f40083c, i5, z, false, frame.f40085f, liveMakeupCtrl.l1);
                }
                int i15 = i5;
                boolean z3 = z;
                BaseVenus baseVenus7 = liveMakeupCtrl.f40716c;
                boolean zCUIMakeupLive_GetFaceRectangle = UIMakeupJNI.CUIMakeupLive_GetFaceRectangle(baseVenus7.f40398a, baseVenus7, liveMakeupCtrl.f40721j, liveMakeupCtrl.q1);
                boolean zB = liveMakeupCtrl.f40719h.b(frame.f40082b, frame.f40083c);
                if (liveMakeupCtrl.i1 && (accessoryCamWrapper = liveMakeupCtrl.j1) != null) {
                    l lVar = liveMakeupCtrl.f40719h;
                    accessoryCamWrapper.sendCameraFrame(frame.d, frame.f40082b, frame.f40083c, i15, z3, lVar.I[0], lVar.d[0]);
                    liveMakeupCtrl.k1 = (CLNecklaceFilter.LiveNecklaceMetadata[]) liveMakeupCtrl.j1.getMetadata();
                }
                tracerA.J0();
                if (!zCUIMakeupLive_GetFaceRectangle || !zB) {
                    for (int i16 = 0; i16 < liveMakeupCtrl.D; i16++) {
                        liveMakeupCtrl.f40721j[i16].setEmpty();
                    }
                }
                synchronized (liveMakeupCtrl.y1) {
                    try {
                        liveMakeupCtrl.z1 = frame.f40082b;
                        liveMakeupCtrl.A1 = frame.f40083c;
                        liveMakeupCtrl.B1 = i15;
                        liveMakeupCtrl.C1 = liveMakeupCtrl.p;
                        boolean[] zArr = liveMakeupCtrl.f40719h.d;
                        int i17 = 0;
                        for (int i18 = 0; i18 < liveMakeupCtrl.D; i18++) {
                            if (zArr[i18]) {
                                liveMakeupCtrl.E1[i17].set(liveMakeupCtrl.f40721j[i18]);
                                i17++;
                            }
                        }
                        liveMakeupCtrl.D1 = i17;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                PupilAnalysisCallback pupilAnalysisCallback = liveMakeupCtrl.s1;
                boolean z4 = liveMakeupCtrl.u1;
                boolean z5 = pupilAnalysisCallback != liveMakeupCtrl.r1;
                liveMakeupCtrl.r1 = pupilAnalysisCallback;
                BaseVenus baseVenus8 = liveMakeupCtrl.f40716c;
                if (!UIMakeupJNI.CUIMakeupLive_EnableTrafficLightForEstimatingPD(baseVenus8.f40398a, baseVenus8, z4)) {
                    Log.d("LiveMakeupCtrl", "[callbackEstimatedPupilDistance] EnableTrafficLightForEstimatingPD failed");
                }
                if (z5 && z4) {
                    BaseVenus baseVenus9 = liveMakeupCtrl.f40716c;
                    if (!UIMakeupJNI.CUIMakeupLive_RestartEstimatingPupilDistance(baseVenus9.f40398a, baseVenus9, 0)) {
                        Log.d("LiveMakeupCtrl", "[callbackEstimatedPupilDistance] RestartEstimatingPupilDistance failed");
                    }
                }
                if (pupilAnalysisCallback != null) {
                    TrafficLightCheckResult trafficLightCheckResult = new TrafficLightCheckResult();
                    BaseVenus baseVenus10 = liveMakeupCtrl.f40716c;
                    if (!UIMakeupJNI.CUIMakeupLive_GetTrafficLightCheckResult(baseVenus10.f40398a, baseVenus10, trafficLightCheckResult)) {
                        Log.d("LiveMakeupCtrl", "[callbackEstimatedPupilDistance] GetTrafficLightCheckResult failed");
                    }
                    EstimatedPDInfo estimatedPDInfo = new EstimatedPDInfo();
                    if (z4 && trafficLightCheckResult.m_is_check_result_valid) {
                        BaseVenus baseVenus11 = liveMakeupCtrl.f40716c;
                        if (!UIMakeupJNI.CUIMakeupLive_GetEstimatedPupilDistance(baseVenus11.f40398a, baseVenus11, 0, estimatedPDInfo)) {
                            Log.d("LiveMakeupCtrl", "[callbackEstimatedPupilDistance] GetEstimatedPupilDistance failed");
                        }
                    }
                    MakeupCheckResult makeupCheckResult = new MakeupCheckResult();
                    BaseVenus baseVenus12 = liveMakeupCtrl.f40716c;
                    UIMakeupJNI.CUIMakeupLive_GetMakeupCheckResult(baseVenus12.f40398a, baseVenus12, makeupCheckResult);
                    trafficLightCheckResult.m_lighting_quality = makeupCheckResult.m_lighting_quality;
                    trafficLightCheckResult.m_is_check_result_valid = z4 ? trafficLightCheckResult.m_is_check_result_valid && makeupCheckResult.m_is_check_result_valid : makeupCheckResult.m_is_check_result_valid;
                    pupilAnalysisCallback.onAnalyze(estimatedPDInfo, trafficLightCheckResult);
                }
                QualityCheckCallback qualityCheckCallback = liveMakeupCtrl.t1;
                if (liveMakeupCtrl.v1) {
                    MakeupCheckResult makeupCheckResult2 = new MakeupCheckResult();
                    BaseVenus baseVenus13 = liveMakeupCtrl.f40716c;
                    UIMakeupJNI.CUIMakeupLive_GetMakeupCheckResult(baseVenus13.f40398a, baseVenus13, makeupCheckResult2);
                    qualityCheckCallback.onAnalyze(makeupCheckResult2);
                }
                if (i11 != CLMakeupLiveFilter.a.f25660a && i2 == 1) {
                    Rect[] rectArr = liveMakeupCtrl.f40721j;
                    c cVar = new c();
                    Rect[] rectArr2 = new Rect[rectArr.length];
                    for (int i19 = 0; i19 < rectArr.length; i19++) {
                        rectArr2[i19] = new Rect(rectArr[i19]);
                    }
                    liveMakeupCtrl.p1 = cVar;
                }
                synchronized (liveMakeupCtrl.f40718f) {
                    try {
                        q qVar = liveMakeupCtrl.Z;
                        if (qVar != null) {
                            qVar.run();
                            liveMakeupCtrl.Z = null;
                        }
                        GPUImageRenderer gPUImageRenderer = liveMakeupCtrl.f40717e;
                        GPUImageRenderer.YUVBuffer.Builder builder = new GPUImageRenderer.YUVBuffer.Builder();
                        builder.f25483a = frame.d;
                        builder.f25484b = frame.f40082b;
                        builder.f25485c = frame.f40083c;
                        builder.d = frame.f40081a;
                        gPUImageRenderer.k(new GPUImageRenderer.YUVBuffer(builder), frame.f40084e);
                        if (liveMakeupCtrl.i1 && (necklaceFilter = liveMakeupCtrl.h1) != null && liveMakeupCtrl.j1 != null) {
                            necklaceFilter.SetNecklaceMetadata(liveMakeupCtrl.k1);
                        }
                        l lVar2 = liveMakeupCtrl.f40719h;
                        lVar2.a(lVar2.d, lVar2.f40908e);
                        synchronized (liveMakeupCtrl.x1) {
                            try {
                                l lVar3 = liveMakeupCtrl.f40719h;
                                CLShowAlignFilter.ShowAlignData[] showAlignDataArr = lVar3.G;
                                List[] listArr = lVar3.H;
                                Iterator it = liveMakeupCtrl.x1.iterator();
                                while (it.hasNext()) {
                                    ((e) it.next()).b(showAlignDataArr, listArr);
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                        liveMakeupCtrl.g.L(i11);
                        CLShowAlignFilter.ShowAlignData[] showAlignDataArr2 = new CLShowAlignFilter.ShowAlignData[3];
                        for (int i20 = 0; i20 < 3; i20++) {
                            CLShowAlignFilter.ShowAlignData showAlignData = new CLShowAlignFilter.ShowAlignData();
                            showAlignDataArr2[i20] = showAlignData;
                            showAlignData.frame_width = 1;
                            showAlignData.frame_height = 1;
                        }
                        liveMakeupCtrl.g.d0(showAlignDataArr2);
                        GPUImageBackgroundFilter gPUImageBackgroundFilter = liveMakeupCtrl.f1;
                        if (gPUImageBackgroundFilter != null) {
                            gPUImageBackgroundFilter.q(i4);
                            liveMakeupCtrl.f1.getClass();
                        }
                        GPUImageBackgroundFilter gPUImageBackgroundFilter2 = liveMakeupCtrl.g1;
                        if (gPUImageBackgroundFilter2 != null) {
                            gPUImageBackgroundFilter2.q(i3);
                            liveMakeupCtrl.g1.getClass();
                        }
                        liveMakeupCtrl.c1.a(ImmutableList.v(liveMakeupCtrl.f40719h.x));
                        com.perfectcorp.perfectlib.makeupcam.camera.c cVar2 = liveMakeupCtrl.d1;
                        if (cVar2 != null) {
                            cVar2.d();
                        }
                        g gVar = liveMakeupCtrl.n1;
                        if (gVar != null) {
                            gVar.f40890e = liveMakeupCtrl.f40717e.I;
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public static byte[] i(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int rowBytes = bitmap.getRowBytes();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(rowBytes * height);
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        byte[] bArrArray = byteBufferAllocate.array();
        int i2 = width << 2;
        if (i2 == rowBytes) {
            return bArrArray;
        }
        byte[] bArr = new byte[(width * height) << 2];
        for (int i3 = 0; i3 < height; i3++) {
            System.arraycopy(bArrArray, i3 * rowBytes, bArr, i3 * i2, i2);
        }
        return bArr;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final void a(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6, ArrayList arrayList7, ArrayList arrayList8, ArrayList arrayList9, ArrayList arrayList10, ArrayList arrayList11, ArrayList arrayList12, ArrayList arrayList13, q qVar) {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        n[] nVarArr;
        n[] nVarArr2;
        EarringJointSettings[][] earringJointSettingsArr;
        EarringChainSettings[][] earringChainSettingsArr;
        EarringObjectSettings[][] earringObjectSettingsArr;
        EarringConvexColliders[][] earringConvexCollidersArr;
        ApplyEffectCtrl.L.lock();
        try {
            this.Y = Math.min(arrayList7.size(), 20);
            Iterator it = arrayList7.iterator();
            int i2 = 0;
            while (true) {
                boolean zHasNext = it.hasNext();
                fArr = this.T;
                fArr2 = this.S;
                fArr3 = this.P;
                iArr = this.O;
                iArr2 = this.N;
                iArr3 = this.M;
                nVarArr = this.L;
                nVarArr2 = this.K;
                earringJointSettingsArr = this.R;
                earringChainSettingsArr = this.Q;
                earringObjectSettingsArr = this.W;
                if (!zHasNext) {
                    break;
                }
                List list = (List) it.next();
                Iterator it2 = it;
                for (int i3 = 0; i3 < 50; i3++) {
                    earringObjectSettingsArr[i2][i3] = new EarringObjectSettings();
                }
                for (int i4 = 0; i4 < list.size(); i4++) {
                    earringObjectSettingsArr[i2][i4] = (EarringObjectSettings) list.get(i4);
                }
                nVarArr2[i2] = (n) arrayList.get(i2);
                nVarArr[i2] = (n) arrayList2.get(i2);
                iArr3[i2] = ((Integer) arrayList3.get(i2)).intValue();
                iArr2[i2] = ((Integer) arrayList4.get(i2)).intValue();
                iArr[i2] = ((Integer) arrayList5.get(i2)).intValue();
                fArr3[i2] = ((Float) arrayList6.get(i2)).floatValue();
                for (int i5 = 0; i5 < 50; i5++) {
                    earringChainSettingsArr[i2][i5] = new EarringChainSettings();
                }
                List list2 = (List) arrayList8.get(i2);
                for (int i6 = 0; i6 < list2.size(); i6++) {
                    earringChainSettingsArr[i2][i6] = (EarringChainSettings) list2.get(i6);
                }
                for (int i7 = 0; i7 < 50; i7++) {
                    earringJointSettingsArr[i2][i7] = new EarringJointSettings();
                }
                List list3 = (List) arrayList9.get(i2);
                for (int i8 = 0; i8 < list3.size(); i8++) {
                    earringJointSettingsArr[i2][i8] = (EarringJointSettings) list3.get(i8);
                }
                fArr2[i2] = ((Float) arrayList10.get(i2)).floatValue();
                fArr[i2] = ((Float) arrayList11.get(i2)).floatValue();
                int i9 = 0;
                while (true) {
                    earringConvexCollidersArr = this.V;
                    if (i9 >= 50) {
                        break;
                    }
                    earringConvexCollidersArr[i2][i9] = new EarringConvexColliders();
                    i9++;
                }
                List list4 = (List) arrayList12.get(i2);
                for (int i10 = 0; i10 < list4.size(); i10++) {
                    earringConvexCollidersArr[i2][i10] = (EarringConvexColliders) list4.get(i10);
                }
                ArrayList arrayList14 = (ArrayList) arrayList13.get(i2);
                for (int i11 = 0; i11 < 16; i11++) {
                    this.X[(i2 << 4) + i11] = ((Float) arrayList14.get(i11)).floatValue();
                }
                i2++;
                it = it2;
            }
            while (i2 < 20) {
                for (int i12 = 0; i12 < 50; i12++) {
                    earringObjectSettingsArr[i2][i12] = new EarringObjectSettings();
                }
                nVarArr2[i2] = new n();
                nVarArr[i2] = new n();
                iArr3[i2] = -1;
                iArr2[i2] = -1;
                iArr[i2] = -2;
                fArr3[i2] = 0.0f;
                for (int i13 = 0; i13 < 50; i13++) {
                    earringChainSettingsArr[i2][i13] = new EarringChainSettings();
                }
                for (int i14 = 0; i14 < 50; i14++) {
                    earringJointSettingsArr[i2][i14] = new EarringJointSettings();
                }
                fArr2[i2] = 0.0f;
                fArr[i2] = 0.0f;
                i2++;
            }
            this.Z = qVar;
        } finally {
            ApplyEffectCtrl.L.unlock();
        }
    }

    public final a b(boolean z, boolean z2, boolean z3, boolean z4, FrameProcessingThread.Frame frame) {
        x.a[] aVarArr;
        Threads.b();
        Log.g(3, "PICTURE_TAKEN", "inside capture image with isCameraFacingBack: " + z + ", isPhotoFlipOn: " + z2);
        ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
        writeLock.lock();
        try {
            synchronized (this.x) {
                try {
                    this.y = z4 ? CLMakeupLiveFilter.a.d : CLMakeupLiveFilter.a.f25662c;
                    this.z = GPUImageBackgroundFilter.b.f25722c;
                    this.A = GPUImageBackgroundFilter.b.f25721b;
                    this.B = 1;
                    this.C = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            writeLock.unlock();
            if (frame != null) {
                this.f40722k.sendNewFrame(frame);
            }
            if (PfCommons.b().getResources().getConfiguration().orientation == 2) {
                CLMakeupLiveFilter cLMakeupLiveFilter = this.g;
                cLMakeupLiveFilter.l0.q = 90;
                cLMakeupLiveFilter.m0.q = 90;
            }
            x.a[] aVarArr2 = null;
            if (z4) {
                CLMakeupLiveFilter cLMakeupLiveFilter2 = this.g;
                cLMakeupLiveFilter2.getClass();
                x.a[] aVarArr3 = new x.a[2];
                try {
                    synchronized (cLMakeupLiveFilter2.f1) {
                        try {
                            if (!cLMakeupLiveFilter2.g1) {
                                cLMakeupLiveFilter2.f1.wait();
                            }
                            cLMakeupLiveFilter2.g1 = false;
                            aVarArr3[0] = cLMakeupLiveFilter2.e1;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    synchronized (cLMakeupLiveFilter2.i1) {
                        try {
                            if (!cLMakeupLiveFilter2.j1) {
                                cLMakeupLiveFilter2.i1.wait();
                            }
                            cLMakeupLiveFilter2.j1 = false;
                            aVarArr3[1] = cLMakeupLiveFilter2.h1;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    aVarArr2 = aVarArr3;
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                    Thread.currentThread().interrupt();
                }
                aVarArr = aVarArr2;
            } else {
                aVarArr = new x.a[]{null, this.g.D0(CLMakeupLiveFilter.a.f25662c)};
            }
            CLMakeupLiveFilter cLMakeupLiveFilter3 = this.g;
            cLMakeupLiveFilter3.g1 = false;
            cLMakeupLiveFilter3.j1 = false;
            c cVar = this.p1;
            if (z3) {
                synchronized (this.x) {
                    this.y = CLMakeupLiveFilter.a.f25660a;
                    int i2 = GPUImageBackgroundFilter.b.f25720a;
                    this.z = i2;
                    this.A = i2;
                }
            }
            return new b(z, z2, false, z4, aVarArr, cVar).call();
        } catch (Throwable th4) {
            ApplyEffectCtrl.L.unlock();
            throw th4;
        }
    }

    public final void c(int i2, int i3) {
        if ((this.s > 0 && this.t > 0) || this.s != i2 || this.t != i3) {
            synchronized (this.u) {
                this.u.set(false);
            }
        }
        this.s = i2;
        this.t = i3;
        if (this.u.get()) {
            return;
        }
        this.f40722k.a();
    }

    public final void d(ViewGroup viewGroup, boolean z) {
        g gVar;
        this.f40717e.L = z;
        if (z) {
            if (viewGroup == null) {
                Log.g(5, "LiveMakeupCtrl", "viewGroup is null, disabling FPS mode");
                z = false;
            } else {
                if (this.n1 == null) {
                    this.n1 = new g();
                }
                g gVar2 = this.n1;
                if (!gVar2.f40891f) {
                    gVar2.f40891f = true;
                    Context context = viewGroup.getContext();
                    TextView textView = new TextView(context);
                    gVar2.f40889c = textView;
                    textView.setTextColor(-1);
                    gVar2.f40889c.setBackgroundColor(com.batch.android.q0.b.v);
                    gVar2.f40889c.setTextSize(14.0f);
                    gVar2.f40889c.setGravity(17);
                    gVar2.f40889c.setText("FPS: 0.0");
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 49);
                    layoutParams.topMargin = 50;
                    if (viewGroup instanceof FrameLayout) {
                        viewGroup.addView(gVar2.f40889c, layoutParams);
                    } else {
                        FrameLayout frameLayout = new FrameLayout(context);
                        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
                        int iIndexOfChild = viewGroup2.indexOfChild(viewGroup);
                        viewGroup2.removeView(viewGroup);
                        viewGroup2.addView(frameLayout, iIndexOfChild, viewGroup.getLayoutParams());
                        frameLayout.addView(viewGroup);
                        frameLayout.addView(gVar2.f40889c, layoutParams);
                    }
                    Timer timer = new Timer();
                    gVar2.d = timer;
                    timer.scheduleAtFixedRate(new h(gVar2), 0L, 500L);
                }
            }
        }
        if (z || (gVar = this.n1) == null) {
            return;
        }
        gVar.f40891f = false;
        TextView textView2 = gVar.f40889c;
        if (textView2 != null) {
            ViewGroup viewGroup3 = (ViewGroup) textView2.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(gVar.f40889c);
            }
            gVar.f40889c = null;
        }
        Timer timer2 = gVar.d;
        if (timer2 != null) {
            timer2.cancel();
            gVar.d = null;
        }
    }

    public final void f(List list) {
        synchronized (this.x1) {
            this.x1.clear();
            this.x1.addAll(list);
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final LiveSettingCtrl g() {
        return this.v;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final CLMakeupLiveFilter getFilter() {
        return this.g;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final void h(BackgroundPayload backgroundPayload) {
        if (this.d1 == null) {
            return;
        }
        this.f40722k.post(new aa0(this, backgroundPayload, 0));
    }

    public final void j(boolean z) {
        ApplyEffectCtrl.L.lock();
        try {
            this.b1 = z;
            BaseVenus baseVenus = this.f40716c;
            int i2 = 1;
            int i3 = !this.b1 ? 1 : 0;
            baseVenus.getClass();
            if (i3 >= 0 && i3 < 4) {
                i2 = i3;
            }
            if (!UIMakeupJNI.CUIMakeupLive_SetMaxDetectedFaceNumber(baseVenus.f40398a, baseVenus, i2)) {
                Log.d("LiveMakeupCtrl", "SetMaxDetectedFaceNumber failed.");
            }
        } finally {
            ApplyEffectCtrl.L.unlock();
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final int k() {
        return this.t0;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final void l(LipShapeParameters lipShapeParameters, int i2) {
        LipShapeParameters[] lipShapeParametersArr = this.h0;
        if (lipShapeParametersArr.length > i2) {
            lipShapeParametersArr[i2] = lipShapeParameters;
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final FunStickerTemplate m() {
        return this.c1.g.f40898a;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final void n(int i2, boolean z) {
        ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
        writeLock.lock();
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean z2 = false;
        if (i2 == 0) {
            try {
                BaseVenus baseVenus = this.f40716c;
                UIMakeupJNI.CUIMakeupLive_SetSkinSmoothFilterStatus(baseVenus.f40398a, baseVenus, !this.m1 && z, this.m1 ? 0.0f : this.t0, this.m1 ? 0.0f : this.t0);
            } catch (Throwable th) {
                ApplyEffectCtrl.L.unlock();
                throw th;
            }
        }
        BaseVenus baseVenus2 = this.f40716c;
        boolean z3 = this.m1 && z;
        float f3 = this.m1 ? this.t0 : 0.0f;
        if (this.m1) {
            f2 = this.t0;
        }
        UIMakeupJNI.CUIMakeupLive_SetSkinSmoothV2FilterStatus(baseVenus2.f40398a, baseVenus2, z3, f3, f2, i2);
        writeLock.unlock();
        this.g.E(CLMakeupLiveFilter.MakeupLiveFeatures.SMOOTH, !this.m1 && z);
        CLMakeupLiveFilter cLMakeupLiveFilter = this.g;
        CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = CLMakeupLiveFilter.MakeupLiveFeatures.SMOOTH_V2;
        if (this.m1 && z) {
            z2 = true;
        }
        cLMakeupLiveFilter.E(makeupLiveFeatures, z2);
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final BaseVenus o() {
        return this.f40716c;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        synchronized (this.o) {
            try {
                int rotation = this.f40715b.getDefaultDisplay().getRotation();
                if (rotation == 0) {
                    float[] fArr = this.n;
                    float[] fArr2 = sensorEvent.values;
                    fArr[0] = fArr2[0];
                    fArr[1] = fArr2[1];
                    fArr[2] = fArr2[2];
                } else if (rotation == 1) {
                    float[] fArr3 = this.n;
                    float[] fArr4 = sensorEvent.values;
                    fArr3[0] = -fArr4[1];
                    fArr3[1] = fArr4[0];
                    fArr3[2] = fArr4[2];
                } else if (rotation == 2) {
                    float[] fArr5 = this.n;
                    float[] fArr6 = sensorEvent.values;
                    fArr5[0] = -fArr6[0];
                    fArr5[1] = -fArr6[1];
                    fArr5[2] = fArr6[2];
                } else if (rotation == 3) {
                    float[] fArr7 = this.n;
                    float[] fArr8 = sensorEvent.values;
                    fArr7[0] = fArr8[1];
                    fArr7[1] = -fArr8[0];
                    fArr7[2] = fArr8[2];
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p() {
        this.f40722k = new d();
        SensorManager sensorManager = (SensorManager) PfCommons.b().getSystemService("sensor");
        this.l = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(9);
        this.m = defaultSensor;
        if (defaultSensor == null) {
            this.m = this.l.getDefaultSensor(1);
        }
    }

    public final void q() {
        int i2;
        int i3;
        float f2;
        boolean z;
        int i4;
        CLMakeupLiveConcealerFilter.ConcealerMode concealerMode;
        int i5;
        int i6;
        int i7;
        int i8;
        LiveParameters.Reshape[] reshapeArr;
        boolean z2;
        LiveSettingCtrl liveSettingCtrl = this.v;
        Iterator<E> it = this.G.iterator();
        while (it.hasNext()) {
            ((LiveParameters) it.next()).update();
        }
        boolean[] zArr = this.H;
        BeautyMode beautyMode = BeautyMode.SKIN_TONER;
        Arrays.fill(zArr, liveSettingCtrl.o(beautyMode));
        FoundationPayload foundationPayload = (FoundationPayload) liveSettingCtrl.l.get(beautyMode);
        int[] iArr = this.I;
        if (foundationPayload == null || (i2 = foundationPayload.f40648a) == -1000) {
            i2 = 0;
        }
        Arrays.fill(iArr, i2);
        if (foundationPayload == null || (i3 = foundationPayload.f40649b) == -1000) {
            i3 = -1;
        }
        int i9 = i3;
        LiveParameters.Eyebrow.Setting setting = this.E.f40731a;
        boolean zO = liveSettingCtrl.o(BeautyMode.EYE_CONTACT);
        int i10 = zO ? liveSettingCtrl.o : 0;
        boolean[] zArr2 = new boolean[3];
        int[] iArr2 = new int[3];
        float[] fArr = new float[3];
        BlushPayload blushPayload = (BlushPayload) liveSettingCtrl.l.get(BeautyMode.BLUSH);
        if (blushPayload != null) {
            int size = blushPayload.f40586a.size();
            List list = blushPayload.f40586a;
            if (size == 1) {
                BlushPayload.Setting setting2 = (BlushPayload.Setting) list.get(0);
                YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(setting2.f40592f).get(setting2.d);
                int iA = BlushPayload.b(makeupColor.g.r).a();
                f2 = makeupColor.g.l;
                z = true;
                i4 = iA;
            } else {
                if (list.size() > 1) {
                    for (int i11 = 0; i11 < blushPayload.f40586a.size(); i11++) {
                        BlushPayload.Setting setting3 = (BlushPayload.Setting) blushPayload.f40586a.get(i11);
                        YMKPrimitiveData.MakeupColor makeupColor2 = (YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(setting3.f40592f).get(setting3.d);
                        iArr2[i11] = BlushPayload.b(makeupColor2.g.r).a();
                        fArr[i11] = makeupColor2.g.l;
                        zArr2[i11] = true;
                    }
                }
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                z = false;
                i4 = 0;
            }
        } else {
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            z = false;
            i4 = 0;
        }
        float f3 = f2;
        BeautyMode beautyMode2 = BeautyMode.CONCEALER;
        ConcealerPayload concealerPayload = (ConcealerPayload) liveSettingCtrl.l.get(beautyMode2);
        if (!liveSettingCtrl.o(beautyMode2) || concealerPayload == null) {
            Arrays.fill(this.J, false);
            concealerMode = CLMakeupLiveConcealerFilter.ConcealerMode.CONCEALER_MODE_SPOT_DARK_CIRCLE;
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
        } else {
            Arrays.fill(this.J, true);
            List listE = liveSettingCtrl.e(beautyMode2);
            YMKPrimitiveData.MakeupColor makeupColor3 = (listE == null || listE.isEmpty()) ? null : (YMKPrimitiveData.MakeupColor) listE.get(0);
            Objects.requireNonNull(makeupColor3);
            int i12 = makeupColor3.d;
            int i13 = makeupColor3.f40791e;
            int i14 = concealerPayload.f40595a;
            int i15 = concealerPayload.f40596b;
            concealerMode = concealerPayload.f40597c;
            i6 = i13;
            i8 = i12;
            i7 = i14;
            i5 = i15;
        }
        CLMakeupLiveConcealerFilter.ConcealerMode concealerMode2 = concealerMode;
        ApplyEffectCtrl.L.lock();
        try {
            BeautyMode beautyMode3 = BeautyMode.EYE_BROW;
            if (liveSettingCtrl.o(beautyMode3)) {
                BaseVenus baseVenus = this.f40716c;
                UIMakeupJNI.CUIMakeupLive_SetEnableEyebrowGoldenRatio(baseVenus.f40398a, baseVenus, setting.f40741k);
                BaseVenus baseVenus2 = this.f40716c;
                UIMakeupJNI.CUIMakeupLive_SetEyebrowMatchOriginalThickness(baseVenus2.f40398a, baseVenus2, setting.l);
            }
            BaseVenus baseVenus3 = this.f40716c;
            boolean zO2 = liveSettingCtrl.o(beautyMode3);
            int i16 = setting.f40734b;
            VN_EyebrowMode vN_EyebrowMode = setting.f40733a;
            int i17 = setting.f40735c;
            int i18 = setting.d;
            int i19 = setting.f40736e;
            int i20 = setting.f40737f;
            int i21 = setting.g;
            int i22 = setting.f40738h;
            int i23 = setting.f40739i;
            int i24 = setting.f40740j;
            boolean zB = this.c1.b();
            boolean[] zArr3 = this.J;
            boolean[] zArr4 = this.H;
            int[] iArr3 = this.I;
            boolean[] zArrC = this.c1.c();
            LiveParameters.Reshape[] reshapeArr2 = this.F;
            Iterator it2 = ApplyEffectCtrl.J.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    reshapeArr = reshapeArr2;
                    z2 = false;
                    break;
                } else {
                    reshapeArr = reshapeArr2;
                    if (liveSettingCtrl.o((BeautyMode) it2.next())) {
                        z2 = true;
                        break;
                    }
                    reshapeArr2 = reshapeArr;
                }
            }
            boolean zO3 = liveSettingCtrl.o(BeautyMode.FACE_ART);
            boolean zO4 = liveSettingCtrl.o(BeautyMode.FACE_ART_LAYER_2);
            boolean zO5 = liveSettingCtrl.o(BeautyMode.HAIR_DYE);
            boolean zO6 = liveSettingCtrl.o(BeautyMode.FACE_CONTOUR);
            boolean zO7 = liveSettingCtrl.o(BeautyMode.TEETH_WHITENER);
            boolean zO8 = liveSettingCtrl.o(BeautyMode.LIP_LINER);
            boolean zO9 = liveSettingCtrl.o(BeautyMode.BRONZER);
            boolean zO10 = liveSettingCtrl.o(BeautyMode.CUBE_EYEWEAR);
            boolean z3 = liveSettingCtrl.o(BeautyMode.EARRINGS) && this.Y > 0;
            n[] nVarArr = this.K;
            n[] nVarArr2 = this.L;
            int[] iArr4 = this.M;
            int[] iArr5 = this.N;
            int[] iArr6 = this.O;
            float[] fArr2 = this.P;
            EarringObjectSettings[][] earringObjectSettingsArr = this.W;
            EarringChainSettings[][] earringChainSettingsArr = this.Q;
            EarringJointSettings[][] earringJointSettingsArr = this.R;
            float[] fArr3 = this.S;
            float[] fArr4 = this.T;
            EarringConvexColliders[][] earringConvexCollidersArr = this.V;
            float[] fArr5 = this.X;
            int i25 = this.Y;
            boolean z4 = this.e1;
            if (this.v.o(BeautyMode.LIP_STICK)) {
                this.w1 = true;
            }
            UIMakeupJNI.CUIMakeupLive_SetMakeupParameters(baseVenus3.f40398a, baseVenus3, zO2, i16, vN_EyebrowMode.a(), i17, i18, i19, i20, i21, i22, i23, i24, zO, i10, zB, zArr3, i5, i6, i7, i8, concealerMode2, zArr4, iArr3, i9, zArrC, reshapeArr, z2, zO3, zO4, zO5, zO6, zO7, zO8, zO9, zO10, z3, nVarArr, nVarArr2, iArr4, iArr5, iArr6, fArr2, earringObjectSettingsArr, earringChainSettingsArr, earringJointSettingsArr, fArr3, fArr4, earringConvexCollidersArr, fArr5, i25, z, i4, f3, z4, this.w1, zArr2[0], iArr2[0], fArr[0], zArr2[1], iArr2[1], fArr[1], zArr2[2], iArr2[2], fArr[2], this.l1 || liveSettingCtrl.o(BeautyMode.EYE_SHADOW), this.l1 || liveSettingCtrl.o(BeautyMode.EYE_LINES), this.h0);
        } finally {
            ApplyEffectCtrl.L.unlock();
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final boolean f() {
        return true;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final int c() {
        return this.t;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final AccessoryCamWrapper j() {
        return this.j1;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final NecklaceFilter i() {
        return this.h1;
    }

    public final class d extends FrameProcessingThread {
        public d() {
            super("FrameProcessingHandlerThreadImpl");
        }

        private void b() {
            if (LiveMakeupCtrl.this.u.get()) {
                return;
            }
            ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
            writeLock.lock();
            try {
                BaseVenus baseVenus = LiveMakeupCtrl.this.f40716c;
                UIMakeupJNI.CUIMakeupLive_InitialEyeModelCommonInfo(baseVenus.f40398a, baseVenus, EyeModel.f40610b, 450, 300);
                BaseVenus baseVenus2 = LiveMakeupCtrl.this.f40716c;
                UIMakeupJNI.CUIMakeupLive_InitialEyeContactModelCommonInfo(baseVenus2.f40398a, baseVenus2, 200, 200);
                BaseVenus baseVenus3 = LiveMakeupCtrl.this.f40716c;
                UIMakeupJNI.CUIMakeupLive_InitFaceDistortionModelCommonInfo(baseVenus3.f40398a, baseVenus3, 300, 300);
                LiveMakeupCtrl liveMakeupCtrl = LiveMakeupCtrl.this;
                BaseVenus baseVenus4 = liveMakeupCtrl.f40716c;
                int i2 = liveMakeupCtrl.s;
                int i3 = LiveMakeupCtrl.this.t;
                LiveSettingCtrl liveSettingCtrl = LiveMakeupCtrl.this.v;
                UIMakeupJNI.CUIMakeupLive_GetEyeContactModelParameters(baseVenus4.f40398a, baseVenus4, i2, i3, liveSettingCtrl.f40742a, liveSettingCtrl.f40743b, liveSettingCtrl.f40744c);
                writeLock.unlock();
                synchronized (LiveMakeupCtrl.this.u) {
                    LiveMakeupCtrl.this.u.set(true);
                    LiveMakeupCtrl.this.u.notifyAll();
                }
            } catch (Throwable th) {
                ApplyEffectCtrl.L.unlock();
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            try {
                b();
            } catch (OutOfMemoryError e2) {
                Log.e("LiveMakeupCtrl", "Out of memory when init eye model", e2);
            }
        }

        public final void a() {
            post(new q(this, 2));
        }

        @Override // com.perfectcorp.perfectlib.core.FrameProcessingThread
        public final void processing(FrameProcessingThread.Frame frame) {
            ApplyEffectCtrl.L.lock();
            try {
                try {
                    b();
                } catch (OutOfMemoryError e2) {
                    Log.e("LiveMakeupCtrl", "Out of memory when init eye model", e2);
                }
                LiveMakeupCtrl.e(LiveMakeupCtrl.this, frame);
            } finally {
                ApplyEffectCtrl.L.unlock();
            }
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final void d() {
        if (this.u.get()) {
            return;
        }
        synchronized (this.u) {
            while (!this.u.get()) {
                this.u.wait();
            }
        }
    }

    public class b implements Callable<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f40725a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f40726b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f40727c;
        private final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final x.a[] f40728e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final c f40729f;

        public b(boolean z, boolean z2, boolean z3, boolean z4, x.a[] aVarArr, c cVar) {
            this.f40725a = z;
            this.f40726b = z2;
            this.f40727c = z3;
            this.d = z4;
            this.f40728e = aVarArr;
            this.f40729f = cVar;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a call() {
            Bitmap bitmapA;
            Log.g(3, "PICTURE_TAKEN", "start createBitmap on background");
            Log.g(3, "CaptureImage", "createBitmap");
            boolean z = PfCommons.b().getResources().getConfiguration().orientation == 2;
            int rotation = LiveMakeupCtrl.this.f40715b.getDefaultDisplay().getRotation();
            if (!this.f40725a && !this.f40726b) {
                if (this.d) {
                    x.a aVar = this.f40728e[0];
                    int[] iArr = aVar.f25828c;
                    int i2 = aVar.f25826a;
                    int i3 = aVar.f25827b;
                    Bitmap.Config config = Bitmap.Config.ARGB_8888;
                    ImageUtils.a(i2, i3, i2, iArr);
                }
                x.a aVar2 = this.f40728e[1];
                int[] iArr2 = aVar2.f25828c;
                int i4 = aVar2.f25826a;
                int i5 = aVar2.f25827b;
                Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                ImageUtils.a(i4, i5, i4, iArr2);
            }
            if (this.d) {
                x.a aVar3 = this.f40728e[0];
                int i6 = aVar3.f25826a;
                int i7 = aVar3.f25827b;
                a(i6, i7);
                Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
                bitmapA = Bitmaps.a(i6, i7);
                bitmapA.setPixels(this.f40728e[0].f25828c, 0, i6, 0, 0, i6, i7);
                if (z) {
                    Matrix matrix = new Matrix();
                    matrix.postRotate(rotation == 1 ? 90.0f : 270.0f);
                    bitmapA = Bitmap.createBitmap(bitmapA, 0, 0, i6, i7, matrix, true);
                }
            } else {
                bitmapA = null;
            }
            x.a aVar4 = this.f40728e[1];
            int i8 = aVar4.f25826a;
            int i9 = aVar4.f25827b;
            a(i8, i9);
            Bitmap.Config config4 = Bitmap.Config.ARGB_8888;
            Bitmap bitmapA2 = Bitmaps.a(i8, i9);
            bitmapA2.setPixels(this.f40728e[1].f25828c, 0, i8, 0, 0, i8, i9);
            if (z) {
                Matrix matrix2 = new Matrix();
                matrix2.postRotate(rotation == 1 ? 90.0f : 270.0f);
                bitmapA2 = Bitmap.createBitmap(bitmapA2, 0, 0, i8, i9, matrix2, true);
            }
            a aVar5 = new a(bitmapA, bitmapA2);
            Log.g(3, "CaptureImage", "onImageCaptured");
            return aVar5;
        }

        private void a(int i2, int i3) {
            if (i2 <= 0 || i3 <= 0) {
                StringBuilder sbP = fc.p(i2, i3, "capture image width, height not valid!, width, ", " height, ", " m_makeup_live_filter width, ");
                sbP.append(LiveMakeupCtrl.this.g.getOutputWidth());
                sbP.append(" height, ");
                sbP.append(LiveMakeupCtrl.this.g.getOutputHeight());
                Log.g(3, "LiveMakeupCtrl", sbP.toString());
            }
        }
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final int b() {
        return this.s;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final void a(int i2) {
        this.t0 = i2;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
    public final boolean e() {
        return this.f40720i;
    }
}
