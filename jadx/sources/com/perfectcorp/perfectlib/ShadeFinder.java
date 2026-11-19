package com.perfectcorp.perfectlib;

import android.content.Context;
import android.hardware.Sensor;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.PfCommonsJni;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.ToastUtils;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.core.LivePreviewHelper;
import com.perfectcorp.perfectlib.core.VenusModel$Assets;
import com.perfectcorp.perfectlib.core.VenusModel$Files;
import com.perfectcorp.perfectlib.exceptions.ModuleLoadFailedException;
import com.perfectcorp.perfectlib.jniproxy.CUIShadeFinder;
import com.perfectcorp.perfectlib.jniproxy.ShadeFinderMode;
import com.perfectcorp.perfectlib.jniproxy.UIShadeFinderJNI;
import com.perfectcorp.perfectlib.makeupcam.camera.ShadeFinderReport;
import com.perfectcorp.perfectlib.makeupcam.camera.SkinCare3$SkinCareCheckResult;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKShadeFinderDetectCompleteEvent;
import com.perfectcorp.thirdparty.com.getkeepsafe.relinker.ReLinker;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a8;
import defpackage.ct0;
import defpackage.d8;
import defpackage.ln0;
import defpackage.md;
import defpackage.n7;
import defpackage.pq0;
import defpackage.pv0;
import defpackage.wm;
import java.util.Arrays;
import java.util.Objects;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinder implements CameraOperator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f39834e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f39835f = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LivePreviewHelper f39836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShadeFinderFrameProcessingThread f39837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f39838c;
    public volatile long d;

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(ShadeFinder shadeFinder);
    }

    public static final class Preferences {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BasicPreferences f39839a = new BasicPreferences(DatabaseSharedPreferences.a("ShadeFinderPreferences"));
    }

    @FunctionalInterface
    public interface ShadeFinderCallback {
        void onAnalyze(ShadeFinderData shadeFinderData, ShadeFinderQualityCheck shadeFinderQualityCheck);
    }

    public ShadeFinder(String str, boolean z) throws Throwable {
        Context contextB = PfCommons.b();
        ReLinker.a(contextB, "PFMNN");
        ReLinker.a(contextB, "venus_tracking");
        ReLinker.a(contextB, "venus_shadefinder");
        CUIShadeFinder cUIShadeFinder = new CUIShadeFinder(IO.d(PfCommonsJni.a()).concat("libvenus_shadefinder.so"));
        initShadeFinder(cUIShadeFinder, ShadeFinderMode.SHADE_FINDER_WITHOUT_CALIBRATION_V4);
        LivePreviewHelper livePreviewHelper = new LivePreviewHelper();
        this.f39836a = livePreviewHelper;
        this.f39837b = new ShadeFinderFrameProcessingThread(cUIShadeFinder, str, livePreviewHelper);
        this.f39838c = z;
    }

    public static void a() {
        BasicPreferences basicPreferences = Preferences.f39839a;
        String string = basicPreferences.getString("CUSTOM_FEATURE_BRAND", "");
        boolean z = basicPreferences.getBoolean("CUSTOM_FEATURE_SHADE_FINDER_LV", false);
        if (!"LV".equals(string)) {
            f39834e = false;
        } else {
            f39834e = z;
            defpackage.a.A(pq0.r("Brand ", string, ", LV ShadeFinder: "), z ? "ON" : "OFF", 4, "ShadeFinder");
        }
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w b() {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new a8(11)).j(Schedulers.f43170c).f(new d8(22)), new d8(23)), new ct0(18));
    }

    public static void create(CreateCallback createCallback) {
        Threads.a();
        if (!PerfectLib.d()) {
            md.k("PerfectLib.init() must be called first.");
            return;
        }
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        final CreateCallback createCallback2 = (CreateCallback) Proxies.a(CreateCallback.class, createCallback);
        boolean z = PerfectLib.g.g;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w wVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(b(), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(23))), new wm(z, 4)).j(Schedulers.f43170c).f(new d8(28)), new d8(29)), new defpackage.x1(28));
        final int i2 = 0;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = wVar.f(new pv0(i2)).i(AndroidSchedulers.a());
        Objects.requireNonNull(createCallback2);
        final int i3 = 1;
        uVarI.a(new ConsumerSingleObserver(new Consumer() { // from class: qv0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                ShadeFinder.CreateCallback createCallback3 = createCallback2;
                switch (i4) {
                    case 0:
                        createCallback3.onSuccess((ShadeFinder) obj);
                        break;
                    default:
                        createCallback3.onFailure((Throwable) obj);
                        break;
                }
            }
        }, new Consumer() { // from class: qv0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                ShadeFinder.CreateCallback createCallback3 = createCallback2;
                switch (i4) {
                    case 0:
                        createCallback3.onSuccess((ShadeFinder) obj);
                        break;
                    default:
                        createCallback3.onFailure((Throwable) obj);
                        break;
                }
            }
        }));
    }

    public static void initShadeFinder(CUIShadeFinder cUIShadeFinder, ShadeFinderMode shadeFinderMode) {
        long j2;
        long j3;
        String strA;
        Context contextB = PfCommons.b();
        PerfectLib.ModelPath modelPath = PerfectLib.g.f39514a;
        try {
            if (f39834e || shadeFinderMode == ShadeFinderMode.SHADE_FINDER_LV_SHADE_DETECT) {
                j2 = 1000000;
                String[] strArr = new String[3];
                Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_GetInternalModelVersionLV(cUIShadeFinder.f40400a, cUIShadeFinder, strArr));
                Log.g(3, "ShadeFinder", "internal LV model versions=" + Arrays.toString(strArr));
                boolean z = modelPath.f39755a;
                String str = modelPath.f39756b;
                String strE = z ? VenusModel$Assets.e(contextB, str, new VenusModel$Assets(strArr[0])) : VenusModel$Files.b(str, new VenusModel$Files(strArr[0]));
                boolean z2 = modelPath.f39755a;
                String str2 = modelPath.f39756b;
                String strE2 = z2 ? VenusModel$Assets.e(contextB, str2, new VenusModel$Assets(strArr[1])) : VenusModel$Files.b(str2, new VenusModel$Files(strArr[1]));
                boolean z3 = modelPath.f39755a;
                String str3 = modelPath.f39756b;
                String strE3 = z3 ? VenusModel$Assets.e(contextB, str3, new VenusModel$Assets(strArr[2])) : VenusModel$Files.b(str3, new VenusModel$Files(strArr[2]));
                if (TextUtils.isEmpty(strE) || TextUtils.isEmpty(strE2) || TextUtils.isEmpty(strE3)) {
                    String str4 = strE;
                    String str5 = strE2;
                    String str6 = strE3;
                    Log.d("ShadeFinder", "No face tracking model(s) found.");
                    Log.d("ShadeFinder", "Please take the models from CSM : " + str4 + ", " + str5 + ", " + str6);
                    throw new ModuleLoadFailedException("Makeup module load failed. Please take the models from CSM.");
                }
                long jNanoTime = System.nanoTime();
                Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_SetInternalModelPathsLV(cUIShadeFinder.f40400a, cUIShadeFinder, strE, strE2, strE3));
                Log.g(3, "ShadeFinder", "SetInternalLVModelPaths in " + ((System.nanoTime() - jNanoTime) / 1000000) + " ms");
                j3 = cUIShadeFinder.f40400a;
            } else {
                String[] strArr2 = new String[2];
                Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_GetInternalModelVersion(cUIShadeFinder.f40400a, cUIShadeFinder, strArr2));
                Log.g(3, "ShadeFinder", "internal model versions=" + Arrays.toString(strArr2));
                boolean z4 = modelPath.f39755a;
                String str7 = modelPath.f39756b;
                if (z4) {
                    j2 = 1000000;
                    strA = VenusModel$Assets.d(contextB, str7, new VenusModel$Assets("YMK_Davinci_", ".mnn", strArr2[0]));
                } else {
                    j2 = 1000000;
                    strA = VenusModel$Files.a(str7, new VenusModel$Files(strArr2[0]));
                }
                boolean z5 = modelPath.f39755a;
                String str8 = modelPath.f39756b;
                String strD = z5 ? VenusModel$Assets.d(contextB, str8, new VenusModel$Assets("YMK_Venus_", ".mnn", strArr2[1])) : VenusModel$Files.a(str8, new VenusModel$Files(strArr2[1]));
                long jNanoTime2 = System.nanoTime();
                Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_SetInternalModelPaths(cUIShadeFinder.f40400a, cUIShadeFinder, strA, strD));
                Log.g(3, "ShadeFinder", "SetInternalModelPaths in " + ((System.nanoTime() - jNanoTime2) / j2) + " ms");
                j3 = cUIShadeFinder.f40400a;
            }
            Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_IsModelLoaded(j3, cUIShadeFinder));
            String[] strArr3 = new String[2];
            Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_GetShadeFinderModelVersion(cUIShadeFinder.f40400a, cUIShadeFinder, strArr3, shadeFinderMode.a()));
            Log.g(3, "ShadeFinder", "shade finder model versions=" + Arrays.toString(strArr3));
            boolean z6 = modelPath.f39755a;
            String str9 = modelPath.f39756b;
            String strE4 = z6 ? VenusModel$Assets.e(contextB, str9, new VenusModel$Assets(strArr3[0])) : VenusModel$Files.b(str9, new VenusModel$Files(strArr3[0]));
            boolean z7 = modelPath.f39755a;
            String str10 = modelPath.f39756b;
            String strE5 = z7 ? VenusModel$Assets.e(contextB, str10, new VenusModel$Assets(strArr3[1])) : VenusModel$Files.b(str10, new VenusModel$Files(strArr3[1]));
            long jNanoTime3 = System.nanoTime();
            Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_SetShadeFinderModelPath(cUIShadeFinder.f40400a, cUIShadeFinder, strE4, strE5, shadeFinderMode.a()));
            Log.g(3, "ShadeFinder", "SetShadeFinderModelPath in " + ((System.nanoTime() - jNanoTime3) / j2) + " ms");
            Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_SetMaxDetectedFaceNumber(cUIShadeFinder.f40400a, cUIShadeFinder, 1));
            Preconditions.i(UIShadeFinderJNI.CUIShadeFinder_SetShadeFinderMode(cUIShadeFinder.f40400a, cUIShadeFinder, shadeFinderMode.a()));
        } catch (Throwable th) {
            Log.e("ShadeFinder", "Module load failed", th);
            throw new ModuleLoadFailedException(th);
        }
    }

    public final void onCameraOpened(boolean z, int i2, int i3, int i4) {
        int i5;
        Threads.b();
        LivePreviewHelper livePreviewHelper = this.f39836a;
        livePreviewHelper.f40090f = z;
        livePreviewHelper.g = i2;
        LivePreviewHelper livePreviewHelper2 = this.f39836a;
        int rotation = livePreviewHelper2.f40088c.getDefaultDisplay().getRotation();
        if (rotation == 1) {
            i5 = 90;
        } else if (rotation != 2) {
            i5 = rotation != 3 ? 0 : Sink.ORIENTATION_270;
        } else {
            i5 = Sink.ORIENTATION_180;
        }
        boolean z2 = livePreviewHelper2.f40090f;
        int i6 = livePreviewHelper2.g;
        livePreviewHelper2.f40091h = z2 ? (360 - ((i6 + i5) % 360)) % 360 : ((i6 - i5) + 360) % 360;
        int i7 = PfCommons.b().getResources().getConfiguration().orientation;
    }

    public final void onCreated() {
        Threads.a();
    }

    public final void onDestroyed() {
        Threads.a();
        this.f39837b.quit();
    }

    public final void onPaused() {
        Threads.a();
        LivePreviewHelper livePreviewHelper = this.f39836a;
        livePreviewHelper.getClass();
        try {
            livePreviewHelper.f40086a.unregisterListener(livePreviewHelper.f40092i);
        } catch (Exception e2) {
            Log.e("LivePreviewHelper", "onPause", e2);
        }
    }

    public final void onResumed() {
        Threads.a();
        LivePreviewHelper livePreviewHelper = this.f39836a;
        livePreviewHelper.getClass();
        try {
            Sensor sensor = livePreviewHelper.f40087b;
            if (sensor != null) {
                livePreviewHelper.f40086a.registerListener(livePreviewHelper.f40092i, sensor, 2);
            }
        } catch (Exception e2) {
            Log.e("LivePreviewHelper", "onResume", e2);
        }
    }

    public final void onStarted() {
        Threads.a();
    }

    public final void onStopped() {
        Threads.a();
    }

    public final void sendCameraBuffer(CameraFrame cameraFrame) {
        Threads.b();
        FrameProcessingThread.Frame frame = new FrameProcessingThread.Frame();
        frame.d = cameraFrame.f39502a;
        frame.f40082b = cameraFrame.f39503b;
        frame.f40083c = cameraFrame.f39504c;
        frame.f40081a = -1L;
        frame.f40085f = cameraFrame.d;
        this.f39837b.sendNewFrame(frame);
        if (this.f39838c) {
            if (cameraFrame.d) {
                this.d = 0L;
            }
            if (System.nanoTime() - this.d > 10000000000L) {
                ToastUtils.a();
                this.d = System.nanoTime();
            }
        }
    }

    public final void setShadeFinderCallback(ShadeFinderCallback shadeFinderCallback) {
        Threads.a();
        ShadeFinderFrameProcessingThread shadeFinderFrameProcessingThread = this.f39837b;
        if (shadeFinderCallback == null) {
            shadeFinderFrameProcessingThread.a((ShadeFinderCallback) null);
        } else {
            shadeFinderFrameProcessingThread.a(new ln0(shadeFinderCallback, 10));
        }
    }

    public static final class ShadeFinderFrameProcessingThread extends FrameProcessingThread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CUIShadeFinder f39840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f39841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final LivePreviewHelper f39842c;
        private final ShadeFinderReport d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SkinCare3$SkinCareCheckResult f39843e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private volatile ShadeFinderCallback f39844f;

        public ShadeFinderFrameProcessingThread(CUIShadeFinder cUIShadeFinder, String str, LivePreviewHelper livePreviewHelper) {
            super("ShadeFinderFrameProcessingThread");
            this.d = new ShadeFinderReport();
            this.f39843e = new SkinCare3$SkinCareCheckResult();
            this.f39840a = cUIShadeFinder;
            this.f39841b = str;
            this.f39842c = livePreviewHelper;
        }

        @Override // com.perfectcorp.perfectlib.core.FrameProcessingThread
        public final void processing(FrameProcessingThread.Frame frame) {
            boolean z = this.f39842c.f40090f;
            int i2 = frame.g;
            if (i2 < 0) {
                LivePreviewHelper livePreviewHelper = this.f39842c;
                synchronized (livePreviewHelper.d) {
                    try {
                        float[] fArr = livePreviewHelper.f40089e;
                        if (livePreviewHelper.f40087b == null || ((Math.abs(fArr[0]) < 0.01d && Math.abs(fArr[1]) < 0.01d && Math.abs(fArr[2]) < 0.01d) || Math.abs(fArr[2]) > 9.2f)) {
                            i2 = 90;
                        } else if (Math.abs(fArr[0]) > Math.abs(fArr[1]) + 3.0f) {
                            float f2 = fArr[0];
                            int i3 = livePreviewHelper.f40091h;
                            i2 = f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? (i3 + Sink.ORIENTATION_270) % 360 : (i3 + 90) % 360;
                        } else {
                            float f3 = fArr[1];
                            i2 = livePreviewHelper.f40091h;
                            if (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                i2 = (i2 + Sink.ORIENTATION_180) % 360;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            int i4 = i2;
            if (frame.f40085f) {
                CUIShadeFinder cUIShadeFinder = this.f39840a;
                if (!UIShadeFinderJNI.CUIShadeFinder_ResetShadeFinder(cUIShadeFinder.f40400a, cUIShadeFinder)) {
                    Log.d("ShadeFinder", "ResetShadeFinder failed.");
                }
            }
            CUIShadeFinder cUIShadeFinder2 = this.f39840a;
            UIShadeFinderJNI.CUIShadeFinder_TrackYUV420Biplanar(cUIShadeFinder2.f40400a, cUIShadeFinder2, frame.d, frame.f40082b, frame.f40083c, i4, z, frame.f40085f);
            CUIShadeFinder cUIShadeFinder3 = this.f39840a;
            if (!UIShadeFinderJNI.CUIShadeFinder_GetShadeFinderData__SWIG_1(cUIShadeFinder3.f40400a, cUIShadeFinder3, this.f39841b, this.d)) {
                Log.d("ShadeFinder", "GetShadeFinderData failed. detectionMode=" + this.f39841b);
                return;
            }
            CUIShadeFinder cUIShadeFinder4 = this.f39840a;
            if (!UIShadeFinderJNI.CUIShadeFinder_GetShadeFinderCheckResult(cUIShadeFinder4.f40400a, cUIShadeFinder4, this.f39843e)) {
                Log.d("ShadeFinder", "GetShadeFinderCheckResult failed.");
                return;
            }
            ShadeFinderCallback shadeFinderCallback = this.f39844f;
            if (shadeFinderCallback != null) {
                ShadeFinderReport shadeFinderReport = new ShadeFinderReport(this.d);
                ShadeFinderQualityCheck shadeFinderQualityCheck = new ShadeFinderQualityCheck(new SkinCare3$SkinCareCheckResult(this.f39843e));
                PfCommons.c(new f(shadeFinderCallback, new ShadeFinderData(shadeFinderReport, shadeFinderQualityCheck), shadeFinderQualityCheck, 9));
                int i5 = shadeFinderReport.report_id;
                if (i5 >= 6 && ShadeFinder.f39835f) {
                    ShadeFinder.f39835f = false;
                    new MCSDKShadeFinderDetectCompleteEvent().b();
                } else if (i5 < 6) {
                    ShadeFinder.f39835f = true;
                }
            }
        }

        public final void a(ShadeFinderCallback shadeFinderCallback) {
            this.f39844f = shadeFinderCallback;
        }
    }
}
