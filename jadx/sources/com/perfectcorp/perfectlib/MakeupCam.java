package com.perfectcorp.perfectlib;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveCubeEyewearFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.CLShowAlignFilter;
import com.cyberlink.clgpuimage.cosmetic.GPUImageBackgroundFilter;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.FramebufferRenderer;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.core.VenusModel$Assets;
import com.perfectcorp.perfectlib.core.VenusModel$Files;
import com.perfectcorp.perfectlib.exceptions.ModuleLoadFailedException;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.internal.NecklaceFilter;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.GPUImageFilterBuilder;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.getkeepsafe.relinker.ReLinker;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.aa0;
import defpackage.ac0;
import defpackage.bc0;
import defpackage.cc0;
import defpackage.cj;
import defpackage.d8;
import defpackage.fw;
import defpackage.gc0;
import defpackage.md;
import defpackage.mt;
import defpackage.o7;
import defpackage.pq0;
import defpackage.s7;
import defpackage.v40;
import defpackage.xb;
import defpackage.xw;
import java.lang.reflect.Proxy;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public final class MakeupCam implements ApplierTarget, CameraOperator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f39675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableSet f39676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseVenus f39677c;
    public final ApplyEffectParams d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam f39678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.makeupcam.video.e f39679f;
    public final CompositeDisposable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile OnPictureTakenListener f39680h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OnFrameAvailableListenerWrapper f39681i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicReference f39682j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final VideoCaptureSourceImpl f39683k;
    public CameraView l;
    public final EnumMap m;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.MakeupCam$2, reason: invalid class name */
    class AnonymousClass2 implements GPUImageRenderer.OnFrameAvailableListener<GPUImageRenderer.YUVBuffer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.perfectcorp.perfectlib.makeupcam.video.a f39688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ MakeupCam f39689b;

        @Override // com.cyberlink.clgpuimage.GPUImageRenderer.OnFrameAvailableListener
        public final void a(Object obj) {
            GPUImageRenderer.YUVBuffer yUVBuffer = (GPUImageRenderer.YUVBuffer) obj;
            long j2 = (this.f39689b.f39679f.g() || this.f39689b.f39679f.f41057b) ? yUVBuffer.d : -1L;
            com.perfectcorp.perfectlib.makeupcam.video.a aVar = this.f39688a;
            GPUImageRenderer.YUVBuffer.Builder builder = new GPUImageRenderer.YUVBuffer.Builder(yUVBuffer);
            builder.d = j2;
            aVar.a(new GPUImageRenderer.YUVBuffer(builder));
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.MakeupCam$4, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39691a;

        static {
            int[] iArr = new int[PluginPosition.values().length];
            f39691a = iArr;
            try {
                iArr[PluginPosition.FRONT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39691a[PluginPosition.BACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(MakeupCam makeupCam);
    }

    public interface CreateCallback2 {
        void onFailure(Throwable th);

        void onSuccess(MakeupCam makeupCam, FramebufferRenderer framebufferRenderer);
    }

    public static class FrameInfo {
        public static final int OPTION_FACE_RECT = 1;
        public int faceCount;
        public RectF[] faceRect;
    }

    public static final class GpuFilterNotReadyException extends IllegalStateException {
    }

    public static final class MakeupPluginFilter extends CLMakeupLivePluginFilter implements GPUImageRenderer.OnFrameAvailableListener<GPUImageRenderer.YUVBuffer>, LiveMakeupCtrl.e {
        public final MakeupPlugin p;

        public MakeupPluginFilter(MakeupPlugin makeupPlugin) {
            this.p = makeupPlugin;
        }

        @Override // com.cyberlink.clgpuimage.CLMakeupLivePluginFilter
        public final boolean GetEnabled() {
            return this.p.isEnabled();
        }

        @Override // com.cyberlink.clgpuimage.GPUImageRenderer.OnFrameAvailableListener
        public final void a(Object obj) {
            this.p.onFrameReady(((GPUImageRenderer.YUVBuffer) obj).d);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl.e
        public final void b(CLShowAlignFilter.ShowAlignData[] showAlignDataArr, List[] listArr) {
            CLShowAlignFilter.ShowAlignData showAlignData = showAlignDataArr[0];
            List list = listArr[0];
            this.p.setMetadata((showAlignData == null || !showAlignData.m_is_data_valid || list == null) ? FaceAlignmentData.f39583a : new FaceAlignmentData.Impl(showAlignData, list));
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void onDestroy() {
            this.p.onDestroy();
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
            this.p.onDraw(i2, floatBuffer, floatBuffer2);
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void onInit() {
            this.p.onInit();
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public final void onOutputSizeChanged(int i2, int i3) {
            this.p.onOutputSizeChanged(i2, i3);
        }
    }

    public static final class OnFrameAvailableListenerWrapper implements GPUImageRenderer.OnFrameAvailableListener<GPUImageRenderer.YUVBuffer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConcurrentLinkedQueue f39692a = new ConcurrentLinkedQueue();

        @Override // com.cyberlink.clgpuimage.GPUImageRenderer.OnFrameAvailableListener
        public final /* synthetic */ void a(Object obj) {
            GPUImageRenderer.YUVBuffer yUVBuffer = (GPUImageRenderer.YUVBuffer) obj;
            Iterator it = this.f39692a.iterator();
            while (it.hasNext()) {
                ((GPUImageRenderer.OnFrameAvailableListener) it.next()).a(yUVBuffer);
            }
        }
    }

    @FunctionalInterface
    public interface OnPictureTakenListener {
        public static final OnPictureTakenListener NOP = new y(4);

        void onTaken();
    }

    public interface PictureCallback {
        void onFailure(Throwable th);

        void onPictureTaken(Bitmap bitmap, Bitmap bitmap2);
    }

    public static final class Preferences {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BasicPreferences f39693a = new BasicPreferences(DatabaseSharedPreferences.a("MakeupPreferences"));
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface PupilAnalysisCallback {
        void onAnalyze(PupilData pupilData, PupilQualityCheck pupilQualityCheck);
    }

    public interface QualityCheckCallback {
        void onAnalyze(QualityCheck qualityCheck);
    }

    public interface ReleaseCallback {
        void onReleased();
    }

    public interface VideoCallback {
        void onFailure(Throwable th);

        void onFrameEncoded(long j2);
    }

    public MakeupCam(GPUImageRenderer gPUImageRenderer, final Consumer consumer, boolean z, AccessoryCamWrapper accessoryCamWrapper) throws Throwable {
        NecklaceFilter necklaceFilter;
        ApplyEffectParams applyEffectParams = new ApplyEffectParams();
        this.d = applyEffectParams;
        this.g = new CompositeDisposable();
        this.f39680h = OnPictureTakenListener.NOP;
        OnFrameAvailableListenerWrapper onFrameAvailableListenerWrapper = new OnFrameAvailableListenerWrapper();
        this.f39681i = onFrameAvailableListenerWrapper;
        this.f39682j = new AtomicReference();
        this.m = new EnumMap(PluginPosition.class);
        Set set = PerfectLib.d;
        if (!set.contains(Functionality.MAKEUP) && !set.contains(Functionality.HAIR_COLOR) && !set.contains(Functionality.FUN_STICKER) && !set.contains(Functionality.RESHAPE) && !set.contains(Functionality.EYEWEAR) && !set.contains(Functionality.EYEWEAR_3D) && !set.contains(Functionality.EARRINGS) && !set.contains(Functionality.BACKGROUND) && !set.contains(Functionality.NECKLACE)) {
            mt.i("Doesn't have a valid license.");
            throw null;
        }
        if (!ModuleConfig.p) {
            throw new ModuleLoadFailedException("Module 'PerfectLibFaceTracking' is missing.");
        }
        applyEffectParams.a(PerfectLib.f39738a);
        Context contextB = PfCommons.b();
        ReLinker.a(contextB, "PFMNN");
        ReLinker.a(contextB, "venus_tracking");
        ReLinker.a(contextB, "venus");
        BaseVenus baseVenus = new BaseVenus();
        this.f39677c = baseVenus;
        this.f39676b = a(set, baseVenus, applyEffectParams, true, accessoryCamWrapper, new AtomicBoolean());
        com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam = new com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam(baseVenus, gPUImageRenderer, GPUImageFilterBuilder.a(2, 0), applyEffectParams, accessoryCamWrapper) { // from class: com.perfectcorp.perfectlib.MakeupCam.1
            @Override // com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam
            public final Callable c(final ApplyEffectCtrl.Configuration configuration) {
                return new Callable<ApplyEffectCtrl.Configuration>() { // from class: com.perfectcorp.perfectlib.MakeupCam.1.1
                    @Override // java.util.concurrent.Callable
                    public /* synthetic */ ApplyEffectCtrl.Configuration call() throws Exception {
                        configuration.b();
                        MakeupCam.this.b();
                        return configuration;
                    }
                };
            }

            @Override // com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam
            public final void d(Runnable runnable) {
                consumer.accept(runnable);
            }
        };
        this.f39678e = makeupCam;
        makeupCam.f40751a.t0 = applyEffectParams.f40070i ? 70 : 0;
        makeupCam.f40751a.n(0, true);
        ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
        com.perfectcorp.perfectlib.makeupcam.video.e eVar = new com.perfectcorp.perfectlib.makeupcam.video.e(null);
        this.f39679f = eVar;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        anonymousClass2.f39689b = this;
        anonymousClass2.f39688a = eVar.f41056a.f41049a;
        onFrameAvailableListenerWrapper.f39692a.add(anonymousClass2);
        CLMakeupLiveFilter cLMakeupLiveFilter = makeupCam.f40751a.g;
        ArrayList arrayList = new ArrayList();
        LiveMakeupCtrl liveMakeupCtrl = makeupCam.f40751a;
        if (liveMakeupCtrl.i1 && (necklaceFilter = liveMakeupCtrl.h1) != null) {
            arrayList.add(necklaceFilter);
        }
        LiveMakeupCtrl liveMakeupCtrl2 = makeupCam.f40751a;
        if (liveMakeupCtrl2.e1) {
            arrayList.add(liveMakeupCtrl2.g1);
        }
        if (!arrayList.isEmpty()) {
            cLMakeupLiveFilter.k0(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(eVar.f41056a.f41049a);
        if (z) {
            VideoCaptureSourceImpl videoCaptureSourceImpl = new VideoCaptureSourceImpl();
            this.f39683k = videoCaptureSourceImpl;
            arrayList2.add(videoCaptureSourceImpl.f39996a);
        }
        cLMakeupLiveFilter.A0(arrayList2);
        LiveMakeupCtrl liveMakeupCtrl3 = makeupCam.f40751a;
        if (liveMakeupCtrl3.e1) {
            cLMakeupLiveFilter.r0(Collections.singletonList(liveMakeupCtrl3.f1));
        }
        gPUImageRenderer.h(cLMakeupLiveFilter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableSet a(Set set, BaseVenus baseVenus, ApplyEffectParams applyEffectParams, boolean z, AccessoryCamWrapper accessoryCamWrapper, AtomicBoolean atomicBoolean) {
        char c2;
        long j2;
        String str;
        String strB;
        String[] strArr;
        String strB2;
        char c3;
        String strB3;
        String[] strArr2;
        String strB4;
        char c4;
        Context contextB = PfCommons.b();
        PerfectLib.ModelPath modelPath = PerfectLib.g.f39514a;
        try {
            Log.b("Custom feature applied: " + ((com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a.C0199a) Single.e(new defpackage.n2(baseVenus, 8)).j(Schedulers.b()).c()).brand);
        } catch (Exception e2) {
            Log.e("MakeupCam", "Error applying custom feature", e2);
            d(baseVenus);
        }
        try {
            ImmutableSet.Builder builderS = ImmutableSet.s();
            atomicBoolean.set(false);
            if (applyEffectParams.f40070i || applyEffectParams.f40072k || applyEffectParams.l || applyEffectParams.m || applyEffectParams.n || applyEffectParams.o || applyEffectParams.p) {
                c2 = 0;
                j2 = 1000000;
                if (baseVenus.d) {
                    String[] strArr3 = new String[4];
                    Preconditions.i(baseVenus.g(strArr3));
                    Log.b("internal LV model versions=" + Arrays.toString(strArr3));
                    boolean z2 = modelPath.f39755a;
                    String str2 = modelPath.f39756b;
                    if (z2) {
                        c3 = 1;
                        strB3 = VenusModel$Assets.e(contextB, str2, new VenusModel$Assets(strArr3[0]));
                    } else {
                        c3 = 1;
                        strB3 = VenusModel$Files.b(str2, new VenusModel$Files(strArr3[0]));
                    }
                    boolean z3 = modelPath.f39755a;
                    String str3 = modelPath.f39756b;
                    if (z3) {
                        strArr2 = strArr3;
                        strB4 = VenusModel$Assets.e(contextB, str3, new VenusModel$Assets(strArr2[c3]));
                    } else {
                        strArr2 = strArr3;
                        strB4 = VenusModel$Files.b(str3, new VenusModel$Files(strArr2[c3]));
                    }
                    boolean z4 = modelPath.f39755a;
                    String str4 = modelPath.f39756b;
                    String strE = z4 ? VenusModel$Assets.e(contextB, str4, new VenusModel$Assets(strArr2[2])) : VenusModel$Files.b(str4, new VenusModel$Files(strArr2[2]));
                    boolean z5 = modelPath.f39755a;
                    String str5 = modelPath.f39756b;
                    String strE2 = z5 ? VenusModel$Assets.e(contextB, str5, new VenusModel$Assets(strArr2[3])) : VenusModel$Files.b(str5, new VenusModel$Files(strArr2[3]));
                    if (TextUtils.isEmpty(strB3) || TextUtils.isEmpty(strB4) || TextUtils.isEmpty(strE2)) {
                        Log.d("MakeupCam", "No face tracking model(s) found.");
                        Log.d("MakeupCam", "Please take the models from CSM : " + strB3 + ", " + strB4 + ", " + strE2);
                        throw new ModuleLoadFailedException("Makeup module load failed. Please take the models from CSM.");
                    }
                    if (TextUtils.isEmpty(strE)) {
                        Log.h("No second step eye model found.");
                    }
                    long jNanoTime = System.nanoTime();
                    baseVenus.q(strB3, strB4, strE, strE2);
                    Log.b("SetInternalLVModelPaths in " + ((System.nanoTime() - jNanoTime) / 1000000) + " ms");
                    Preconditions.i(UIMakeupJNI.CUIMakeupLive_IsModelLoaded(baseVenus.f40398a, baseVenus));
                    atomicBoolean.set(c3);
                    baseVenus.o();
                    Functionality functionality = Functionality.MAKEUP;
                    if (set.contains(functionality)) {
                        builderS.h(functionality);
                    }
                    Functionality functionality2 = Functionality.RESHAPE;
                    if (set.contains(functionality2)) {
                        builderS.h(functionality2);
                    }
                    if (z) {
                        Functionality functionality3 = Functionality.FUN_STICKER;
                        if (set.contains(functionality3)) {
                            builderS.h(functionality3);
                        }
                    }
                    str = ".mnn";
                } else {
                    String[] strArr4 = new String[4];
                    Preconditions.i(baseVenus.f(strArr4));
                    Log.b("internal model versions=" + Arrays.toString(strArr4));
                    boolean z6 = modelPath.f39755a;
                    String str6 = modelPath.f39756b;
                    if (z6) {
                        str = ".mnn";
                        strB = VenusModel$Assets.e(contextB, str6, new VenusModel$Assets("YMK_Davinci_", str, strArr4[0]));
                    } else {
                        str = ".mnn";
                        strB = VenusModel$Files.b(str6, new VenusModel$Files(strArr4[0]));
                    }
                    boolean z7 = modelPath.f39755a;
                    String str7 = modelPath.f39756b;
                    String strE3 = z7 ? VenusModel$Assets.e(contextB, str7, new VenusModel$Assets("YMK_Venus_", str, strArr4[1])) : VenusModel$Files.b(str7, new VenusModel$Files(strArr4[1]));
                    boolean z8 = modelPath.f39755a;
                    String str8 = modelPath.f39756b;
                    if (z8) {
                        strArr = strArr4;
                        strB2 = VenusModel$Assets.e(contextB, str8, new VenusModel$Assets("second_step_eye_model_", str, strArr[2]));
                    } else {
                        strArr = strArr4;
                        strB2 = VenusModel$Files.b(str8, new VenusModel$Files(strArr[2]));
                    }
                    boolean z9 = modelPath.f39755a;
                    String str9 = modelPath.f39756b;
                    String strE4 = z9 ? VenusModel$Assets.e(contextB, str9, new VenusModel$Assets("second_step_mouth_model_", str, strArr[3])) : VenusModel$Files.b(str9, new VenusModel$Files(strArr[3]));
                    if (TextUtils.isEmpty(strB) || TextUtils.isEmpty(strE3)) {
                        Log.h("No face tracking model(s) found.");
                    } else {
                        if (TextUtils.isEmpty(strB2)) {
                            Log.h("No second step eye model found.");
                        }
                        if (TextUtils.isEmpty(strE4)) {
                            Log.h("No second step mouth model found.");
                        }
                        long jNanoTime2 = System.nanoTime();
                        baseVenus.p(strB, strE3, strB2, strE4);
                        Log.b("SetInternalModelPaths in " + ((System.nanoTime() - jNanoTime2) / 1000000) + " ms");
                        Preconditions.i(UIMakeupJNI.CUIMakeupLive_IsModelLoaded(baseVenus.f40398a, baseVenus));
                        atomicBoolean.set(true);
                        Functionality functionality4 = Functionality.MAKEUP;
                        if (set.contains(functionality4)) {
                            builderS.h(functionality4);
                        }
                        Functionality functionality5 = Functionality.RESHAPE;
                        if (set.contains(functionality5)) {
                            builderS.h(functionality5);
                        }
                        if (z) {
                            Functionality functionality6 = Functionality.FUN_STICKER;
                            if (set.contains(functionality6)) {
                                builderS.h(functionality6);
                            }
                        }
                    }
                }
            } else {
                c2 = 0;
                str = ".mnn";
                j2 = 1000000;
            }
            Log.b("hasFaceTrackingModels=" + atomicBoolean.get());
            if (applyEffectParams.f40071j) {
                String[] strArr5 = new String[1];
                Preconditions.i(baseVenus.e(strArr5));
                Log.b("hair color model versions=" + Arrays.toString(strArr5));
                boolean z10 = modelPath.f39755a;
                String str10 = modelPath.f39756b;
                String strE5 = z10 ? VenusModel$Assets.e(contextB, str10, new VenusModel$Assets("seg_init_net_", str, strArr5[c2])) : VenusModel$Files.b(str10, new VenusModel$Files(strArr5[c2]));
                if (TextUtils.isEmpty(strE5)) {
                    Log.h("No hair color model found.");
                } else {
                    long jNanoTime3 = System.nanoTime();
                    Preconditions.i(baseVenus.l(strE5));
                    Log.b("SetHairColorModelPath in " + ((System.nanoTime() - jNanoTime3) / j2) + " ms");
                    builderS.h(Functionality.HAIR_COLOR);
                }
            }
            if (applyEffectParams.q) {
                String[] strArr6 = new String[1];
                Preconditions.i(baseVenus.c(strArr6));
                Log.b("background model versions=" + Arrays.toString(strArr6));
                boolean z11 = modelPath.f39755a;
                String str11 = modelPath.f39756b;
                String strE6 = z11 ? VenusModel$Assets.e(contextB, str11, new VenusModel$Assets(strArr6[c2])) : VenusModel$Files.b(str11, new VenusModel$Files(strArr6[c2]));
                if (TextUtils.isEmpty(strE6)) {
                    Log.h("No Background model found.");
                } else {
                    long jNanoTime4 = System.nanoTime();
                    Preconditions.i(baseVenus.j(strE6));
                    Log.b("SetBackgroundModelPath in " + ((System.nanoTime() - jNanoTime4) / j2) + " ms");
                    builderS.h(Functionality.BACKGROUND);
                }
            }
            if (applyEffectParams.f40070i || applyEffectParams.f40072k || applyEffectParams.n || applyEffectParams.o || applyEffectParams.p) {
                String[] strArr7 = new String[1];
                Preconditions.i(baseVenus.d(strArr7));
                Log.b("face 3D pose model versions=" + Arrays.toString(strArr7));
                boolean z12 = modelPath.f39755a;
                String str12 = modelPath.f39756b;
                String strE7 = z12 ? VenusModel$Assets.e(contextB, str12, new VenusModel$Assets("pose_", ".mtnet", strArr7[c2])) : VenusModel$Files.b(str12, new VenusModel$Files(strArr7[c2]));
                if (TextUtils.isEmpty(strE7)) {
                    Log.h("No face pose model found.");
                    c4 = c2;
                } else {
                    long jNanoTime5 = System.nanoTime();
                    Preconditions.i(baseVenus.k(strE7));
                    Log.b("SetFace3DPoseModelPath in " + ((System.nanoTime() - jNanoTime5) / j2) + " ms");
                    if (atomicBoolean.get()) {
                        Functionality functionality7 = Functionality.EYEWEAR;
                        if (set.contains(functionality7)) {
                            builderS.h(functionality7);
                        }
                        Functionality functionality8 = Functionality.EYEWEAR_3D;
                        if (set.contains(functionality8)) {
                            builderS.h(functionality8);
                        }
                    }
                    c4 = 1;
                }
            } else {
                c4 = c2;
            }
            if (applyEffectParams.f40070i || applyEffectParams.f40072k) {
                String[] strArr8 = new String[1];
                Preconditions.i(baseVenus.a(strArr8));
                Log.b("eyebrow 3D model versions=" + Arrays.toString(strArr8));
                boolean z13 = modelPath.f39755a;
                String str13 = modelPath.f39756b;
                String strE8 = z13 ? VenusModel$Assets.e(contextB, str13, new VenusModel$Assets("eyebrow_", ".model", strArr8[c2])) : VenusModel$Files.b(str13, new VenusModel$Files(strArr8[c2]));
                if (TextUtils.isEmpty(strE8)) {
                    Log.h("No eyebrow model found.");
                } else {
                    long jNanoTime6 = System.nanoTime();
                    Preconditions.i(baseVenus.h(strE8));
                    Log.b("Set3DEyebrowModelPath in " + ((System.nanoTime() - jNanoTime6) / j2) + " ms");
                }
            }
            if (applyEffectParams.f40070i || applyEffectParams.f40072k || applyEffectParams.p) {
                String[] strArr9 = new String[1];
                Preconditions.i(baseVenus.b(strArr9));
                Log.b("face art 3D model versions=" + Arrays.toString(strArr9));
                boolean z14 = modelPath.f39755a;
                String str14 = modelPath.f39756b;
                String strE9 = z14 ? VenusModel$Assets.e(contextB, str14, new VenusModel$Assets("faceart_", ".model", strArr9[c2])) : VenusModel$Files.b(str14, new VenusModel$Files(strArr9[c2]));
                if (TextUtils.isEmpty(strE9)) {
                    Log.h("No face art model found.");
                } else {
                    long jNanoTime7 = System.nanoTime();
                    Preconditions.i(baseVenus.i(strE9));
                    Log.b("Set3DFaceartModelPath in " + ((System.nanoTime() - jNanoTime7) / j2) + " ms");
                    if (c4 != 0) {
                        Functionality functionality9 = Functionality.EARRINGS;
                        if (set.contains(functionality9)) {
                            builderS.h(functionality9);
                        }
                    }
                }
            }
            if (applyEffectParams.f40070i) {
                boolean z15 = modelPath.f39755a;
                String str15 = modelPath.f39756b;
                String strE10 = z15 ? VenusModel$Assets.e(contextB, str15, new VenusModel$Assets("eye_ibl.hdr")) : VenusModel$Files.b(str15, new VenusModel$Files("eye_ibl.hdr"));
                if (TextUtils.isEmpty(strE10)) {
                    Log.h("No eyeshadow & eyeliner HDR model. EyeShadow & eyeliner function may not work.");
                } else {
                    Log.b("eyeshadow & eyeliner HDR model path=" + strE10);
                }
                boolean z16 = modelPath.f39755a;
                String str16 = modelPath.f39756b;
                String strE11 = z16 ? VenusModel$Assets.e(contextB, str16, new VenusModel$Assets("eye_normal.png")) : VenusModel$Files.b(str16, new VenusModel$Files("eye_normal.png"));
                if (TextUtils.isEmpty(strE11)) {
                    Log.h("No eyeshadow & eyeliner PNG model. EyeShadow & eyeliner function may not work.");
                } else {
                    Log.b("eyeshadow & eyeliner PNG model path=" + strE11);
                }
                applyEffectParams.f40067e = Nulls.a(strE10);
                applyEffectParams.f40068f = Nulls.a(strE11);
            }
            if (applyEffectParams.n) {
                boolean z17 = modelPath.f39755a;
                String str17 = modelPath.f39756b;
                String strE12 = z17 ? VenusModel$Assets.e(contextB, str17, new VenusModel$Assets("eyewear_mean_face_occluder", ".obb", "eyewear_mean_face_occluder.obb")) : VenusModel$Files.b(str17, new VenusModel$Files("eyewear_mean_face_occluder.obb"));
                if (TextUtils.isEmpty(strE12)) {
                    Log.h("No eyewear occluder model. Eyewear function may not work.");
                } else {
                    Log.b("eyewear occluder model path=" + strE12);
                }
                applyEffectParams.f40065b = Nulls.a(strE12);
            }
            if (applyEffectParams.o) {
                boolean z18 = modelPath.f39755a;
                String str18 = modelPath.f39756b;
                String strE13 = z18 ? VenusModel$Assets.e(contextB, str18, new VenusModel$Assets("mean_face_occluder", ".obb", "mean_face_occluder.obb")) : VenusModel$Files.b(str18, new VenusModel$Files("mean_face_occluder.obb"));
                if (TextUtils.isEmpty(strE13)) {
                    Log.h("No occluder model. Eyewear function may not work.");
                } else {
                    Log.b("occluder model path=" + strE13);
                }
                applyEffectParams.f40064a = Nulls.a(strE13);
            }
            if (applyEffectParams.s) {
                if (accessoryCamWrapper != null) {
                    accessoryCamWrapper.initAr();
                    boolean z19 = modelPath.f39755a;
                    String str19 = modelPath.f39756b;
                    String strE14 = z19 ? VenusModel$Assets.e(contextB, str19, new VenusModel$Assets("necklace_occluder_1", ".obb", "necklace_occluder_1.obb")) : VenusModel$Files.b(str19, new VenusModel$Files("necklace_occluder_1.obb"));
                    if (TextUtils.isEmpty(strE14)) {
                        Log.h("No occluder model 1. Necklace function may not work.");
                    } else {
                        Log.b("occluder model path=" + strE14);
                    }
                    applyEffectParams.f40066c = Nulls.a(strE14);
                    boolean z20 = modelPath.f39755a;
                    String str20 = modelPath.f39756b;
                    String strE15 = z20 ? VenusModel$Assets.e(contextB, str20, new VenusModel$Assets("necklace_occluder_2", ".obb", "necklace_occluder_2.obb")) : VenusModel$Files.b(str20, new VenusModel$Files("necklace_occluder_2.obb"));
                    if (TextUtils.isEmpty(strE15)) {
                        Log.h("No occluder model 2. Necklace function may not work.");
                    } else {
                        Log.b("occluder model path=" + strE15);
                    }
                    applyEffectParams.d = Nulls.a(strE15);
                    builderS.h(Functionality.NECKLACE);
                } else {
                    Log.h("Missing necklace wrapper. Necklace function is disabled.");
                }
            }
            return builderS.j();
        } catch (Throwable th) {
            Log.e("MakeupCam", "Module load failed", th);
            throw new ModuleLoadFailedException(th);
        }
    }

    public static void c(AccessoryCamWrapper accessoryCamWrapper, CreateCallback2 createCallback2) {
        Threads.a();
        if (!PerfectLib.d()) {
            md.k("PerfectLib.init() must be called first.");
            return;
        }
        Objects.requireNonNull(createCallback2, "createCallback can't be null");
        final CreateCallback2 createCallback3 = (CreateCallback2) Proxies.a(CreateCallback2.class, createCallback2);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new defpackage.n2(accessoryCamWrapper, 7)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        final int i2 = 0;
        Consumer consumer = new Consumer() { // from class: ec0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                MakeupCam.CreateCallback2 createCallback4 = createCallback3;
                switch (i3) {
                    case 0:
                        Pair pair = (Pair) obj;
                        createCallback4.onSuccess((MakeupCam) pair.first, (FramebufferRenderer) pair.second);
                        break;
                    default:
                        createCallback4.onFailure((Throwable) obj);
                        break;
                }
            }
        };
        Objects.requireNonNull(createCallback3);
        final int i3 = 1;
        uVarI.a(new ConsumerSingleObserver(consumer, new Consumer() { // from class: ec0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                MakeupCam.CreateCallback2 createCallback4 = createCallback3;
                switch (i4) {
                    case 0:
                        Pair pair = (Pair) obj;
                        createCallback4.onSuccess((MakeupCam) pair.first, (FramebufferRenderer) pair.second);
                        break;
                    default:
                        createCallback4.onFailure((Throwable) obj);
                        break;
                }
            }
        }));
    }

    public static void create(CameraView cameraView, AccessoryCamWrapper accessoryCamWrapper, CreateCallback createCallback) {
        Threads.a();
        if (!PerfectLib.d()) {
            md.k("PerfectLib.init() must be called first.");
            return;
        }
        Objects.requireNonNull(cameraView, "cameraView can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        CreateCallback createCallback2 = (CreateCallback) Proxies.a(CreateCallback.class, createCallback);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new o7(cameraView, accessoryCamWrapper, 6)).f(new d8(9)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        Objects.requireNonNull(createCallback2);
        uVarI.a(new ConsumerSingleObserver(new cc0(createCallback2, 0), new cc0(createCallback2, 1)));
    }

    public static void d(BaseVenus baseVenus) {
        BasicPreferences basicPreferences = Preferences.f39693a;
        String string = basicPreferences.getString("CUSTOM_FEATURE_BRAND", "");
        boolean z = basicPreferences.getBoolean("CUSTOM_FEATURE_BAD_LIGHTING_LV", false);
        boolean z2 = basicPreferences.getBoolean("CUSTOM_FEATURE_SKINSMOOTH_LV", false);
        boolean z3 = basicPreferences.getBoolean("CUSTOM_FEATURE_LOOK_COMPARISON_LV", false);
        boolean zEquals = "LV".equals(string);
        baseVenus.g = true;
        if (!zEquals) {
            baseVenus.f40076h = 50;
            baseVenus.d = false;
            baseVenus.f40074e = false;
            return;
        }
        baseVenus.f40076h = z ? 40 : 50;
        baseVenus.d = z2;
        baseVenus.f40074e = z3;
        StringBuilder sbR = pq0.r("Brand ", string, ", LV Lighting: ");
        sbR.append(z ? "ON" : "OFF");
        sbR.append(", LV Skinsmooth: ");
        sbR.append(z2 ? "ON" : "OFF");
        sbR.append(", LV Look Comparison: ");
        defpackage.a.A(sbR, z3 ? "ON" : "OFF", 4, "MakeupCam");
    }

    public final void b() {
        Executor executor;
        bc0 bc0Var;
        EnumSet enumSetD = this.f39678e.f40751a.v.d();
        enumSetD.remove(BeautyMode.SKIN_SMOOTHER);
        if (enumSetD.size() == 1 && enumSetD.contains(BeautyMode.HAIR_DYE) && !this.d.l) {
            executor = AsyncTask.THREAD_POOL_EXECUTOR;
            bc0Var = new bc0(this, 3);
        } else {
            executor = AsyncTask.THREAD_POOL_EXECUTOR;
            bc0Var = new bc0(this, 4);
        }
        executor.execute(bc0Var);
    }

    public final void e() {
        if (this.f39682j.get() == null) {
            return;
        }
        md.k("Instance is already released.");
    }

    public final void enableComparison(boolean z) {
        Log.g(3, "MakeupCam", "enableComparison::enabled=" + z);
        e();
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        BaseVenus baseVenus = liveMakeupCtrl.f40716c;
        CLMakeupLiveFilter cLMakeupLiveFilter = liveMakeupCtrl.g;
        baseVenus.f40075f = z;
        if (!baseVenus.f40074e) {
            cLMakeupLiveFilter.s0(z);
            return;
        }
        if (this.f39675a != null) {
            try {
                Object objNewProxyInstance = Proxy.newProxyInstance(VtoApplier.ApplyCallback.class.getClassLoader(), new Class[]{VtoApplier.ApplyCallback.class}, new gc0());
                if (z) {
                    this.f39675a.getClass().getMethod("clearAllEffectsExceptSkinSmooth", VtoApplier.ApplyCallback.class).invoke(this.f39675a, objNewProxyInstance);
                }
            } catch (NoSuchMethodException unused) {
                Log.g(3, "MakeupCam", "clearAllEffects not available on this applier");
            } catch (Exception e2) {
                Log.d("MakeupCam", e2.getMessage());
            }
        }
        cLMakeupLiveFilter.l1 = z ? 0.5f : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void enableFPSMode(boolean z) {
        CameraView cameraView;
        Log.g(3, "MakeupCam", "enableFPSMode:enabled=" + z);
        ViewGroup viewGroup = null;
        if (z && (cameraView = this.l) != null) {
            try {
                for (Context context = cameraView.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                    if (context instanceof Activity) {
                        viewGroup = (ViewGroup) ((Activity) context).findViewById(R.id.content);
                    }
                }
                throw new IllegalStateException("View is not attached to an Activity");
            } catch (IllegalStateException e2) {
                Log.i("MakeupCam", "Unable to get Activity root view, disabling FPS Mode", e2);
                z = false;
            }
        }
        this.f39678e.f40751a.d(viewGroup, z);
    }

    public final void enableLiplinerOnTop(boolean z) {
        Log.g(3, "MakeupCam", "enableLiplinerOnTop:enabled=" + z);
        e();
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        liveMakeupCtrl.f40720i = z;
        liveMakeupCtrl.g.Q(-1, z);
    }

    public final void enableSkinSmoothFaceOnly(boolean z) {
        Log.g(3, "MakeupCam", "enableSkinSmoothFaceOnly:enabled=" + z);
        e();
        this.f39678e.f40751a.m1 = z;
        this.f39678e.f40751a.n(0, true);
    }

    public final void f() {
        Threads.b();
        com.perfectcorp.perfectlib.makeupcam.video.e eVar = this.f39679f;
        com.perfectcorp.perfectlib.makeupcam.video.d.a aVar = eVar.f41056a.f41050b;
        aVar.getClass();
        com.perfectcorp.perfectlib.makeupcam.video.d.a aVar2 = com.perfectcorp.perfectlib.makeupcam.video.d.a.f41055e;
        if (aVar != aVar2) {
            com.perfectcorp.perfectlib.makeupcam.video.d dVar = eVar.f41056a;
            com.perfectcorp.perfectlib.makeupcam.video.d.a aVar3 = dVar.f41050b;
            if (aVar3 == com.perfectcorp.perfectlib.makeupcam.video.d.a.f41052a || aVar3 == com.perfectcorp.perfectlib.makeupcam.video.d.a.f41054c) {
                dVar.a();
            }
            eVar.f41057b = false;
            com.perfectcorp.perfectlib.makeupcam.video.d dVar2 = eVar.f41056a;
            dVar2.b();
            dVar2.f41050b = aVar2;
            eVar.f41058c = com.perfectcorp.perfectlib.makeupcam.video.e.a.f41059a;
        }
        eVar.f41056a.b();
        eVar.f41056a.f41050b = aVar2;
    }

    public final Set<Functionality> getAvailableFunctionalities() {
        return this.f39676b;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0091 A[Catch: all -> 0x004f, TryCatch #0 {all -> 0x004f, blocks: (B:4:0x000f, B:6:0x0017, B:8:0x0024, B:11:0x002d, B:15:0x0073, B:30:0x00df, B:27:0x0091, B:28:0x00aa, B:29:0x00c7, B:14:0x0052, B:31:0x00e3), top: B:35:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:28:0x00aa A[Catch: all -> 0x004f, TryCatch #0 {all -> 0x004f, blocks: (B:4:0x000f, B:6:0x0017, B:8:0x0024, B:11:0x002d, B:15:0x0073, B:30:0x00df, B:27:0x0091, B:28:0x00aa, B:29:0x00c7, B:14:0x0052, B:31:0x00e3), top: B:35:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c7 A[Catch: all -> 0x004f, TryCatch #0 {all -> 0x004f, blocks: (B:4:0x000f, B:6:0x0017, B:8:0x0024, B:11:0x002d, B:15:0x0073, B:30:0x00df, B:27:0x0091, B:28:0x00aa, B:29:0x00c7, B:14:0x0052, B:31:0x00e3), top: B:35:0x000f }] */
    public final FrameInfo getCurrentFrameInfo(int i2) {
        e();
        FrameInfo frameInfo = new FrameInfo();
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        synchronized (liveMakeupCtrl.y1) {
            try {
                frameInfo.faceCount = liveMakeupCtrl.D1;
                if ((i2 & 1) == 1) {
                    LiveMakeupCtrl liveMakeupCtrl2 = this.f39678e.f40751a;
                    int i3 = liveMakeupCtrl2.D1;
                    frameInfo.faceRect = new RectF[i3];
                    for (int i4 = 0; i4 < i3; i4++) {
                        int i5 = liveMakeupCtrl2.B1 % Sink.ORIENTATION_180;
                        RectF[] rectFArr = frameInfo.faceRect;
                        if (i5 == 0) {
                            Rect rect = liveMakeupCtrl2.E1[i4];
                            float f2 = rect.left;
                            float f3 = liveMakeupCtrl2.z1;
                            float f4 = rect.top;
                            float f5 = liveMakeupCtrl2.A1;
                            rectFArr[i4] = new RectF(f2 / f3, f4 / f5, rect.right / f3, rect.bottom / f5);
                        } else {
                            Rect rect2 = liveMakeupCtrl2.E1[i4];
                            float f6 = rect2.left;
                            float f7 = liveMakeupCtrl2.A1;
                            float f8 = rect2.top;
                            float f9 = liveMakeupCtrl2.z1;
                            rectFArr[i4] = new RectF(f6 / f7, f8 / f9, rect2.right / f7, rect2.bottom / f9);
                        }
                        int i6 = liveMakeupCtrl2.B1 - liveMakeupCtrl2.C1;
                        if (i6 == -270) {
                            RectF[] rectFArr2 = frameInfo.faceRect;
                            RectF rectF = frameInfo.faceRect[i4];
                            rectFArr2[i4] = new RectF(rectF.top, 1.0f - rectF.right, rectF.bottom, 1.0f - rectF.left);
                        } else if (i6 == -180) {
                            RectF[] rectFArr3 = frameInfo.faceRect;
                            RectF rectF2 = frameInfo.faceRect[i4];
                            rectFArr3[i4] = new RectF(1.0f - rectF2.right, 1.0f - rectF2.bottom, 1.0f - rectF2.left, 1.0f - rectF2.top);
                        } else if (i6 == -90) {
                            RectF[] rectFArr4 = frameInfo.faceRect;
                            RectF rectF3 = frameInfo.faceRect[i4];
                            rectFArr4[i4] = new RectF(1.0f - rectF3.bottom, rectF3.left, 1.0f - rectF3.top, rectF3.right);
                        } else if (i6 == 90) {
                            RectF[] rectFArr5 = frameInfo.faceRect;
                            RectF rectF4 = frameInfo.faceRect[i4];
                            rectFArr5[i4] = new RectF(rectF4.top, 1.0f - rectF4.right, rectF4.bottom, 1.0f - rectF4.left);
                        } else if (i6 == 180) {
                            RectF[] rectFArr6 = frameInfo.faceRect;
                            RectF rectF5 = frameInfo.faceRect[i4];
                            rectFArr6[i4] = new RectF(1.0f - rectF5.right, 1.0f - rectF5.bottom, 1.0f - rectF5.left, 1.0f - rectF5.top);
                        } else if (i6 == 270) {
                            RectF[] rectFArr7 = frameInfo.faceRect;
                            RectF rectF6 = frameInfo.faceRect[i4];
                            rectFArr7[i4] = new RectF(1.0f - rectF6.bottom, rectF6.left, 1.0f - rectF6.top, rectF6.right);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return frameInfo;
    }

    public final Object getVideoCaptureSource() {
        return this.f39683k;
    }

    public final void onCameraOpened(boolean z, int i2, int i3, int i4) {
        Threads.b();
        Log.g(3, "MakeupCam", "onCameraOpened::isFront=" + z + ", cameraOrientation=" + i2 + ", previewWidth=" + i3 + ", previewHeight=" + i4);
        this.f39678e.f40751a.c(i3, i4);
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        liveMakeupCtrl.q = z;
        int i5 = 0;
        if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
            Log.d("LiveMakeupCtrl", "Invalid camera orientation=" + i2);
            i2 = 0;
        }
        liveMakeupCtrl.r = i2;
        synchronized (liveMakeupCtrl.x) {
            liveMakeupCtrl.y = CLMakeupLiveFilter.a.f25660a;
            int i6 = GPUImageBackgroundFilter.b.f25720a;
            liveMakeupCtrl.z = i6;
            liveMakeupCtrl.A = i6;
        }
        this.f39678e.d(new bc0(this, i5));
        VideoCaptureSourceImpl videoCaptureSourceImpl = this.f39683k;
        if (videoCaptureSourceImpl != null) {
            videoCaptureSourceImpl.f39996a.getClass();
        }
    }

    public final void onCreated() {
        Threads.a();
        Log.g(3, "MakeupCam", "onCreated");
        this.f39678e.f40751a.p();
    }

    public final void onDestroyed() {
        Threads.a();
        Log.g(3, "MakeupCam", "onDestroyed");
        this.g.dispose();
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        liveMakeupCtrl.getClass();
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new com.perfectcorp.perfectlib.makeupcam.camera.q(liveMakeupCtrl, 1));
        this.l = null;
    }

    public final void onPaused() {
        Threads.a();
        Log.g(3, "MakeupCam", "onPaused");
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        liveMakeupCtrl.getClass();
        try {
            liveMakeupCtrl.l.unregisterListener(liveMakeupCtrl);
        } catch (Exception e2) {
            Log.e("LiveMakeupCtrl", "onPause", e2);
        }
    }

    public final void onResumed() {
        Threads.a();
        Log.g(3, "MakeupCam", "onResumed");
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        liveMakeupCtrl.l.registerListener(liveMakeupCtrl, liveMakeupCtrl.m, 2);
    }

    public final void onStarted() {
        Threads.a();
        Log.g(3, "MakeupCam", "onStarted");
    }

    public final void onStopped() {
        Threads.a();
        Log.g(3, "MakeupCam", "onStopped");
    }

    public final void release(ReleaseCallback releaseCallback) {
        String str;
        Threads.a();
        Objects.requireNonNull(releaseCallback, "releaseCallback can't be null");
        Log.g(3, "MakeupCam", "release");
        ReleaseCallback releaseCallback2 = (ReleaseCallback) Proxies.a(ReleaseCallback.class, releaseCallback);
        Threads.a();
        AtomicReference atomicReference = this.f39682j;
        if (atomicReference.get() != null) {
            str = "Listen to existed release task.";
        } else {
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.a aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new defpackage.n2(this, 9)).i(Schedulers.f43170c), new fw(this, 20)), new v40(21), null));
            while (true) {
                if (atomicReference.compareAndSet(null, aVar)) {
                    str = "Ready to release instance.";
                    break;
                } else if (atomicReference.get() != null) {
                    str = "Already has release task";
                    break;
                }
            }
        }
        Log.g(3, "MakeupCam", str);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = ((Single) atomicReference.get()).i(AndroidSchedulers.a());
        Objects.requireNonNull(releaseCallback2);
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k(uVarI, new xw(releaseCallback2, 3)).a(new ConsumerSingleObserver(new d8(10), new d8(11)));
    }

    public final void removeApplier() {
        this.f39675a = null;
    }

    public final void sendCameraBuffer(CameraFrame cameraFrame) {
        Threads.b();
        e();
        com.perfectcorp.perfectlib.makeupcam.video.a aVar = this.f39679f.f41056a.f41049a;
        synchronized (aVar.A) {
            try {
                if (aVar.A.get() == 0) {
                    Log.g(2, "LiveRecordingFilter", "onPreviewStarted");
                    aVar.F = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        long jNanoTime = System.nanoTime() / 1000;
        FrameProcessingThread.Frame frame = new FrameProcessingThread.Frame();
        frame.d = cameraFrame.f39502a;
        frame.f40082b = cameraFrame.f39503b;
        frame.f40083c = cameraFrame.f39504c;
        frame.f40084e = this.f39681i;
        frame.f40081a = jNanoTime;
        frame.f40085f = cameraFrame.d;
        if (cameraFrame.f39505e) {
            int i2 = cameraFrame.f39506f;
            if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
                i2 = 0;
            }
            frame.g = i2;
        }
        this.f39678e.f40751a.f40722k.sendNewFrame(frame);
    }

    public final void setApplier(Object obj) {
        this.f39675a = obj;
    }

    public final void setComparisonPosition(float f2) {
        Log.g(3, "MakeupCam", "setComparisonPosition::position=" + f2);
        e();
        LiveMakeupCtrl liveMakeupCtrl = this.f39678e.f40751a;
        boolean z = liveMakeupCtrl.f40716c.f40074e;
        CLMakeupLiveFilter cLMakeupLiveFilter = liveMakeupCtrl.g;
        if (z) {
            cLMakeupLiveFilter.l1 = 1.0f - f2;
        } else {
            cLMakeupLiveFilter.E0(f2);
        }
    }

    public final void setPlugin(MakeupPlugin makeupPlugin, PluginPosition pluginPosition) {
        Objects.requireNonNull(pluginPosition, "pluginPosition can't be null");
        synchronized (this.m) {
            try {
                int[] iArr = AnonymousClass4.f39691a;
                int i2 = iArr[pluginPosition.ordinal()];
                if (i2 == 1) {
                    this.f39678e.f40751a.g.x0();
                } else if (i2 == 2) {
                    this.f39678e.f40751a.g.w0();
                }
                this.f39678e.f40751a.f(Collections.EMPTY_LIST);
                this.f39681i.f39692a.remove((MakeupPluginFilter) this.m.remove(pluginPosition));
                if (makeupPlugin != null) {
                    MakeupPluginFilter makeupPluginFilter = new MakeupPluginFilter(makeupPlugin);
                    int i3 = iArr[pluginPosition.ordinal()];
                    if (i3 == 1) {
                        this.f39678e.f40751a.g.F0(Collections.singletonList(makeupPluginFilter));
                    } else if (i3 == 2) {
                        this.f39678e.f40751a.g.v0(Collections.singletonList(makeupPluginFilter));
                    }
                    this.f39678e.f40751a.f(Collections.singletonList(makeupPluginFilter));
                    this.m.put(pluginPosition, makeupPluginFilter);
                    this.f39681i.f39692a.add(makeupPluginFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setPupilAnalysisCallback(PupilAnalysisCallback pupilAnalysisCallback) {
        com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam = this.f39678e;
        Log.g(3, "MakeupCam", "setPupilAnalysisCallback");
        if (pupilAnalysisCallback != null) {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(new bc0(this, 1));
            LiveMakeupCtrl liveMakeupCtrl = makeupCam.f40751a;
            liveMakeupCtrl.s1 = new fw(pupilAnalysisCallback, 18);
            liveMakeupCtrl.u1 = true;
            return;
        }
        LiveMakeupCtrl liveMakeupCtrl2 = makeupCam.f40751a;
        liveMakeupCtrl2.s1 = null;
        liveMakeupCtrl2.u1 = false;
        makeupCam.d(new bc0(this, 2));
    }

    public final void setPupilDistance(final float f2) {
        Preconditions.g(!Float.isNaN(f2), "pupilDistance shouldn't be NaN");
        Preconditions.g(Float.compare(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) >= 0, "pupilDistance shouldn't be less than 0");
        Log.g(3, "MakeupCam", "setPupilDistance");
        this.f39678e.d(new Runnable() { // from class: dc0
            @Override // java.lang.Runnable
            public final void run() {
                com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam = this.f68543b.f39678e;
                CLMakeupLiveFilter cLMakeupLiveFilter = makeupCam.f40751a.g;
                int i2 = 0;
                while (true) {
                    CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = cLMakeupLiveFilter.e0;
                    int length = cLMakeupLiveCubeEyewearFilterArr.length;
                    float f3 = f2;
                    if (i2 >= length) {
                        makeupCam.f40751a.g.y0(f3);
                        return;
                    }
                    CLMakeupLiveCubeEyewearFilter cLMakeupLiveCubeEyewearFilter = cLMakeupLiveCubeEyewearFilterArr[i2];
                    cLMakeupLiveCubeEyewearFilter.O = f3;
                    cLMakeupLiveCubeEyewearFilter.G();
                    i2++;
                }
            }
        });
    }

    public final void setQualityCheckCallback(QualityCheckCallback qualityCheckCallback) {
        LiveMakeupCtrl liveMakeupCtrl;
        boolean z;
        Log.g(3, "MakeupCam", "setQualityCheckCallback");
        com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam = this.f39678e;
        if (qualityCheckCallback != null) {
            liveMakeupCtrl = makeupCam.f40751a;
            liveMakeupCtrl.t1 = new fw(qualityCheckCallback, 17);
            z = true;
        } else {
            liveMakeupCtrl = makeupCam.f40751a;
            liveMakeupCtrl.t1 = null;
            z = false;
        }
        liveMakeupCtrl.v1 = z;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a1  */
    public final void startRecording(String str, int i2, int i3, int i4, int i5, VideoCallback videoCallback) {
        int i6;
        int i7;
        int i8;
        int i9;
        Threads.b();
        Log.g(3, "MakeupCam", "startRecording");
        Threads.b();
        e();
        Objects.requireNonNull(videoCallback, "videoCallback can't be null.");
        int i10 = 0;
        boolean z = PfCommons.b().getResources().getConfiguration().orientation == 2;
        Object systemService = PfCommons.b().getSystemService("window");
        Objects.requireNonNull(systemService, "Can't get WINDOW_SERVICE.");
        int rotation = ((WindowManager) systemService).getDefaultDisplay().getRotation();
        if (rotation == 1) {
            i10 = 90;
        } else if (rotation == 2) {
            i10 = 180;
        } else if (rotation == 3) {
            i10 = Sink.ORIENTATION_270;
        }
        int i11 = (this.f39678e.f40751a.r + i10) % Sink.ORIENTATION_180;
        if (!(z && i11 == 0) && (z || i11 == 0)) {
            com.perfectcorp.perfectlib.makeupcam.video.e eVar = this.f39679f;
            if (z) {
                i6 = i2;
                i7 = i3;
            } else {
                i7 = i2;
                i6 = i3;
            }
            eVar.f(str, i6, i7, i4, i5);
        } else {
            com.perfectcorp.perfectlib.makeupcam.video.e eVar2 = this.f39679f;
            if (z) {
                i9 = i2;
                i8 = i3;
            } else {
                i8 = i2;
                i9 = i3;
            }
            eVar2.f(str, i8, i9, i4, i5);
        }
        com.perfectcorp.perfectlib.makeupcam.video.e eVar3 = this.f39679f;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        anonymousClass3.f39690b = videoCallback;
        eVar3.f41058c = anonymousClass3;
        com.perfectcorp.perfectlib.makeupcam.video.d.a aVar = eVar3.f41056a.f41050b;
        if (aVar != com.perfectcorp.perfectlib.makeupcam.video.d.a.d) {
            aVar.getClass();
            if (aVar == com.perfectcorp.perfectlib.makeupcam.video.d.a.f41055e) {
                eVar3.f41056a.b();
            }
        } else {
            eVar3.f41056a.b();
        }
        eVar3.f41056a.a();
    }

    public final void stopRecording() {
        Threads.b();
        Log.g(3, "MakeupCam", "stopRecording");
        Threads.b();
        e();
        f();
    }

    public final void takePicture(final boolean z, final boolean z2, final boolean z3, final boolean z4, PictureCallback pictureCallback) {
        Threads.a();
        Log.g(3, "MakeupCam", "takePicture");
        PictureCallback pictureCallback2 = (PictureCallback) Proxies.a(PictureCallback.class, pictureCallback);
        Threads.a();
        e();
        Objects.requireNonNull(pictureCallback2, "pictureCallback can't be null");
        Log.g(3, "MakeupCam", "takePicture");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: com.perfectcorp.perfectlib.i1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                MakeupCam makeupCam = this.f40336b;
                boolean z5 = z;
                boolean z6 = z2;
                boolean z7 = z3;
                boolean z8 = z4;
                Threads.b();
                CLMakeupLiveFilter cLMakeupLiveFilter = makeupCam.f39678e.d;
                if (cLMakeupLiveFilter.getOutputWidth() <= 0 || cLMakeupLiveFilter.getOutputHeight() <= 0) {
                    throw new MakeupCam.GpuFilterNotReadyException("GPU filter not ready yet.");
                }
                StringBuilder sbM = cj.m("[takePicture] isFrontCamera=", ", flipForFrontCamera=", ", continueCapture=", z5, z6);
                sbM.append(z7);
                sbM.append(", needOriginal=");
                sbM.append(z8);
                Log.g(3, "MakeupCam", sbM.toString());
                LiveMakeupCtrl.a aVarB = makeupCam.f39678e.f40751a.b(!z5, z6, z7, z8, null);
                makeupCam.f39680h.onTaken();
                return aVarB;
            }
        }).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new ac0(pictureCallback2, 3), new ac0(pictureCallback2, 0));
        uVarI.a(consumerSingleObserver);
        this.g.b(consumerSingleObserver);
    }

    public final void takePictureByBuffer(final boolean z, final boolean z2, final boolean z3, final boolean z4, final byte[] bArr, final int i2, final int i3, PictureCallback pictureCallback) {
        Threads.a();
        Log.g(3, "MakeupCam", "takePictureByBuffer");
        PictureCallback pictureCallback2 = (PictureCallback) Proxies.a(PictureCallback.class, pictureCallback);
        Threads.a();
        e();
        Objects.requireNonNull(bArr, "nv21Buffer can't be null");
        Objects.requireNonNull(pictureCallback2, "pictureCallback can't be null");
        Log.g(3, "MakeupCam", "takePictureByBuffer");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: com.perfectcorp.perfectlib.h1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                MakeupCam makeupCam = this.f40185b;
                boolean z5 = z;
                boolean z6 = z2;
                boolean z7 = z3;
                boolean z8 = z4;
                byte[] bArr2 = bArr;
                int i4 = i2;
                int i5 = i3;
                Threads.b();
                CLMakeupLiveFilter cLMakeupLiveFilter = makeupCam.f39678e.d;
                if (cLMakeupLiveFilter.getOutputWidth() <= 0 || cLMakeupLiveFilter.getOutputHeight() <= 0) {
                    throw new MakeupCam.GpuFilterNotReadyException("GPU filter not ready yet.");
                }
                StringBuilder sbM = cj.m("[takePictureByBuffer] isFrontCamera=", ", flipForFrontCamera=", ", continueCapture=", z5, z6);
                sbM.append(z7);
                sbM.append(", needOriginal=");
                sbM.append(z8);
                Log.g(3, "MakeupCam", sbM.toString());
                FrameProcessingThread.Frame frame = new FrameProcessingThread.Frame();
                frame.d = bArr2;
                frame.f40082b = i4;
                frame.f40083c = i5;
                frame.f40084e = null;
                frame.f40081a = -1L;
                Log.g(3, "MakeupCam", "[takePictureByBuffer] frame=" + frame);
                LiveMakeupCtrl.a aVarB = makeupCam.f39678e.f40751a.b(z5 ^ true, z6, z7, z8, frame);
                makeupCam.f39680h.onTaken();
                return aVarB;
            }
        }).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new ac0(pictureCallback2, 1), new ac0(pictureCallback2, 2));
        uVarI.a(consumerSingleObserver);
        this.g.b(consumerSingleObserver);
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.MakeupCam$3, reason: invalid class name */
    class AnonymousClass3 implements com.perfectcorp.perfectlib.makeupcam.video.e.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ VideoCallback f39690b;

        @Override // com.perfectcorp.perfectlib.makeupcam.video.e.a
        public final void a(long j2) {
            PfCommons.c(new xb(this.f39690b, j2, 1));
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.video.e.a
        public final void a(Exception exc) {
            PfCommons.c(new aa0(this.f39690b, exc, 3));
        }
    }

    public static void create(AccessoryCamWrapper accessoryCamWrapper, CreateCallback2 createCallback2) {
        c(accessoryCamWrapper, createCallback2);
    }

    public static void create(CameraView cameraView, CreateCallback createCallback) {
        create(cameraView, false, createCallback);
    }

    public static void create(CameraView cameraView, boolean z, CreateCallback createCallback) {
        Threads.a();
        if (!PerfectLib.d()) {
            md.k("PerfectLib.init() must be called first.");
            return;
        }
        Objects.requireNonNull(cameraView, "cameraView can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        CreateCallback createCallback2 = (CreateCallback) Proxies.a(CreateCallback.class, createCallback);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new s7(cameraView, z, 1)).f(new d8(8)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        Objects.requireNonNull(createCallback2);
        uVarI.a(new ConsumerSingleObserver(new cc0(createCallback2, 0), new cc0(createCallback2, 1)));
    }

    public static void create(CreateCallback2 createCallback2) {
        c(null, createCallback2);
    }

    public MakeupCam(CameraView cameraView, boolean z, AccessoryCamWrapper accessoryCamWrapper) {
        this(cameraView.getGPUImage().f25439a, new defpackage.o2(cameraView, 8), z, accessoryCamWrapper);
        cameraView.requestRender();
        this.l = cameraView;
    }
}
