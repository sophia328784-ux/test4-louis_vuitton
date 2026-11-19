package com.perfectcorp.perfectlib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.IBeautyFilter2;
import com.cyberlink.clgpuimage.PixelBuffer;
import com.cyberlink.clgpuimage.Rotation;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveCubeEyewearFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.GPUImageBackgroundFilter;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.opengl.GLInfo;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.PhotoMakeup;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.exceptions.ModuleLoadFailedException;
import com.perfectcorp.perfectlib.internal.AppliedResult;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.internal.NecklaceFilter;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringChainSettings;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringConvexColliders;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringJointSettings;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringObjectSettings;
import com.perfectcorp.perfectlib.makeupcam.camera.EyeModel;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.GPUImageFilterBuilder;
import com.perfectcorp.perfectlib.makeupcam.camera.LipShapeParameters;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveParameters;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.utility.CameraUtils$PictureTaken;
import com.perfectcorp.thirdparty.com.getkeepsafe.relinker.ReLinker;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.co0;
import defpackage.d8;
import defpackage.fc;
import defpackage.ho0;
import defpackage.ln0;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import defpackage.tg0;
import defpackage.tr;
import defpackage.xw;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes3.dex */
public final class PhotoMakeup implements ApplierTarget {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f39759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseVenus f39760c;
    public final LiveMakeupCtrl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ApplyEffectCtrl f39761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PhotoMakeupFrameProcessingThread f39762f;
    public final Bitmap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FrameProcessingThread.Frame f39763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicReference f39764i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f39765j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f39766k;
    public final List l;
    public volatile FaceData m;
    public final CompositeDisposable n;
    public volatile On4SplitScreenIndexSwitchListener o;
    public volatile int p;
    public volatile boolean q;

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(PhotoMakeup photoMakeup);
    }

    public interface DetectFaceCallback {
        void onFailure(Throwable th);

        void onSuccess(List<FaceData> list);
    }

    @FunctionalInterface
    public interface On4SplitScreenIndexSwitchListener {
        public static final On4SplitScreenIndexSwitchListener NOP = new y(18);

        Single<Bitmap> onIndexSwitched(int i2);
    }

    public interface OnLiplinerChangedCallback {
        void onFailure(Throwable th);

        void onLiplinerChanged(Bitmap bitmap);
    }

    public interface ReleaseCallback {
        void onReleased();
    }

    public interface SkinSmoothChangedCallback {
        void onFailure(Throwable th);

        void onSkinSmoothChanged(Bitmap bitmap);
    }

    public interface SwitchFaceIndexCallback {
        void onFaceIndexSwitched(Bitmap bitmap);

        void onFailure(Throwable th);
    }

    public PhotoMakeup(Bitmap bitmap, boolean z, AccessoryCamWrapper accessoryCamWrapper) throws Throwable {
        ApplyEffectParams applyEffectParams = new ApplyEffectParams();
        this.f39764i = new AtomicReference();
        this.l = pq0.v();
        this.n = new CompositeDisposable();
        this.o = On4SplitScreenIndexSwitchListener.NOP;
        Set set = PerfectLib.d;
        if (!set.contains(Functionality.MAKEUP) && !set.contains(Functionality.HAIR_COLOR) && !set.contains(Functionality.RESHAPE) && !set.contains(Functionality.EYEWEAR) && !set.contains(Functionality.EYEWEAR_3D) && !set.contains(Functionality.EARRINGS) && !set.contains(Functionality.BACKGROUND)) {
            mt.i("Doesn't have a valid license.");
            throw null;
        }
        if (!ModuleConfig.p) {
            throw new ModuleLoadFailedException("Module 'PerfectLibFaceTracking' is missing.");
        }
        applyEffectParams.a(PerfectLib.f39739b);
        Context contextB = PfCommons.b();
        ReLinker.a(contextB, "PFMNN");
        ReLinker.a(contextB, "venus_tracking");
        ReLinker.a(contextB, "venus");
        BaseVenus baseVenus = new BaseVenus();
        this.f39760c = baseVenus;
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        ImmutableSet immutableSetA = MakeupCam.a(set, baseVenus, applyEffectParams, false, accessoryCamWrapper, atomicBoolean);
        Preconditions.i(UIMakeupJNI.CUIMakeupLive_SetTrackingMode(baseVenus.f40398a, baseVenus, true));
        Pair pairCreate = Pair.create(Boolean.valueOf(atomicBoolean.get()), immutableSetA);
        boolean zBooleanValue = ((Boolean) pairCreate.first).booleanValue();
        this.f39758a = zBooleanValue;
        this.f39759b = (Set) pairCreate.second;
        LiveMakeupCtrl liveMakeupCtrl = new LiveMakeupCtrl(baseVenus, zBooleanValue, z, Math.max(bitmap.getWidth(), bitmap.getHeight()), accessoryCamWrapper);
        this.d = liveMakeupCtrl;
        liveMakeupCtrl.S = 0;
        liveMakeupCtrl.n(this.p, true);
        this.f39761e = new ApplyEffectCtrl(liveMakeupCtrl, liveMakeupCtrl.d, ApplyEffectCtrl.I, applyEffectParams);
        PhotoMakeupFrameProcessingThread photoMakeupFrameProcessingThread = new PhotoMakeupFrameProcessingThread(liveMakeupCtrl);
        this.f39762f = photoMakeupFrameProcessingThread;
        StringBuilder sbQ = fc.q(GLInfo.f39383a, "[<init>] maxTextureSize=", ", bitmap=");
        sbQ.append(bitmap.getWidth());
        sbQ.append('x');
        sbQ.append(bitmap.getHeight());
        Log.g(3, "PhotoMakeup", sbQ.toString());
        int width = bitmap.getWidth() & (-4);
        int height = bitmap.getHeight() & (-2);
        Bitmap bitmapCopy = (bitmap.getWidth() == width && bitmap.getHeight() == height) ? bitmap.copy(Bitmap.Config.ARGB_8888, true) : Bitmap.createScaledBitmap(bitmap, width, height, true);
        this.g = bitmapCopy;
        int width2 = bitmap.getWidth();
        int height2 = bitmap.getHeight();
        int width3 = bitmapCopy.getWidth();
        int height3 = bitmapCopy.getHeight();
        byte[] bArrA = CameraUtils$PictureTaken.a(bitmapCopy);
        FrameProcessingThread.Frame frame = new FrameProcessingThread.Frame();
        frame.d = bArrA;
        frame.f40082b = width3;
        frame.f40083c = height3;
        frame.f40084e = null;
        frame.f40081a = -1L;
        this.f39763h = frame;
        photoMakeupFrameProcessingThread.a(frame, width2, height2);
        liveMakeupCtrl.Q = frame.f40082b;
        liveMakeupCtrl.R = frame.f40083c;
    }

    public static void create(Bitmap bitmap, boolean z, AccessoryCamWrapper accessoryCamWrapper, CreateCallback createCallback) {
        Threads.a();
        if (!PerfectLib.d()) {
            md.k("PerfectLib.init() must be called first.");
            return;
        }
        Objects.requireNonNull(bitmap, "image can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        final CreateCallback createCallback2 = (CreateCallback) Proxies.a(CreateCallback.class, createCallback);
        final int i2 = 0;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new ho0(bitmap, z, accessoryCamWrapper, i2)).f(new d8(16)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        Objects.requireNonNull(createCallback2);
        Consumer consumer = new Consumer() { // from class: do0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                PhotoMakeup.CreateCallback createCallback3 = createCallback2;
                switch (i3) {
                    case 0:
                        createCallback3.onSuccess((PhotoMakeup) obj);
                        break;
                    default:
                        createCallback3.onFailure((Throwable) obj);
                        break;
                }
            }
        };
        final int i3 = 1;
        uVarI.a(new ConsumerSingleObserver(consumer, new Consumer() { // from class: do0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                PhotoMakeup.CreateCallback createCallback3 = createCallback2;
                switch (i4) {
                    case 0:
                        createCallback3.onSuccess((PhotoMakeup) obj);
                        break;
                    default:
                        createCallback3.onFailure((Throwable) obj);
                        break;
                }
            }
        }));
    }

    public final void a() {
        if (this.f39764i.get() == null) {
            return;
        }
        md.k("Instance is already released.");
    }

    public final void currentFaceIndex(int i2, SwitchFaceIndexCallback switchFaceIndexCallback) {
        Threads.a();
        a();
        Objects.requireNonNull(switchFaceIndexCallback, "callback can't be null");
        Log.g(3, "PhotoMakeup", "[switchFaceIndex] start");
        SwitchFaceIndexCallback switchFaceIndexCallback2 = (SwitchFaceIndexCallback) Proxies.a(SwitchFaceIndexCallback.class, switchFaceIndexCallback);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = this.o.onIndexSwitched(i2).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new co0(0, switchFaceIndexCallback2), new co0(1, switchFaceIndexCallback2));
        uVarI.a(consumerSingleObserver);
        this.n.b(consumerSingleObserver);
    }

    public final void detectFace(DetectFaceCallback detectFaceCallback) {
        Threads.a();
        a();
        Objects.requireNonNull(detectFaceCallback, "callback can't be null");
        Log.g(3, "PhotoMakeup", "[detectFace] start");
        final DetectFaceCallback detectFaceCallback2 = (DetectFaceCallback) Proxies.a(DetectFaceCallback.class, detectFaceCallback);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new defpackage.n2(this, 10)).i(Schedulers.f43170c), new ln0(this, 2)).i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: fo0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PhotoMakeup f69186b;

            {
                this.f69186b = this;
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        PhotoMakeup photoMakeup = this.f69186b;
                        PhotoMakeup.DetectFaceCallback detectFaceCallback3 = detectFaceCallback2;
                        Log.g(3, "PhotoMakeup", "[detectFace] success");
                        photoMakeup.l.addAll((Collection) obj);
                        photoMakeup.f39765j = false;
                        photoMakeup.f39766k = true;
                        detectFaceCallback3.onSuccess(Collections.unmodifiableList(photoMakeup.l));
                        break;
                    default:
                        PhotoMakeup photoMakeup2 = this.f69186b;
                        PhotoMakeup.DetectFaceCallback detectFaceCallback4 = detectFaceCallback2;
                        Throwable th = (Throwable) obj;
                        Log.e("PhotoMakeup", "[detectFace] failed", th);
                        photoMakeup2.f39765j = false;
                        detectFaceCallback4.onFailure(th);
                        break;
                }
            }
        }, new Consumer(this) { // from class: fo0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PhotoMakeup f69186b;

            {
                this.f69186b = this;
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        PhotoMakeup photoMakeup = this.f69186b;
                        PhotoMakeup.DetectFaceCallback detectFaceCallback3 = detectFaceCallback2;
                        Log.g(3, "PhotoMakeup", "[detectFace] success");
                        photoMakeup.l.addAll((Collection) obj);
                        photoMakeup.f39765j = false;
                        photoMakeup.f39766k = true;
                        detectFaceCallback3.onSuccess(Collections.unmodifiableList(photoMakeup.l));
                        break;
                    default:
                        PhotoMakeup photoMakeup2 = this.f69186b;
                        PhotoMakeup.DetectFaceCallback detectFaceCallback4 = detectFaceCallback2;
                        Throwable th = (Throwable) obj;
                        Log.e("PhotoMakeup", "[detectFace] failed", th);
                        photoMakeup2.f39765j = false;
                        detectFaceCallback4.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.n.b(consumerSingleObserver);
    }

    public final void enable4SplitScreen(boolean z, SwitchFaceIndexCallback switchFaceIndexCallback) {
        Threads.a();
        a();
        Objects.requireNonNull(switchFaceIndexCallback, "callback can't be null");
        Log.g(3, "PhotoMakeup", "[enable4SplitScreen] start");
        SwitchFaceIndexCallback switchFaceIndexCallback2 = (SwitchFaceIndexCallback) Proxies.a(SwitchFaceIndexCallback.class, switchFaceIndexCallback);
        this.q = z;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = this.o.onIndexSwitched(0).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new co0(2, switchFaceIndexCallback2), new co0(3, switchFaceIndexCallback2));
        uVarI.a(consumerSingleObserver);
        this.n.b(consumerSingleObserver);
    }

    public final void enableLiplinerOnTop(boolean z, OnLiplinerChangedCallback onLiplinerChangedCallback) {
        Threads.a();
        a();
        Objects.requireNonNull(onLiplinerChangedCallback, "callback can't be null");
        Log.g(3, "PhotoMakeup", "[enableLiplinerOnTop] start");
        LiveMakeupCtrl liveMakeupCtrl = this.d;
        liveMakeupCtrl.P = z;
        liveMakeupCtrl.f39769e.Q(-1, z);
        final OnLiplinerChangedCallback onLiplinerChangedCallback2 = (OnLiplinerChangedCallback) Proxies.a(OnLiplinerChangedCallback.class, onLiplinerChangedCallback);
        final int i2 = 0;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = this.o.onIndexSwitched(isEnable4SplitScreen() ? this.p : 0).i(AndroidSchedulers.a());
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: go0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Log.g(3, "PhotoMakeup", "[enableLiplinerOnTop] complete");
                        onLiplinerChangedCallback2.onLiplinerChanged((Bitmap) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("PhotoMakeup", "[enableLiplinerOnTop] failed", th);
                        onLiplinerChangedCallback2.onFailure(th);
                        break;
                }
            }
        }, new Consumer() { // from class: go0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Log.g(3, "PhotoMakeup", "[enableLiplinerOnTop] complete");
                        onLiplinerChangedCallback2.onLiplinerChanged((Bitmap) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("PhotoMakeup", "[enableLiplinerOnTop] failed", th);
                        onLiplinerChangedCallback2.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.n.b(consumerSingleObserver);
    }

    public final void enableSkinSmoothFaceOnly(boolean z, SkinSmoothChangedCallback skinSmoothChangedCallback) {
        Threads.a();
        a();
        Objects.requireNonNull(skinSmoothChangedCallback, "callback can't be null");
        Log.g(3, "PhotoMakeup", "[enableSkinSmoothFaceOnly] start");
        final SkinSmoothChangedCallback skinSmoothChangedCallback2 = (SkinSmoothChangedCallback) Proxies.a(SkinSmoothChangedCallback.class, skinSmoothChangedCallback);
        this.d.O = z;
        final int i2 = 1;
        this.d.n(this.p, true);
        final int i3 = 0;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = this.o.onIndexSwitched(isEnable4SplitScreen() ? this.p : 0).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: eo0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Log.g(3, "PhotoMakeup", "[enableSkinSmoothFaceOnly] complete");
                        skinSmoothChangedCallback2.onSkinSmoothChanged((Bitmap) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("PhotoMakeup", "[enableSkinSmoothFaceOnly] failed", th);
                        skinSmoothChangedCallback2.onFailure(th);
                        break;
                }
            }
        }, new Consumer() { // from class: eo0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Log.g(3, "PhotoMakeup", "[enableSkinSmoothFaceOnly] complete");
                        skinSmoothChangedCallback2.onSkinSmoothChanged((Bitmap) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("PhotoMakeup", "[enableSkinSmoothFaceOnly] failed", th);
                        skinSmoothChangedCallback2.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        this.n.b(consumerSingleObserver);
    }

    public final Set<Functionality> getAvailableFunctionalities() {
        return this.f39759b;
    }

    public final boolean isEnable4SplitScreen() {
        return this.q;
    }

    public final void release(ReleaseCallback releaseCallback) {
        String str;
        Threads.a();
        Objects.requireNonNull(releaseCallback, "releaseCallback can't be null");
        Log.g(3, "PhotoMakeup", "release");
        ReleaseCallback releaseCallback2 = (ReleaseCallback) Proxies.a(ReleaseCallback.class, releaseCallback);
        Threads.a();
        AtomicReference atomicReference = this.f39764i;
        if (atomicReference.get() != null) {
            str = "Listen to existed release task.";
        } else {
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.a aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.v(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(this, 7)).j(Schedulers.f43170c), new tg0(29), null));
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
        Log.g(3, "PhotoMakeup", str);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = ((Single) atomicReference.get()).i(AndroidSchedulers.a());
        Objects.requireNonNull(releaseCallback2);
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.k(uVarI, new xw(releaseCallback2, 5)).a(new ConsumerSingleObserver(new d8(14), new d8(15)));
    }

    public final boolean setFace(FaceData faceData) {
        String str;
        Threads.a();
        a();
        Objects.requireNonNull(faceData, "faceData can't be null");
        Log.g(3, "PhotoMakeup", "setFace");
        if (this.m != null) {
            str = "Face already set.";
        } else {
            if (this.l.contains(faceData)) {
                this.m = faceData;
                this.d.N = faceData.f39613b;
                Log.g(3, "PhotoMakeup", "Face set.");
                return true;
            }
            str = "Unknown face data.";
        }
        Log.d("PhotoMakeup", str);
        return false;
    }

    public final void setPupilDistance(float f2) {
        Preconditions.g(!Float.isNaN(f2), "pupilDistance shouldn't be NaN");
        Preconditions.g(Float.compare(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) >= 0, "pupilDistance shouldn't be less than 0");
        Log.g(3, "PhotoMakeup", "setPupilDistance");
        this.f39762f.a(f2);
    }

    public static final class PhotoMakeupFrameProcessingThread extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LiveMakeupCtrl f39775a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final GPUImageRenderer f39776b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AtomicReference<FrameProcessingThread.Frame> f39777c;
        private volatile int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private volatile int f39778e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private volatile Handler f39779f;
        private volatile PixelBuffer g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Looper f39780h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Throwable f39781i;

        public PhotoMakeupFrameProcessingThread(LiveMakeupCtrl liveMakeupCtrl) {
            super("PhotoMakeupFrameProcessingThread");
            this.f39777c = new AtomicReference<>();
            this.f39775a = liveMakeupCtrl;
            GPUImageBackgroundFilter gPUImageBackgroundFilter = liveMakeupCtrl.J;
            GPUImageBackgroundFilter gPUImageBackgroundFilter2 = liveMakeupCtrl.K;
            NecklaceFilter necklaceFilter = liveMakeupCtrl.L;
            CLMakeupLiveFilter cLMakeupLiveFilter = liveMakeupCtrl.f39769e;
            cLMakeupLiveFilter.k0(necklaceFilter == null ? ImmutableList.z(gPUImageBackgroundFilter2) : ImmutableList.A(gPUImageBackgroundFilter2, necklaceFilter));
            cLMakeupLiveFilter.r0(Collections.singletonList(gPUImageBackgroundFilter));
            this.f39776b = new GPUImageRenderer(cLMakeupLiveFilter, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Failed to calculate best type for var: r37v1 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r37v1 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 6 more
         */
        /* JADX WARN: Failed to calculate best type for var: r37v1 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r37v1 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r37v2 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r37v2 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r37v4 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r37v4 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r3v18 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v18 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r3v3 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v3 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r3v4 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v4 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r46v0 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r46v0 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r46v1 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r46v1 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r46v2 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r46v2 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r5v55 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v55 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r5v60 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v60 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r5v61 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v61 ??, new type: boolean[]
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r5v62 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v62 ??, new type: boolean[]
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to set immutable type for var: r5v61 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v61 ??, new type: boolean[]
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 6 more
         */
        /* JADX WARN: Failed to set immutable type for var: r5v62 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v62 ??, new type: boolean[]
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 6 more
         */
        /*  JADX ERROR: Types fix failed
            jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r37v1 ??, new type: boolean
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
            Caused by: java.lang.NullPointerException
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
            	... 5 more
            */
        public com.perfectcorp.perfectlib.internal.AppliedResult a(com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration r89) throws java.lang.Exception {
            /*
                Method dump skipped, instruction units count: 1013
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.perfectlib.PhotoMakeup.PhotoMakeupFrameProcessingThread.a(com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$Configuration):com.perfectcorp.perfectlib.internal.AppliedResult");
        }

        private Looper b() throws Throwable {
            if (!isAlive()) {
                Throwable th = this.f39781i;
                if (th == null) {
                    return null;
                }
                throw th;
            }
            synchronized (this) {
                while (isAlive() && this.f39780h == null && this.f39781i == null) {
                    try {
                        wait();
                    } catch (Exception unused) {
                    }
                }
                Looper looper = this.f39780h;
                if (looper != null) {
                    return looper;
                }
                Throwable th2 = this.f39781i;
                if (th2 == null) {
                    return null;
                }
                throw th2;
            }
        }

        private Looper c() {
            Looper looper;
            if (!isAlive()) {
                return null;
            }
            synchronized (this) {
                while (isAlive() && this.f39780h == null) {
                    try {
                        wait();
                    } catch (Exception unused) {
                    }
                }
                looper = this.f39780h;
            }
            return looper;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            LiveMakeupCtrl liveMakeupCtrl = this.f39775a;
            liveMakeupCtrl.getClass();
            try {
                if (!liveMakeupCtrl.f39771h.get()) {
                    ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
                    writeLock.lock();
                    try {
                        BaseVenus baseVenus = liveMakeupCtrl.f39767b;
                        UIMakeupJNI.CUIMakeupLive_InitialEyeModelCommonInfo(baseVenus.f40398a, baseVenus, EyeModel.f40610b, 450, 300);
                        BaseVenus baseVenus2 = liveMakeupCtrl.f39767b;
                        UIMakeupJNI.CUIMakeupLive_InitialEyeContactModelCommonInfo(baseVenus2.f40398a, baseVenus2, 200, 200);
                        BaseVenus baseVenus3 = liveMakeupCtrl.f39767b;
                        int i2 = liveMakeupCtrl.Q;
                        int i3 = liveMakeupCtrl.R;
                        LiveSettingCtrl liveSettingCtrl = liveMakeupCtrl.f39770f;
                        UIMakeupJNI.CUIMakeupLive_GetEyeContactModelParameters(baseVenus3.f40398a, baseVenus3, i2, i3, liveSettingCtrl.f40742a, liveSettingCtrl.f40743b, liveSettingCtrl.f40744c);
                        writeLock.unlock();
                        synchronized (liveMakeupCtrl.f39771h) {
                            liveMakeupCtrl.f39771h.set(true);
                            liveMakeupCtrl.f39771h.notifyAll();
                        }
                    } catch (Throwable th) {
                        ApplyEffectCtrl.L.unlock();
                        throw th;
                    }
                }
            } catch (OutOfMemoryError e2) {
                Log.e("PhotoMakeup", "Out of memory when init eye model", e2);
            }
            this.f39775a.f39769e.I0(0);
            this.f39775a.J.l0 = 0;
        }

        public final ListenableFuture<AppliedResult> applyConfiguration(ApplyEffectCtrl.Configuration configuration) {
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new z(this, configuration, 9));
            return (this.f39779f == null || !this.f39779f.post(listenableFutureTaskCreate)) ? Futures.f(new SkipCallbackException("Frame processing handler thread already quit.")) : listenableFutureTaskCreate;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x00b8 */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instruction units count: 219
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.perfectlib.PhotoMakeup.PhotoMakeupFrameProcessingThread.run():void");
        }

        public final void runOnGLThread(Runnable runnable) {
            if (this.f39779f != null) {
                this.f39779f.post(runnable);
            } else {
                Log.d("PhotoMakeup", "[runOnGLThread] handler is null");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(float f2) {
            CLMakeupLiveFilter cLMakeupLiveFilter = this.f39775a.f39769e;
            int i2 = 0;
            while (true) {
                CLMakeupLiveCubeEyewearFilter[] cLMakeupLiveCubeEyewearFilterArr = cLMakeupLiveFilter.e0;
                if (i2 < cLMakeupLiveCubeEyewearFilterArr.length) {
                    CLMakeupLiveCubeEyewearFilter cLMakeupLiveCubeEyewearFilter = cLMakeupLiveCubeEyewearFilterArr[i2];
                    cLMakeupLiveCubeEyewearFilter.O = f2;
                    cLMakeupLiveCubeEyewearFilter.G();
                    i2++;
                } else {
                    this.f39775a.f39769e.y0(f2);
                    return;
                }
            }
        }

        public final void a() {
            Looper looperC = c();
            if (looperC != null) {
                looperC.quit();
            }
        }

        public final void a(final float f2) {
            runOnGLThread(new Runnable() { // from class: com.perfectcorp.perfectlib.n3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f41077b.b(f2);
                }
            });
        }

        public final void a(FrameProcessingThread.Frame frame, int i2, int i3) {
            synchronized (this) {
                Throwable th = this.f39781i;
                if (th != null) {
                    throw th;
                }
            }
            AtomicReference<FrameProcessingThread.Frame> atomicReference = this.f39777c;
            while (!atomicReference.compareAndSet(null, frame)) {
                if (atomicReference.get() != null) {
                    md.k("Can not set image frame twice.");
                    return;
                }
            }
            this.d = i2;
            this.f39778e = i3;
            this.f39776b.i(Rotation.NORMAL, false, false);
            GPUImageRenderer gPUImageRenderer = this.f39776b;
            frame.getClass();
            GPUImageRenderer.YUVBuffer.Builder builder = new GPUImageRenderer.YUVBuffer.Builder();
            builder.f25483a = frame.d;
            builder.f25484b = frame.f40082b;
            builder.f25485c = frame.f40083c;
            builder.d = frame.f40081a;
            gPUImageRenderer.k(new GPUImageRenderer.YUVBuffer(builder), null);
            start();
            this.f39779f = new Handler(b());
            this.f39779f.post(new s(this, 3));
        }

        private static void a(String str) {
            String str2;
            for (int iGlGetError = GLES20.glGetError(); iGlGetError != 0; iGlGetError = GLES20.glGetError()) {
                if (iGlGetError != 1285) {
                    StringBuilder sbR = pq0.r("[GL error] ", str, " error=0x");
                    sbR.append(Integer.toHexString(iGlGetError));
                    sbR.append(" ");
                    if (iGlGetError != 0) {
                        switch (iGlGetError) {
                            case Sink.Video.MAX_DIMENSION_HIGH /* 1280 */:
                                str2 = "GL_INVALID_ENUM";
                                break;
                            case 1281:
                                str2 = "GL_INVALID_VALUE";
                                break;
                            case 1282:
                                str2 = "GL_INVALID_OPERATION";
                                break;
                            case 1283:
                                str2 = "GL_STACK_OVERFLOW";
                                break;
                            case 1284:
                                str2 = "GL_STACK_UNDERFLOW";
                                break;
                            case 1285:
                                str2 = "GL_OUT_OF_MEMORY";
                                break;
                            case 1286:
                                str2 = "GL_INVALID_FRAMEBUFFER_OPERATION";
                                break;
                            default:
                                str2 = null;
                                break;
                        }
                    } else {
                        str2 = "GL_NO_ERROR";
                    }
                    sbR.append(str2);
                    Log.d("PhotoMakeup", sbR.toString());
                } else {
                    throw new OutOfMemoryError(tr.g("[GL error][OOM] ", str));
                }
            }
        }
    }

    public static void create(Bitmap bitmap, CreateCallback createCallback) {
        create(bitmap, false, null, createCallback);
    }

    public static void create(Bitmap bitmap, boolean z, CreateCallback createCallback) {
        create(bitmap, z, null, createCallback);
    }

    public static final class LiveMakeupCtrl implements LiveMakeupCtrlInterface {
        public final float[] A;
        public final float[] B;
        public final EarringConvexColliders[][] C;
        public final float[] D;
        public int E;
        public com.perfectcorp.perfectlib.makeupcam.camera.q F;
        public final LipShapeParameters[] G;
        public final com.perfectcorp.perfectlib.makeupcam.camera.i H;
        public final com.perfectcorp.perfectlib.makeupcam.camera.c I;
        public final GPUImageBackgroundFilter J;
        public final GPUImageBackgroundFilter K;
        public final NecklaceFilter L;
        public final AccessoryCamWrapper M;
        public volatile int N;
        public volatile boolean O;
        public volatile boolean P;
        public volatile int Q;
        public volatile int R;
        public volatile int S;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BaseVenus f39767b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f39768c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CLMakeupLiveFilter f39769e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LiveSettingCtrl f39770f;
        public final com.perfectcorp.perfectlib.makeupcam.camera.l g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicBoolean f39771h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean[] f39772i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean[] f39773j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Rect[] f39774k;
        public final LiveParameters.Eyebrow l;
        public final LiveParameters.Reshape[] m;
        public final ImmutableSet n;
        public final boolean[] o;
        public final int[] p;
        public final boolean[] q;
        public final com.perfectcorp.perfectlib.makeupcam.camera.n[] r;
        public final com.perfectcorp.perfectlib.makeupcam.camera.n[] s;
        public final int[] t;
        public final int[] u;
        public final int[] v;
        public final float[] w;
        public final EarringObjectSettings[][] x;
        public final EarringChainSettings[][] y;
        public final EarringJointSettings[][] z;

        public LiveMakeupCtrl(BaseVenus baseVenus, boolean z, boolean z2, int i2, AccessoryCamWrapper accessoryCamWrapper) {
            int iCUIMakeupLive_GetMaxDetectedFaceCount = UIMakeupJNI.CUIMakeupLive_GetMaxDetectedFaceCount();
            this.d = iCUIMakeupLive_GetMaxDetectedFaceCount;
            LiveSettingCtrl liveSettingCtrl = new LiveSettingCtrl();
            this.f39770f = liveSettingCtrl;
            this.f39771h = new AtomicBoolean(false);
            this.f39772i = new boolean[iCUIMakeupLive_GetMaxDetectedFaceCount];
            this.f39773j = new boolean[iCUIMakeupLive_GetMaxDetectedFaceCount];
            this.l = new LiveParameters.Eyebrow(liveSettingCtrl);
            this.r = new com.perfectcorp.perfectlib.makeupcam.camera.n[20];
            this.s = new com.perfectcorp.perfectlib.makeupcam.camera.n[20];
            this.t = new int[20];
            this.u = new int[20];
            this.v = new int[20];
            this.w = new float[20];
            this.x = (EarringObjectSettings[][]) Array.newInstance((Class<?>) EarringObjectSettings.class, 20, 50);
            this.y = (EarringChainSettings[][]) Array.newInstance((Class<?>) EarringChainSettings.class, 20, 50);
            this.z = (EarringJointSettings[][]) Array.newInstance((Class<?>) EarringJointSettings.class, 20, 50);
            this.A = new float[20];
            this.B = new float[20];
            this.C = (EarringConvexColliders[][]) Array.newInstance((Class<?>) EarringConvexColliders.class, 20, 50);
            this.D = new float[DilithiumEngine.DilithiumPolyT1PackedBytes];
            this.G = new LipShapeParameters[iCUIMakeupLive_GetMaxDetectedFaceCount];
            this.N = -1;
            this.O = false;
            this.P = false;
            this.f39767b = baseVenus;
            UIMakeupJNI.CUIMakeupLive_SetMaxDetectedFaceNumber(baseVenus.f40398a, baseVenus, (iCUIMakeupLive_GetMaxDetectedFaceCount < 0 || iCUIMakeupLive_GetMaxDetectedFaceCount >= 4) ? 1 : iCUIMakeupLive_GetMaxDetectedFaceCount);
            this.f39768c = z;
            GPUImageBackgroundFilter gPUImageBackgroundFilter = new GPUImageBackgroundFilter(true, false);
            this.J = gPUImageBackgroundFilter;
            this.K = new GPUImageBackgroundFilter(false, false);
            CLMakeupLiveFilter cLMakeupLiveFilterA = GPUImageFilterBuilder.a(3, i2);
            this.f39769e = cLMakeupLiveFilterA;
            cLMakeupLiveFilterA.G6 = z2;
            this.L = new NecklaceFilter(i2);
            this.M = accessoryCamWrapper;
            this.g = new com.perfectcorp.perfectlib.makeupcam.camera.l(baseVenus, cLMakeupLiveFilterA, gPUImageBackgroundFilter);
            this.f39774k = new Rect[iCUIMakeupLive_GetMaxDetectedFaceCount];
            for (int i3 = 0; i3 < this.d; i3++) {
                this.f39774k[i3] = new Rect();
            }
            int i4 = ImmutableSet.d;
            ImmutableSet.Builder builder = new ImmutableSet.Builder();
            builder.h(this.l);
            this.m = new LiveParameters.Reshape[this.d];
            for (int i5 = 0; i5 < this.d; i5++) {
                this.m[i5] = new LiveParameters.Reshape(this.f39770f);
                this.G[i5] = new LipShapeParameters();
                builder.h(this.m[i5]);
            }
            this.n = builder.j();
            int i6 = this.d;
            this.o = new boolean[i6];
            this.p = new int[i6];
            this.q = new boolean[i6];
            this.H = new com.perfectcorp.perfectlib.makeupcam.camera.i(PfCommons.b(), baseVenus, this.f39769e, new Object());
            this.I = new com.perfectcorp.perfectlib.makeupcam.camera.c(PfCommons.b(), baseVenus, this.J, this.K, true, new Object());
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final void a(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6, ArrayList arrayList7, ArrayList arrayList8, ArrayList arrayList9, ArrayList arrayList10, ArrayList arrayList11, ArrayList arrayList12, ArrayList arrayList13, com.perfectcorp.perfectlib.makeupcam.camera.q qVar) {
            float[] fArr;
            float[] fArr2;
            float[] fArr3;
            float[] fArr4;
            int[] iArr;
            int[] iArr2;
            int[] iArr3;
            com.perfectcorp.perfectlib.makeupcam.camera.n[] nVarArr;
            com.perfectcorp.perfectlib.makeupcam.camera.n[] nVarArr2;
            EarringJointSettings[][] earringJointSettingsArr;
            EarringChainSettings[][] earringChainSettingsArr;
            EarringObjectSettings[][] earringObjectSettingsArr;
            EarringConvexColliders[][] earringConvexCollidersArr;
            ApplyEffectCtrl.L.lock();
            try {
                this.E = Math.min(arrayList7.size(), 20);
                Iterator it = arrayList7.iterator();
                int i2 = 0;
                while (true) {
                    boolean zHasNext = it.hasNext();
                    fArr = this.D;
                    fArr2 = this.B;
                    fArr3 = this.A;
                    fArr4 = this.w;
                    iArr = this.v;
                    iArr2 = this.u;
                    iArr3 = this.t;
                    nVarArr = this.s;
                    nVarArr2 = this.r;
                    earringJointSettingsArr = this.z;
                    earringChainSettingsArr = this.y;
                    earringObjectSettingsArr = this.x;
                    Iterator it2 = it;
                    if (!zHasNext) {
                        break;
                    }
                    List list = (List) it2.next();
                    for (int i3 = 0; i3 < 50; i3++) {
                        earringObjectSettingsArr[i2][i3] = new EarringObjectSettings();
                    }
                    for (int i4 = 0; i4 < list.size(); i4++) {
                        earringObjectSettingsArr[i2][i4] = (EarringObjectSettings) list.get(i4);
                    }
                    nVarArr2[i2] = (com.perfectcorp.perfectlib.makeupcam.camera.n) arrayList.get(i2);
                    nVarArr[i2] = (com.perfectcorp.perfectlib.makeupcam.camera.n) arrayList2.get(i2);
                    iArr3[i2] = ((Integer) arrayList3.get(i2)).intValue();
                    iArr2[i2] = ((Integer) arrayList4.get(i2)).intValue();
                    iArr[i2] = ((Integer) arrayList5.get(i2)).intValue();
                    fArr4[i2] = ((Float) arrayList6.get(i2)).floatValue();
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
                    fArr3[i2] = ((Float) arrayList10.get(i2)).floatValue();
                    fArr2[i2] = ((Float) arrayList11.get(i2)).floatValue();
                    int i9 = 0;
                    while (true) {
                        earringConvexCollidersArr = this.C;
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
                        fArr[(i2 << 4) + i11] = ((Float) arrayList14.get(i11)).floatValue();
                    }
                    i2++;
                    it = it2;
                }
                while (i2 < 20) {
                    for (int i12 = 0; i12 < 50; i12++) {
                        earringObjectSettingsArr[i2][i12] = new EarringObjectSettings();
                    }
                    nVarArr2[i2] = new com.perfectcorp.perfectlib.makeupcam.camera.n();
                    nVarArr[i2] = new com.perfectcorp.perfectlib.makeupcam.camera.n();
                    iArr3[i2] = -1;
                    iArr2[i2] = -1;
                    iArr[i2] = -2;
                    fArr4[i2] = 0.0f;
                    for (int i13 = 0; i13 < 50; i13++) {
                        earringChainSettingsArr[i2][i13] = new EarringChainSettings();
                    }
                    for (int i14 = 0; i14 < 50; i14++) {
                        earringJointSettingsArr[i2][i14] = new EarringJointSettings();
                    }
                    fArr3[i2] = 0.0f;
                    fArr2[i2] = 0.0f;
                    for (int i15 = 0; i15 < 16; i15++) {
                        fArr[(i2 << 4) + i15] = 0.0f;
                    }
                    i2++;
                }
                this.F = qVar;
            } finally {
                ApplyEffectCtrl.L.unlock();
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final int b() {
            return this.Q;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final int c() {
            return this.R;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final void d() {
            if (this.f39771h.get()) {
                return;
            }
            synchronized (this.f39771h) {
                while (!this.f39771h.get()) {
                    this.f39771h.wait();
                }
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final boolean e() {
            return this.P;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final boolean f() {
            return false;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final LiveSettingCtrl g() {
            return this.f39770f;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final CLMakeupLiveFilter getFilter() {
            return this.f39769e;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final void h(BackgroundPayload backgroundPayload) {
            com.perfectcorp.perfectlib.makeupcam.camera.c cVar = this.I;
            cVar.b(backgroundPayload);
            if (backgroundPayload != null) {
                cVar.a();
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final NecklaceFilter i() {
            return this.L;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final AccessoryCamWrapper j() {
            return this.M;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final int k() {
            return this.S;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final void l(LipShapeParameters lipShapeParameters, int i2) {
            LipShapeParameters[] lipShapeParametersArr = this.G;
            if (lipShapeParametersArr.length > i2) {
                lipShapeParametersArr[i2] = lipShapeParameters;
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final FunStickerTemplate m() {
            return FunStickerTemplate.f40650e;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final void n(int i2, boolean z) {
            ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
            writeLock.lock();
            CLMakeupLiveFilter cLMakeupLiveFilter = this.f39769e;
            IBeautyFilter2.FilterType filterType = !this.O ? IBeautyFilter2.FilterType.ENABLE_SMOOTH : IBeautyFilter2.FilterType.LIVE_SMOOTH;
            cLMakeupLiveFilter.getClass();
            if (IBeautyFilter2.FilterType.LIVE_SMOOTH == filterType || IBeautyFilter2.FilterType.ENABLE_SMOOTH == filterType) {
                cLMakeupLiveFilter.H6 = filterType;
            }
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            boolean z2 = false;
            if (i2 == 0) {
                try {
                    BaseVenus baseVenus = this.f39767b;
                    UIMakeupJNI.CUIMakeupLive_SetSkinSmoothFilterStatus(baseVenus.f40398a, baseVenus, !this.O && z, this.O ? 0.0f : this.S, (this.O || !this.f39769e.G6) ? 0.0f : this.S);
                } catch (Throwable th) {
                    ApplyEffectCtrl.L.unlock();
                    throw th;
                }
            }
            if (this.N == i2) {
                BaseVenus baseVenus2 = this.f39767b;
                boolean z3 = this.O && z;
                float f3 = this.O ? this.S : 0.0f;
                if (this.f39769e.G6) {
                    f2 = this.S;
                }
                UIMakeupJNI.CUIMakeupLive_SetSkinSmoothV2FilterStatus(baseVenus2.f40398a, baseVenus2, z3, f3, f2, i2);
            }
            writeLock.unlock();
            this.f39769e.E(CLMakeupLiveFilter.MakeupLiveFeatures.SMOOTH, !this.O && z);
            CLMakeupLiveFilter cLMakeupLiveFilter2 = this.f39769e;
            CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = CLMakeupLiveFilter.MakeupLiveFeatures.SMOOTH_V2;
            if (this.O && z) {
                z2 = true;
            }
            cLMakeupLiveFilter2.E(makeupLiveFeatures, z2);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final BaseVenus o() {
            return this.f39767b;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrlInterface
        public final void a(int i2) {
            this.S = i2;
        }
    }
}
