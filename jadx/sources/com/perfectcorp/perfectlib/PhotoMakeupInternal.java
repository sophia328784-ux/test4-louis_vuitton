package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class PhotoMakeupInternal {
    public static final /* synthetic */ int n = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PhotoMakeup f39786f;
    public final PhotoMakeup.LiveMakeupCtrl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ApplyEffectCtrl f39787h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PhotoMakeup.PhotoMakeupFrameProcessingThread f39788i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LiveSettingCtrl f39789j;
    public final ConcurrentHashMap m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39782a = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b("PhotoMakeupInternal#downloadTaskExecutor")));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f39783b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39784c = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b("PhotoMakeupInternal#applyTaskExecutor")));
    public final AtomicInteger d = new AtomicInteger();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DownloadTaskCancelable f39785e = DownloadTaskCancelable.f40351e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Configuration.ImageSource f39790k = PerfectLib.g.d;
    public final MakeupCamInternal.Logger l = new MakeupCamInternal.Logger();

    public static class ApplyEffectIdsInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConcurrentLinkedQueue f39791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConcurrentLinkedQueue f39792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile Bitmap f39793c;

        public ApplyEffectIdsInfo(ArrayList arrayList, ArrayList arrayList2, Bitmap bitmap) {
            this.f39791a = new ConcurrentLinkedQueue(arrayList);
            this.f39792b = new ConcurrentLinkedQueue(arrayList2);
            this.f39793c = bitmap;
        }
    }

    static {
        ImmutableSet.A(BeautyMode.LIP_LINER);
    }

    public PhotoMakeupInternal(PhotoMakeup photoMakeup) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.m = concurrentHashMap;
        this.f39786f = photoMakeup;
        PhotoMakeup.LiveMakeupCtrl liveMakeupCtrl = photoMakeup.d;
        this.g = liveMakeupCtrl;
        this.f39789j = liveMakeupCtrl.f39770f;
        this.f39787h = photoMakeup.f39761e;
        this.f39788i = photoMakeup.f39762f;
        Bitmap bitmap = photoMakeup.g;
        Matrix matrix = new Matrix();
        matrix.postScale(0.5f, 0.5f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        concurrentHashMap.put(0, new ApplyEffectIdsInfo(new ArrayList(), new ArrayList(), bitmapCreateBitmap));
        concurrentHashMap.put(1, new ApplyEffectIdsInfo(new ArrayList(), new ArrayList(), bitmapCreateBitmap));
        concurrentHashMap.put(2, new ApplyEffectIdsInfo(new ArrayList(), new ArrayList(), bitmapCreateBitmap));
        concurrentHashMap.put(3, new ApplyEffectIdsInfo(new ArrayList(), new ArrayList(), bitmapCreateBitmap));
        photoMakeup.o = new q3(this, 6);
    }

    public final Single a(int i2, List list, EffectConfig effectConfig) {
        Single singleP = MakeupCamInternal.p(this.f39787h, this.f39789j, 0, 0, list, effectConfig);
        singleP.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleP, new k1(this, false, 1)).i(this.f39784c).d(new o3(this, i2));
    }

    public final Single b(int i2, boolean z, Iterable iterable, Iterable iterable2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            EffectId effectId = (EffectId) it.next();
            if (effectId.f39555a != PerfectEffect.FUN_STICKER) {
                arrayList.add(effectId);
            } else {
                arrayList2.add(effectId);
            }
        }
        Single singleQ = MakeupCamInternal.q(this.f39787h, this.f39789j, z, arrayList, iterable2, 0, 0);
        singleQ.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleQ, new k1(this, z, 1)).i(this.f39784c).d(new o3(this, i2));
    }

    public final Single c(Bitmap bitmap) {
        ImmutableSet immutableSet = ApplyEffectCtrl.I;
        LiveSettingCtrl liveSettingCtrl = this.f39789j;
        PhotoMakeup.LiveMakeupCtrl liveMakeupCtrl = this.g;
        PhotoMakeup.PhotoMakeupFrameProcessingThread photoMakeupFrameProcessingThread = this.f39788i;
        Objects.requireNonNull(photoMakeupFrameProcessingThread);
        c cVar = new c(photoMakeupFrameProcessingThread, 5);
        boolean z = PerfectLib.g.f39519h;
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c cVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z2(immutableSet, liveSettingCtrl, liveMakeupCtrl, z, cVar));
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new i(this.f39789j, 3));
        this.f39788i.runOnGLThread(listenableFutureTaskCreate);
        int i2 = 6;
        return Single.m(cVar2, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, i2)), new a0(this, bitmap, i2));
    }

    public final void d() {
        String str;
        Threads.a();
        this.f39786f.a();
        boolean z = this.f39786f.f39766k;
        boolean z2 = this.f39786f.m != null;
        StringBuilder sb = new StringBuilder("[validateState] hasFaceTrackingModels=");
        fc.y(sb, this.f39786f.f39758a, ", isFaceDetected=", z, ", hasSetFace=");
        sb.append(z2);
        Log.g(3, "PhotoMakeupInternal", sb.toString());
        if (this.f39786f.f39758a) {
            if (!z) {
                str = "Must call PhotoMakeup#detectFace first.";
            } else if (z2) {
                return;
            } else {
                str = "Must call PhotoMakeup#setFace() first.";
            }
            md.k(str);
        }
    }

    public final void e(int i2) {
        int i3 = this.f39783b.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentDownloadTaskSN(", ") != expectedDownloadTaskSN(", ")"));
        }
    }

    public final void f(int i2, int i3, List list, EffectConfig effectConfig, DownloadCacheStrategy downloadCacheStrategy, VtoApplier.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, boolean z) {
        Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkusInternal] Start download. vtoSettings=".concat(Iterables.c(list)));
        ArrayList arrayList = new ArrayList();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(Observable.fromIterable(list).groupBy(new y(22)).flatMapSingle(new n1(this, i2, arrayList, downloadCacheStrategy, downloadTaskCancelable, z, 3)).toList().i(this.f39784c), new t0(i3, 5, this, arrayList, effectConfig)), new q3(this, 8)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback, 28), new w2(list, applyCallback, 1));
        uVarI.a(consumerSingleObserver);
        this.f39786f.n.b(consumerSingleObserver);
    }

    public final void g(int i2) {
        int i3 = this.d.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentApplyTaskSN(", ") != expectedApplyTaskSN(", ")"));
        }
    }
}
