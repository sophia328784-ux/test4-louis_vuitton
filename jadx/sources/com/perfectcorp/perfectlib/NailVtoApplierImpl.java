package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.Pair;
import com.cyberlink.clgpuimage.hand.CLHandARFilter;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a61;
import defpackage.bm;
import defpackage.et;
import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class NailVtoApplierImpl extends NailVtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositeDisposable f39725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.ph.clflurry.b.a f39726c;
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d d;
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicInteger f39727e = new AtomicInteger();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public DownloadTaskCancelable f39728f = DownloadTaskCancelable.f40351e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicInteger f39729h = new AtomicInteger();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Configuration.ImageSource f39730i = PerfectLib.g.d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CLHandARFilter.HandARParameters f39731j = new CLHandARFilter.HandARParameters();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.NailVtoApplierImpl$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39732a;

        static {
            int[] iArr = new int[NailPosition.values().length];
            f39732a = iArr;
            try {
                iArr[NailPosition.THUMB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39732a[NailPosition.FOREFINGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39732a[NailPosition.MIDDLE_FINGER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39732a[NailPosition.RING_FINGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39732a[NailPosition.LITTLE_FINGER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public NailVtoApplierImpl(String str, CompositeDisposable compositeDisposable, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f39724a = str;
        this.f39725b = compositeDisposable;
        this.f39726c = aVar;
        this.d = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#downloadTaskExecutor"))));
        this.g = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#applyTaskExecutor"))));
    }

    public static float b(NailPosition nailPosition, YMKPrimitiveData.Pattern pattern) {
        int i2 = AnonymousClass1.f39732a[nailPosition.ordinal()];
        if (i2 == 1) {
            return pattern.v;
        }
        if (i2 == 2) {
            return pattern.w;
        }
        if (i2 == 3) {
            return pattern.x;
        }
        if (i2 == 4) {
            return pattern.y;
        }
        if (i2 == 5) {
            return pattern.z;
        }
        a61.h();
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static int c(NailPosition nailPosition) {
        int i2 = AnonymousClass1.f39732a[nailPosition.ordinal()];
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 3) {
            return 2;
        }
        if (i2 == 4) {
            return 3;
        }
        if (i2 == 5) {
            return 4;
        }
        a61.h();
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006  */
    public static int d(String str) {
        CLHandARFilter.NailFinishType nailFinishType;
        if (!TextUtils.isEmpty(str)) {
            str.getClass();
            switch (str) {
                case "MatteV2":
                case "Matte":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishMatte;
                    break;
                case "ShimmerCoarseV2":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishShimmerCoarse;
                    break;
                case "ShimmerFineV2":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishShimmerFine;
                    break;
                case "MetallicV2":
                case "Metallic":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishMetallic;
                    break;
                case "SheerV2":
                case "Sheer":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishSheer;
                    break;
                case "JellyV2":
                case "Jelly":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishJelly;
                    break;
                case "TexturedV2":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishTextured;
                    break;
                case "PearlV2":
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishPearl;
                    break;
                default:
                    nailFinishType = CLHandARFilter.NailFinishType.NailFinishCream;
                    break;
            }
        } else {
            nailFinishType = CLHandARFilter.NailFinishType.NailFinishCream;
        }
        return nailFinishType.ordinal();
    }

    public static Pair e(List list, boolean z) {
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVar;
        ArrayList arrayList = new ArrayList();
        if (PerfectLib.g.f39519h) {
            Single list2 = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(6, arrayList)).toList();
            defpackage.q2 q2Var = new defpackage.q2(6, arrayList);
            list2.getClass();
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list2, q2Var);
        } else {
            tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(ApplyEffectUtility.j(list, z, null), new defpackage.q2(7, arrayList));
        }
        return (Pair) tVar.c();
    }

    public static CLHandARFilter.HandARParameters f(CLHandARFilter.HandARParameters handARParameters, CLHandARFilter.HandARParameters handARParameters2) {
        CLHandARFilter.HandARParameters handARParametersDuplicate = handARParameters2.duplicate();
        handARParametersDuplicate.skin_smooth_intensity = handARParameters.skin_smooth_intensity;
        handARParametersDuplicate.skin_smooth_color_intensity = handARParameters.skin_smooth_color_intensity;
        handARParametersDuplicate.lookGuid = handARParameters.lookGuid;
        for (int i2 = 0; i2 < 5; i2++) {
            if (handARParameters.nail_pbr_finish[i2].is_enabled) {
                handARParametersDuplicate.nail_pbr_finish[i2] = handARParameters.nail_pbr_finish[i2];
                handARParametersDuplicate.nail_art_images[i2] = handARParameters.nail_art_images[i2];
                handARParametersDuplicate.is_nail_art_image_changed[i2] = handARParameters.is_nail_art_image_changed[i2];
                handARParametersDuplicate.nail_tip_parameter[i2] = handARParameters.nail_tip_parameter[i2];
                handARParametersDuplicate.nail_tip_shapes[i2] = handARParameters.nail_tip_shapes[i2];
                handARParametersDuplicate.is_nail_tip_shape_changed[i2] = handARParameters.is_nail_tip_shape_changed[i2];
            }
        }
        handARParametersDuplicate.is_pbr = true;
        return handARParametersDuplicate;
    }

    public static EffectId h(NailPosition nailPosition, CLHandARFilter.NailPbrFinish nailPbrFinish) {
        EffectId.Builder builder = new EffectId.Builder(nailPbrFinish.vtoMode == CLHandARFilter.HandARMetadata.CurrentVTOMode.NailTipVTOMode ? PerfectEffect.NAIL_TIP : PerfectEffect.NAIL);
        builder.f39573j = nailPosition;
        builder.n = (com.perfectcorp.perfectlib.ph.camera.a) nailPbrFinish.payload;
        builder.f39568c = EffectId.c(nailPbrFinish.skuGuid);
        builder.d = EffectId.c(nailPbrFinish.skuItemGuid);
        builder.f39569e = EffectId.c(nailPbrFinish.paletteGuid);
        builder.f39571h = EffectId.c(nailPbrFinish.wearingStyleGuid);
        builder.b(Collections.singletonList(Integer.valueOf(100 - nailPbrFinish.transparency)));
        builder.c(Collections.singletonList(new YMKPrimitiveData.MakeupColor(Color.rgb(nailPbrFinish.color[0], nailPbrFinish.color[1], nailPbrFinish.color[2]))));
        return builder.a();
    }

    public static com.perfectcorp.perfectlib.ph.camera.a i(YMKPrimitiveData.Effect effect, com.perfectcorp.perfectlib.ph.camera.a aVar) {
        int iB;
        int iB2;
        int iB3;
        int iB4;
        int iB5;
        int iB6;
        int iB7;
        com.perfectcorp.perfectlib.ph.camera.a.C0133a c0133a = new com.perfectcorp.perfectlib.ph.camera.a.C0133a(aVar);
        EffectInfo.Extras extras = effect.g;
        String str = extras.v;
        String str2 = extras.E;
        String str3 = extras.D;
        String str4 = extras.C;
        String str5 = extras.A;
        String str6 = extras.y;
        String str7 = extras.B;
        String str8 = extras.z;
        if (!TextUtils.isEmpty(str) && (iB7 = TemplateConsts.b(-1, extras.v)) != -1) {
            c0133a.f41127c = iB7;
        }
        if (!TextUtils.isEmpty(str8) && (iB6 = TemplateConsts.b(-1, str8)) != -1) {
            c0133a.f41128e = iB6;
        }
        if (!TextUtils.isEmpty(str7)) {
            c0133a.f41132j = str7;
        }
        if (!TextUtils.isEmpty(str6) && (iB5 = TemplateConsts.b(-1, str6)) != -1) {
            c0133a.d = iB5;
        }
        if (!TextUtils.isEmpty(str5) && (iB4 = TemplateConsts.b(-1, str5)) != -1) {
            c0133a.f41129f = iB4;
        }
        if (!TextUtils.isEmpty(str4) && (iB3 = TemplateConsts.b(-1, str4)) != -1) {
            c0133a.g = iB3;
        }
        if (!TextUtils.isEmpty(str3) && (iB2 = TemplateConsts.b(-1, str3)) != -1) {
            c0133a.f41130h = iB2;
        }
        if (!TextUtils.isEmpty(str2) && (iB = TemplateConsts.b(-1, str2)) != -1) {
            c0133a.f41131i = iB;
        }
        return new com.perfectcorp.perfectlib.ph.camera.a(c0133a);
    }

    public static List q(boolean z, CLHandARFilter.HandARParameters handARParameters) {
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (handARParameters.nail_pbr_finish[0].is_enabled) {
            builder.f(h(NailPosition.THUMB, handARParameters.nail_pbr_finish[0]));
        }
        if (handARParameters.nail_pbr_finish[1].is_enabled) {
            builder.f(h(NailPosition.FOREFINGER, handARParameters.nail_pbr_finish[1]));
        }
        if (handARParameters.nail_pbr_finish[2].is_enabled) {
            builder.f(h(NailPosition.MIDDLE_FINGER, handARParameters.nail_pbr_finish[2]));
        }
        if (handARParameters.nail_pbr_finish[3].is_enabled) {
            builder.f(h(NailPosition.RING_FINGER, handARParameters.nail_pbr_finish[3]));
        }
        if (handARParameters.nail_pbr_finish[4].is_enabled) {
            builder.f(h(NailPosition.LITTLE_FINGER, handARParameters.nail_pbr_finish[4]));
        }
        ImmutableList immutableListI = builder.i();
        return z ? ProductMappingUtility.c(immutableListI) : immutableListI;
    }

    public final Map A() {
        CLHandARFilter.HandARParameters handARParameters = this.f39731j;
        if (HandCam.getVtoMode(handARParameters) == CLHandARFilter.HandARMetadata.CurrentVTOMode.NailTipVTOMode) {
            return Collections.EMPTY_MAP;
        }
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        if (handARParameters.nail_pbr_finish[0].is_enabled) {
            builder.b(NailPosition.THUMB, Integer.valueOf(100 - handARParameters.nail_pbr_finish[0].transparency));
        }
        if (handARParameters.nail_pbr_finish[1].is_enabled) {
            builder.b(NailPosition.FOREFINGER, Integer.valueOf(100 - handARParameters.nail_pbr_finish[1].transparency));
        }
        if (handARParameters.nail_pbr_finish[2].is_enabled) {
            builder.b(NailPosition.MIDDLE_FINGER, Integer.valueOf(100 - handARParameters.nail_pbr_finish[2].transparency));
        }
        if (handARParameters.nail_pbr_finish[3].is_enabled) {
            builder.b(NailPosition.RING_FINGER, Integer.valueOf(100 - handARParameters.nail_pbr_finish[3].transparency));
        }
        if (handARParameters.nail_pbr_finish[4].is_enabled) {
            builder.b(NailPosition.LITTLE_FINGER, Integer.valueOf(100 - handARParameters.nail_pbr_finish[4].transparency));
        }
        return builder.a();
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final Cancelable apply(LookSetting lookSetting, NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback) throws Throwable {
        Threads.a();
        r();
        Objects.requireNonNull(lookSetting, "lookSetting can't be null");
        if (downloadAndApplyCallback == null) {
            downloadAndApplyCallback = NailVtoApplier.DownloadAndApplyCallback.NOP;
        }
        final NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback2 = (NailVtoApplier.DownloadAndApplyCallback) Proxies.a(NailVtoApplier.DownloadAndApplyCallback.class, downloadAndApplyCallback);
        try {
            x();
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            final int i2 = 3;
            Log.g(3, this.f39724a, "[apply] lookSetting=" + lookSetting + ", cacheStrategy=" + downloadCacheStrategy);
            if (downloadCacheStrategy == DownloadCacheStrategy.CACHE_ONLY) {
                final String lookGuid = lookSetting.getLookGuid();
                final int i3 = 1;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new c1(this, this.f39729h.incrementAndGet(), lookGuid, i3)).j(this.g).i(AndroidSchedulers.a());
                final int i4 = 0;
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.f3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ NailVtoApplierImpl f40150b;

                    {
                        this.f40150b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i5 = i4;
                        NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                        String str = lookGuid;
                        NailVtoApplierImpl nailVtoApplierImpl = this.f40150b;
                        switch (i5) {
                            case 0:
                                Log.g(3, nailVtoApplierImpl.f39724a, "[applyLookGuid] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            case 1:
                                Throwable th = (Throwable) obj;
                                boolean z = th instanceof SkipCallbackException;
                                String str2 = nailVtoApplierImpl.f39724a;
                                if (!z) {
                                    Log.e(str2, "[applyLookGuid] failed. lookGuid=" + str, th);
                                    downloadAndApplyCallback3.onFailure(th);
                                } else {
                                    Log.c(str2, "[applyLookGuid] task canceled. lookGuid=" + str, th);
                                }
                                break;
                            case 2:
                                Log.g(3, nailVtoApplierImpl.f39724a, "[downloadAndApplyLook] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            default:
                                Throwable th2 = (Throwable) obj;
                                boolean z2 = th2 instanceof SkipCallbackException;
                                String str3 = nailVtoApplierImpl.f39724a;
                                if (!z2) {
                                    Log.e(str3, "[downloadAndApplyLook] failed. lookGuid=" + str, th2);
                                    downloadAndApplyCallback3.onFailure(th2);
                                } else {
                                    Log.c(str3, "[downloadAndApplyLook] task canceled. lookGuid=" + str, th2);
                                }
                                break;
                        }
                    }
                }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.f3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ NailVtoApplierImpl f40150b;

                    {
                        this.f40150b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i5 = i3;
                        NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                        String str = lookGuid;
                        NailVtoApplierImpl nailVtoApplierImpl = this.f40150b;
                        switch (i5) {
                            case 0:
                                Log.g(3, nailVtoApplierImpl.f39724a, "[applyLookGuid] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            case 1:
                                Throwable th = (Throwable) obj;
                                boolean z = th instanceof SkipCallbackException;
                                String str2 = nailVtoApplierImpl.f39724a;
                                if (!z) {
                                    Log.e(str2, "[applyLookGuid] failed. lookGuid=" + str, th);
                                    downloadAndApplyCallback3.onFailure(th);
                                } else {
                                    Log.c(str2, "[applyLookGuid] task canceled. lookGuid=" + str, th);
                                }
                                break;
                            case 2:
                                Log.g(3, nailVtoApplierImpl.f39724a, "[downloadAndApplyLook] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            default:
                                Throwable th2 = (Throwable) obj;
                                boolean z2 = th2 instanceof SkipCallbackException;
                                String str3 = nailVtoApplierImpl.f39724a;
                                if (!z2) {
                                    Log.e(str3, "[downloadAndApplyLook] failed. lookGuid=" + str, th2);
                                    downloadAndApplyCallback3.onFailure(th2);
                                } else {
                                    Log.c(str3, "[downloadAndApplyLook] task canceled. lookGuid=" + str, th2);
                                }
                                break;
                        }
                    }
                });
                uVarI.a(consumerSingleObserver);
                this.f39725b.b(consumerSingleObserver);
                return DownloadTaskCancelable.f40351e;
            }
            final String lookGuid2 = lookSetting.getLookGuid();
            int iIncrementAndGet = this.f39727e.incrementAndGet();
            int iIncrementAndGet2 = this.f39729h.incrementAndGet();
            this.f39728f.cancel();
            DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadAndApplyLook");
            this.f39728f = downloadTaskCancelable;
            LookHandler lookHandler = LookHandler.getInstance();
            String str = this.f39724a;
            if (lookHandler != null) {
                Log.g(3, str, "[cancelOnReleased] add cancelable \"" + downloadTaskCancelable + "\" to taskDisposables");
                lookHandler.f39667e.f39716a.b(Disposables.b(new et(downloadTaskCancelable, 17)));
            } else {
                Log.g(3, str, "[cancelOnReleased] cancelable \"" + downloadTaskCancelable + "\" cancel directly");
                downloadTaskCancelable.cancel();
            }
            final int i5 = 2;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new e1(this, iIncrementAndGet, lookGuid2, downloadCacheStrategy, downloadAndApplyCallback2, downloadTaskCancelable, 3)).j(this.d).i(this.g), new s0(this, iIncrementAndGet2, lookGuid2, i5)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.f3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40150b;

                {
                    this.f40150b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i5;
                    NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                    String str2 = lookGuid2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40150b;
                    switch (i6) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[applyLookGuid] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str3 = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str3, "[applyLookGuid] failed. lookGuid=" + str2, th);
                                downloadAndApplyCallback3.onFailure(th);
                            } else {
                                Log.c(str3, "[applyLookGuid] task canceled. lookGuid=" + str2, th);
                            }
                            break;
                        case 2:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[downloadAndApplyLook] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        default:
                            Throwable th2 = (Throwable) obj;
                            boolean z2 = th2 instanceof SkipCallbackException;
                            String str4 = nailVtoApplierImpl.f39724a;
                            if (!z2) {
                                Log.e(str4, "[downloadAndApplyLook] failed. lookGuid=" + str2, th2);
                                downloadAndApplyCallback3.onFailure(th2);
                            } else {
                                Log.c(str4, "[downloadAndApplyLook] task canceled. lookGuid=" + str2, th2);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.f3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40150b;

                {
                    this.f40150b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i2;
                    NailVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                    String str2 = lookGuid2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40150b;
                    switch (i6) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[applyLookGuid] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str3 = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str3, "[applyLookGuid] failed. lookGuid=" + str2, th);
                                downloadAndApplyCallback3.onFailure(th);
                            } else {
                                Log.c(str3, "[applyLookGuid] task canceled. lookGuid=" + str2, th);
                            }
                            break;
                        case 2:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[downloadAndApplyLook] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        default:
                            Throwable th2 = (Throwable) obj;
                            boolean z2 = th2 instanceof SkipCallbackException;
                            String str4 = nailVtoApplierImpl.f39724a;
                            if (!z2) {
                                Log.e(str4, "[downloadAndApplyLook] failed. lookGuid=" + str2, th2);
                                downloadAndApplyCallback3.onFailure(th2);
                            } else {
                                Log.c(str4, "[downloadAndApplyLook] task canceled. lookGuid=" + str2, th2);
                            }
                            break;
                    }
                }
            });
            uVarI2.a(consumerSingleObserver2);
            this.f39725b.b(consumerSingleObserver2);
            return downloadTaskCancelable;
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, downloadAndApplyCallback2, 5));
        }
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void applyEffectIds(List list, final boolean z, NailVtoApplier.ApplyCallback applyCallback) {
        Threads.a();
        r();
        Objects.requireNonNull(list, "effectIds can't be null");
        if (applyCallback == null) {
            applyCallback = NailVtoApplier.ApplyCallback.NOP;
        }
        NailVtoApplier.ApplyCallback applyCallback2 = (NailVtoApplier.ApplyCallback) Proxies.a(NailVtoApplier.ApplyCallback.class, applyCallback);
        final ImmutableList immutableListU = ImmutableList.u(list);
        try {
            x();
            final int iIncrementAndGet = this.f39729h.incrementAndGet();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: com.perfectcorp.perfectlib.g3
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f40166b.o(immutableListU, iIncrementAndGet, z);
                }
            }).j(this.g).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new h3(this, applyCallback2, 4), new h3(this, applyCallback2, 9));
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new d3(this, th, applyCallback2, 0));
        }
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void clearAllEffects(NailVtoApplier.ApplyCallback applyCallback) {
        Threads.a();
        r();
        if (applyCallback == null) {
            applyCallback = NailVtoApplier.ApplyCallback.NOP;
        }
        NailVtoApplier.ApplyCallback applyCallback2 = (NailVtoApplier.ApplyCallback) Proxies.a(NailVtoApplier.ApplyCallback.class, applyCallback);
        try {
            x();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new k0(this, this.f39729h.incrementAndGet(), 1)).j(this.g).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new h3(this, applyCallback2, 5), new h3(this, applyCallback2, 6));
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new d3(this, th, applyCallback2, 3));
        }
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void clearEffects(Set set, NailVtoApplier.ApplyCallback applyCallback) {
        Threads.a();
        r();
        Objects.requireNonNull(set, "nailPositions can't be null");
        if (applyCallback == null) {
            applyCallback = NailVtoApplier.ApplyCallback.NOP;
        }
        NailVtoApplier.ApplyCallback applyCallback2 = (NailVtoApplier.ApplyCallback) Proxies.a(NailVtoApplier.ApplyCallback.class, applyCallback);
        ImmutableSet immutableSetT = ImmutableSet.t(set);
        int i2 = 1;
        try {
            x();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new c1(this, this.f39729h.incrementAndGet(), immutableSetT, 2)).j(this.g).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new h3(this, applyCallback2, 0), new h3(this, applyCallback2, i2));
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new d3(this, th, applyCallback2, i2));
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r6v11 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v11 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v12 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v12 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v16 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v16 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v17 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v17 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v21 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v21 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v22 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v22 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v23 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v23 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v24 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v24 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v25 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v25 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v26 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v26 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v6 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v6 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r6v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v7 ??, new type: int
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
    /* JADX WARN: Failed to calculate best type for var: r7v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v2 ??, new type: java.util.List
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
    /* JADX WARN: Failed to calculate best type for var: r7v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v2 ??, new type: java.util.List
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
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v6 ??, new type: int
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
    public final com.cyberlink.clgpuimage.hand.CLHandARFilter.HandARParameters g(com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData.Look r14) {
        /*
            Method dump skipped, instruction units count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.perfectlib.NailVtoApplierImpl.g(com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData$Look):com.cyberlink.clgpuimage.hand.CLHandARFilter$HandARParameters");
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void getEffectIds(NailVtoApplier.EffectIdCallback effectIdCallback) {
        Threads.a();
        r();
        Objects.requireNonNull(effectIdCallback, "callback can't be null");
        final NailVtoApplier.EffectIdCallback effectIdCallback2 = (NailVtoApplier.EffectIdCallback) Proxies.a(NailVtoApplier.EffectIdCallback.class, effectIdCallback);
        try {
            x();
            final int i2 = 1;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j3(this, PerfectLib.g.f39519h, i2)).j(this.g).i(AndroidSchedulers.a());
            final int i3 = 0;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.e3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40131b;

                {
                    this.f40131b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    NailVtoApplier.EffectIdCallback effectIdCallback3 = effectIdCallback2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40131b;
                    switch (i4) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[getEffectIds] complete");
                            effectIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str, "[getEffectIds] failed", th);
                                effectIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getEffectIds] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.e3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40131b;

                {
                    this.f40131b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    NailVtoApplier.EffectIdCallback effectIdCallback3 = effectIdCallback2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40131b;
                    switch (i4) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[getEffectIds] complete");
                            effectIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str, "[getEffectIds] failed", th);
                                effectIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getEffectIds] task canceled", th);
                            }
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, effectIdCallback2, 8));
        }
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void getIntensities(NailVtoApplier.IntensitiesCallback intensitiesCallback) {
        Threads.a();
        r();
        Objects.requireNonNull(intensitiesCallback, "callback can't be null");
        final NailVtoApplier.IntensitiesCallback intensitiesCallback2 = (NailVtoApplier.IntensitiesCallback) Proxies.a(NailVtoApplier.IntensitiesCallback.class, intensitiesCallback);
        try {
            x();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(this, 5)).j(this.g).i(AndroidSchedulers.a());
            final int i2 = 0;
            final int i3 = 1;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.i3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40347b;

                {
                    this.f40347b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    NailVtoApplier.IntensitiesCallback intensitiesCallback3 = intensitiesCallback2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40347b;
                    switch (i4) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[getIntensities] complete");
                            intensitiesCallback3.onSuccess((Map) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str, "[getIntensities] failed", th);
                                intensitiesCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getIntensities] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.i3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40347b;

                {
                    this.f40347b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    NailVtoApplier.IntensitiesCallback intensitiesCallback3 = intensitiesCallback2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40347b;
                    switch (i4) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[getIntensities] complete");
                            intensitiesCallback3.onSuccess((Map) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str, "[getIntensities] failed", th);
                                intensitiesCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getIntensities] task canceled", th);
                            }
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, intensitiesCallback2, 6));
        }
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void getProductIds(NailVtoApplier.ProductIdCallback productIdCallback) {
        Threads.a();
        r();
        Objects.requireNonNull(productIdCallback, "callback can't be null");
        final NailVtoApplier.ProductIdCallback productIdCallback2 = (NailVtoApplier.ProductIdCallback) Proxies.a(NailVtoApplier.ProductIdCallback.class, productIdCallback);
        try {
            x();
            final int i2 = 0;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j3(this, PerfectLib.g.f39519h, i2)).j(this.g).i(AndroidSchedulers.a());
            final int i3 = 1;
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.k3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40442b;

                {
                    this.f40442b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i2;
                    NailVtoApplier.ProductIdCallback productIdCallback3 = productIdCallback2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40442b;
                    switch (i4) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[getProductIds] complete");
                            productIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str, "[getProductIds] failed", th);
                                productIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getProductIds] task canceled", th);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.k3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ NailVtoApplierImpl f40442b;

                {
                    this.f40442b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i4 = i3;
                    NailVtoApplier.ProductIdCallback productIdCallback3 = productIdCallback2;
                    NailVtoApplierImpl nailVtoApplierImpl = this.f40442b;
                    switch (i4) {
                        case 0:
                            Log.g(3, nailVtoApplierImpl.f39724a, "[getProductIds] complete");
                            productIdCallback3.onSuccess((List) obj);
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str = nailVtoApplierImpl.f39724a;
                            if (!z) {
                                Log.e(str, "[getProductIds] failed", th);
                                productIdCallback3.onFailure(th);
                            } else {
                                Log.c(str, "[getProductIds] task canceled", th);
                            }
                            break;
                    }
                }
            });
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, productIdCallback2, 7));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Optional j(int i2, ImmutableMap immutableMap) {
        y(i2);
        CLHandARFilter.HandARParameters handARParametersDuplicate = this.f39731j.duplicate();
        NailPosition nailPosition = NailPosition.THUMB;
        if (immutableMap.containsKey(nailPosition)) {
            handARParametersDuplicate.nail_pbr_finish[0].transparency = 100 - ((Integer) immutableMap.get(nailPosition)).intValue();
        }
        NailPosition nailPosition2 = NailPosition.FOREFINGER;
        if (immutableMap.containsKey(nailPosition2)) {
            handARParametersDuplicate.nail_pbr_finish[1].transparency = 100 - ((Integer) immutableMap.get(nailPosition2)).intValue();
        }
        NailPosition nailPosition3 = NailPosition.MIDDLE_FINGER;
        if (immutableMap.containsKey(nailPosition3)) {
            handARParametersDuplicate.nail_pbr_finish[2].transparency = 100 - ((Integer) immutableMap.get(nailPosition3)).intValue();
        }
        NailPosition nailPosition4 = NailPosition.RING_FINGER;
        if (immutableMap.containsKey(nailPosition4)) {
            handARParametersDuplicate.nail_pbr_finish[3].transparency = 100 - ((Integer) immutableMap.get(nailPosition4)).intValue();
        }
        NailPosition nailPosition5 = NailPosition.LITTLE_FINGER;
        if (immutableMap.containsKey(nailPosition5)) {
            handARParametersDuplicate.nail_pbr_finish[4].transparency = 100 - ((Integer) immutableMap.get(nailPosition5)).intValue();
        }
        return w(handARParametersDuplicate);
    }

    public final Optional k(int i2, String str) {
        y(i2);
        Optional optionalF = ApplyEffectUtility.F(str);
        if (!optionalF.d()) {
            throw new LookNotFoundException(fc.h("Look guid=", str, " is not in database."));
        }
        YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) optionalF.c();
        Preconditions.g(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.a(look.g) == com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL, "This is not a nail look.");
        CLHandARFilter.HandARParameters handARParametersG = g(look);
        handARParametersG.lookGuid = str;
        HandCam.validateHandARParameters(handARParametersG);
        com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Nails, this.f39726c);
        com.perfectcorp.perfectlib.ph.clflurry.c.o(handARParametersG, bVar);
        bVar.l(Collections.singletonList(BeautyMode.NAIL), null, Collections.singletonList(Boolean.FALSE));
        bVar.b();
        return w(handARParametersG);
    }

    public final /* synthetic */ Optional l(int i2, String str, YMKPrimitiveData.Look look) {
        y(i2);
        CLHandARFilter.HandARParameters handARParametersG = g(look);
        handARParametersG.lookGuid = str;
        HandCam.validateHandARParameters(handARParametersG);
        com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Nails, this.f39726c);
        com.perfectcorp.perfectlib.ph.clflurry.c.o(handARParametersG, bVar);
        bVar.b();
        return w(handARParametersG);
    }

    public final /* synthetic */ Optional m(int i2, List list) {
        CLHandARFilter.HandARParameters handARParametersF;
        y(i2);
        if (list.isEmpty()) {
            handARParametersF = this.f39731j;
        } else {
            CLHandARFilter.HandARParameters handARParameters = new CLHandARFilter.HandARParameters();
            u(list, handARParameters);
            com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Nails, this.f39726c);
            com.perfectcorp.perfectlib.ph.clflurry.c.o(handARParameters, bVar);
            handARParametersF = f(handARParameters, this.f39731j);
            HandCam.validateHandARParameters(handARParametersF);
            bVar.b();
        }
        return w(handARParametersF);
    }

    public final /* synthetic */ Optional n(int i2, Set set) {
        y(i2);
        CLHandARFilter.HandARParameters handARParametersDuplicate = this.f39731j.duplicate();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            handARParametersDuplicate.nail_pbr_finish[c((NailPosition) it.next())].is_enabled = false;
        }
        return w(handARParametersDuplicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Optional o(List list, int i2, boolean z) {
        NailVtoApplierImpl nailVtoApplierImpl;
        CLHandARFilter.HandARParameters handARParametersF;
        y(i2);
        if (list.isEmpty()) {
            handARParametersF = z ? new CLHandARFilter.HandARParameters() : this.f39731j;
            nailVtoApplierImpl = this;
        } else {
            CLHandARFilter.HandARParameters handARParameters = new CLHandARFilter.HandARParameters();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                EffectId effectId = (EffectId) it.next();
                if (effectId.f39562j != null) {
                    com.perfectcorp.perfectlib.ph.camera.a aVar = effectId.o;
                    Objects.requireNonNull(aVar);
                    com.perfectcorp.perfectlib.ph.camera.a.C0133a c0133a = new com.perfectcorp.perfectlib.ph.camera.a.C0133a(aVar);
                    c0133a.f41127c = 100 - ((Integer) effectId.f39561i.get(0)).intValue();
                    t(handARParameters, new com.perfectcorp.perfectlib.ph.camera.a(c0133a), effectId.f39557c, effectId.d, effectId.f39558e, effectId.f39560h);
                }
            }
            nailVtoApplierImpl = this;
            com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Nails, nailVtoApplierImpl.f39726c);
            com.perfectcorp.perfectlib.ph.clflurry.c.o(handARParameters, bVar);
            handARParametersF = !z ? f(handARParameters, nailVtoApplierImpl.f39731j) : handARParameters;
            HandCam.validateHandARParameters(handARParametersF);
            bVar.b();
        }
        return nailVtoApplierImpl.w(handARParametersF);
    }

    public abstract ListenableFuture p(CLHandARFilter.HandARParameters handARParameters);

    public abstract void r();

    public final void s(int i2) {
        int i3 = this.f39727e.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentDownloadTaskSN(", ") != expectedDownloadTaskSN(", ")"));
        }
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final void setIntensities(Map map, NailVtoApplier.ApplyCallback applyCallback) {
        Threads.a();
        r();
        Objects.requireNonNull(map, "intensities can't be null");
        if (applyCallback == null) {
            applyCallback = NailVtoApplier.ApplyCallback.NOP;
        }
        NailVtoApplier.ApplyCallback applyCallback2 = (NailVtoApplier.ApplyCallback) Proxies.a(NailVtoApplier.ApplyCallback.class, applyCallback);
        ImmutableMap immutableMapD = ImmutableMap.d(map);
        int i2 = 2;
        try {
            x();
            int i3 = 3;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new c1(this, this.f39729h.incrementAndGet(), immutableMapD, i3)).j(this.g).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new h3(this, applyCallback2, i2), new h3(this, applyCallback2, i3));
            uVarI.a(consumerSingleObserver);
            this.f39725b.b(consumerSingleObserver);
        } catch (Throwable th) {
            PfCommons.c(new d3(this, th, applyCallback2, i2));
        }
    }

    public final void t(CLHandARFilter.HandARParameters handARParameters, com.perfectcorp.perfectlib.ph.camera.a aVar, String str, String str2, String str3, String str4) {
        int iC = c(aVar.f41116a);
        CLHandARFilter.NailPbrFinish nailPbrFinish = handARParameters.nail_pbr_finish[iC];
        handARParameters.is_pbr = true;
        nailPbrFinish.skuGuid = str;
        nailPbrFinish.skuItemGuid = str2;
        nailPbrFinish.paletteGuid = str3;
        nailPbrFinish.wearingStyleGuid = str4;
        nailPbrFinish.payload = aVar;
        int iD = d(aVar.f41123j);
        if (iD >= 0) {
            nailPbrFinish.is_enabled = true;
            YMKPrimitiveData.MakeupColor makeupColor = aVar.f41117b;
            if (makeupColor != null) {
                nailPbrFinish.color = new int[]{makeupColor.f40788a, makeupColor.f40789b, makeupColor.f40790c};
            } else {
                YMKPrimitiveData.MakeupColor makeupColor2 = aVar.m;
                if (makeupColor2 != null) {
                    nailPbrFinish.color = new int[]{makeupColor2.f40788a, makeupColor2.f40789b, makeupColor2.f40790c};
                }
            }
            nailPbrFinish.transparency = aVar.f41118c;
            nailPbrFinish.roughness = aVar.f41120f;
            nailPbrFinish.reflection = aVar.d;
            nailPbrFinish.contrast = aVar.f41119e;
            nailPbrFinish.glitter_opacity = aVar.g;
            nailPbrFinish.texture_granularity = aVar.f41121h;
            nailPbrFinish.shimmer_granularity = aVar.f41122i;
            nailPbrFinish.finish_type = iD;
        }
        com.perfectcorp.perfectlib.ph.camera.a.b bVar = aVar.f41124k;
        bVar.getClass();
        boolean z = bVar == com.perfectcorp.perfectlib.ph.camera.a.b.POLISH_IMAGE;
        boolean zB = aVar.f41124k.b();
        nailPbrFinish.is_nail_art = z;
        if (z) {
            CLHandARFilter.NailArtImage nailArtImage = new CLHandARFilter.NailArtImage();
            HandCam.loadNailArtImage(aVar.l, nailArtImage);
            handARParameters.nail_art_images[iC] = nailArtImage;
            handARParameters.is_nail_art_image_changed[iC] = true;
        }
        if (zB) {
            CLHandARFilter.NailTipShape nailTipShape = new CLHandARFilter.NailTipShape();
            com.perfectcorp.perfectlib.ph.camera.a.b bVar2 = aVar.f41124k;
            com.perfectcorp.perfectlib.ph.camera.a.b bVar3 = com.perfectcorp.perfectlib.ph.camera.a.b.TIP_IMAGE;
            String str5 = aVar.l;
            if (bVar2 == bVar3) {
                HandCam.loadNailTipShape(str5, nailTipShape);
            } else {
                YMKPrimitiveData.MakeupColor makeupColor3 = aVar.m;
                Objects.requireNonNull(makeupColor3);
                HandCam.loadNailTipShape(str5, makeupColor3.d, nailTipShape);
            }
            handARParameters.nail_tip_shapes[iC] = nailTipShape;
            handARParameters.is_nail_tip_shape_changed[iC] = true;
            CLHandARFilter.NailArtImage nailArtImage2 = new CLHandARFilter.NailArtImage();
            nailArtImage2.buffer = nailTipShape.buffer;
            nailArtImage2.width = nailTipShape.width;
            nailArtImage2.height = nailTipShape.height;
            handARParameters.nail_art_images[iC] = nailArtImage2;
            handARParameters.is_nail_art_image_changed[iC] = true;
            handARParameters.nail_tip_parameter[iC].m_nail_tip_mode = (aVar.f41124k == com.perfectcorp.perfectlib.ph.camera.a.b.TIP_SHAPE ? CLHandARFilter.NailTipMode.NAIL_TIP_DEFAULT : CLHandARFilter.NailTipMode.NAIL_TIP_CUSTOMIZED).ordinal();
            handARParameters.nail_tip_parameter[iC].m_aspect_ratio = aVar.n;
        }
        nailPbrFinish.vtoMode = zB ? CLHandARFilter.HandARMetadata.CurrentVTOMode.NailTipVTOMode : CLHandARFilter.HandARMetadata.CurrentVTOMode.NailPolishVTOMode;
        if (TextUtils.isEmpty(aVar.f41123j)) {
            Log.g(5, this.f39724a, fc.i("apply the unsupported non-PBR nail effect. skuGuid=", str, ", skuItemGuid=", str2));
        }
    }

    public final void u(List list, CLHandARFilter.HandARParameters handARParameters) {
        Iterator it;
        String str;
        com.perfectcorp.perfectlib.ph.camera.a aVar;
        NailVtoApplierImpl nailVtoApplierImpl;
        String str2;
        com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b bVar;
        NailPosition nailPosition;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            VtoSetting vtoSetting = (VtoSetting) it2.next();
            VtoSetting.Parameter parameter = vtoSetting.g;
            if (parameter instanceof NailParameter) {
                NailPosition nailPosition2 = ((NailParameter) parameter).f39719a;
                String str3 = vtoSetting.f40015b;
                String str4 = vtoSetting.f40016c;
                String str5 = vtoSetting.f40018f;
                if (TextUtils.isEmpty(str4)) {
                    md.n("No SKU GUID");
                    return;
                }
                YMKPrimitiveData.Palette paletteX = TemplateUtils.x(str4);
                if (paletteX == null) {
                    md.n(tr.g("No palette can be found for ", str4));
                    return;
                }
                List listF = com.perfectcorp.perfectlib.ph.template.e.f(paletteX);
                com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str4).c()).a();
                String str6 = this.f39724a;
                int i2 = 0;
                if (bVarA == null || bVarA.earringsOrNail == null) {
                    it = it2;
                    str = null;
                } else {
                    Log.g(3, str6, "[fillNailFinishSetting][SKU] wearing style case");
                    List listA = bVarA.earringsOrNail.a();
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA2 = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str4).c()).a();
                    if (!TextUtils.isEmpty(str5)) {
                        Iterator it3 = listA.iterator();
                        do {
                            if (!it3.hasNext()) {
                                bVar = null;
                                break;
                            }
                            bVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b) it3.next();
                        } while (!str5.equals(bVar.guid));
                    } else {
                        bVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b) bVarA2.earringsOrNail.a().get(0);
                    }
                    if (bVar == null) {
                        bm.e(str5, fc.s("Invalid wearingStyleGuid. effect=Nail, productGuid=", str3, ", skuGuid=", str4, ", wearingStyleGuid="));
                        return;
                    }
                    Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b.C0156a> it4 = bVar.pattern.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b.C0156a next = it4.next();
                            String str7 = next.nailPosition;
                            NailPosition[] nailPositionArrValues = NailPosition.values();
                            int length = nailPositionArrValues.length;
                            while (true) {
                                if (i2 >= length) {
                                    md.h(tr.g("Unknown type=", str7));
                                    return;
                                }
                                nailPosition = nailPositionArrValues[i2];
                                it = it2;
                                if (nailPosition.lookString.equalsIgnoreCase(str7)) {
                                    break;
                                }
                                i2++;
                                it2 = it;
                            }
                            if (nailPosition2 == nailPosition) {
                                str = next.patternGUID;
                                Log.g(3, str6, fc.i("[fillNailFinishSetting][SKU] found wearingStyleGuid=", str5, ", patternGuid=", str));
                            } else {
                                it2 = it;
                                i2 = 0;
                            }
                        } else {
                            it = it2;
                            str = null;
                        }
                    }
                }
                if (str == null) {
                    Log.g(3, str6, "[fillNailFinishSetting][SKU] no pattern with wearing style");
                    List listC = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), str4, "1");
                    if (listC.isEmpty()) {
                        Log.g(3, str6, "[fillNailFinishSetting][SKU] no pattern in palette=" + str4);
                        Preconditions.h("no color in palette=" + str4, listF.isEmpty() ^ true);
                    } else {
                        str = ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) listC.get(0)).f41251a;
                        Log.g(3, str6, fc.i("[fillNailFinishSetting][SKU] found a pattern=", str, " in palette=", str4));
                        Preconditions.h("pattern GUID is null under palette=" + str4, str != null);
                    }
                }
                if (str != null) {
                    YMKPrimitiveData.Pattern patternW = TemplateUtils.w(str);
                    if (patternW == null) {
                        md.n("No pattern can be found for patternGuid=".concat(str));
                        return;
                    }
                    String str8 = patternW.t;
                    if (com.perfectcorp.perfectlib.ph.camera.a.b.POLISH_COLOR.f41138f.equalsIgnoreCase(str8)) {
                        str2 = null;
                    } else {
                        ArrayList arrayListZ = TemplateUtils.z(str);
                        if (MoreCollections.a(arrayListZ)) {
                            md.k("No pattern masks in patternGuid=".concat(str));
                            return;
                        }
                        str2 = ((YMKPrimitiveData.Mask) arrayListZ.get(0)).f40803b;
                    }
                    com.perfectcorp.perfectlib.ph.camera.a.C0133a c0133a = new com.perfectcorp.perfectlib.ph.camera.a.C0133a();
                    c0133a.f41125a = nailPosition2;
                    c0133a.f41127c = patternW.o;
                    c0133a.f41129f = patternW.r;
                    c0133a.d = patternW.p;
                    c0133a.f41128e = patternW.q;
                    c0133a.g = patternW.A;
                    c0133a.f41130h = patternW.B;
                    c0133a.f41131i = patternW.C;
                    c0133a.f41132j = patternW.s;
                    c0133a.f41133k = str8;
                    c0133a.l = str2;
                    c0133a.m = patternW.u;
                    c0133a.n = b(nailPosition2, patternW);
                    aVar = new com.perfectcorp.perfectlib.ph.camera.a(c0133a);
                    nailVtoApplierImpl = this;
                } else {
                    com.perfectcorp.perfectlib.ph.template.idc.d.f fVar = (com.perfectcorp.perfectlib.ph.template.idc.d.f) GsonHelper.f39260a.i(paletteX.f40817f, com.perfectcorp.perfectlib.ph.template.idc.d.f.class);
                    if (fVar == null) {
                        md.k(tr.g("No extra info in palette ", str4));
                        return;
                    }
                    com.perfectcorp.perfectlib.ph.camera.a.C0133a c0133a2 = new com.perfectcorp.perfectlib.ph.camera.a.C0133a();
                    c0133a2.f41125a = nailPosition2;
                    c0133a2.f41126b = new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listF.get(0));
                    c0133a2.f41127c = TextUtils.isEmpty(fVar.transparency) ? 0 : TemplateConsts.b(0, fVar.transparency);
                    c0133a2.f41129f = TextUtils.isEmpty(fVar.roughness) ? 0 : TemplateConsts.b(0, fVar.roughness);
                    c0133a2.d = TextUtils.isEmpty(fVar.reflection) ? 0 : TemplateConsts.b(0, fVar.reflection);
                    c0133a2.f41128e = TextUtils.isEmpty(fVar.contrast) ? 0 : TemplateConsts.b(0, fVar.contrast);
                    c0133a2.f41132j = fVar.finishType;
                    aVar = new com.perfectcorp.perfectlib.ph.camera.a(c0133a2);
                    str5 = "";
                    nailVtoApplierImpl = this;
                }
                nailVtoApplierImpl.t(handARParameters, aVar, str3, str4, str4, str5);
            } else {
                it = it2;
            }
            it2 = it;
        }
    }

    public final /* synthetic */ Optional v(int i2, List list) {
        CLHandARFilter.HandARParameters handARParameters;
        y(i2);
        if (list.isEmpty()) {
            handARParameters = this.f39731j;
        } else {
            List list2 = (List) e(list, false).first;
            CLHandARFilter.HandARParameters handARParameters2 = new CLHandARFilter.HandARParameters();
            u(list2, handARParameters2);
            com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Nails, this.f39726c);
            com.perfectcorp.perfectlib.ph.clflurry.c.o(handARParameters2, bVar);
            CLHandARFilter.HandARParameters handARParametersF = f(handARParameters2, this.f39731j);
            HandCam.validateHandARParameters(handARParametersF);
            bVar.b();
            handARParameters = handARParametersF;
        }
        return w(handARParameters);
    }

    public final Optional w(CLHandARFilter.HandARParameters handARParameters) {
        Bitmap bitmap = (Bitmap) MoreFutures.b(p(handARParameters));
        for (CLHandARFilter.NailArtImage nailArtImage : handARParameters.nail_art_images) {
            nailArtImage.buffer = null;
        }
        for (CLHandARFilter.NailTipShape nailTipShape : handARParameters.nail_tip_shapes) {
            nailTipShape.buffer = null;
        }
        Arrays.fill(handARParameters.is_nail_art_image_changed, false);
        Arrays.fill(handARParameters.is_nail_tip_shape_changed, false);
        this.f39731j = handARParameters;
        return Optional.b(bitmap);
    }

    public void x() {
    }

    public final void y(int i2) {
        int i3 = this.f39729h.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentApplyTaskSN(", ") != expectedApplyTaskSN(", ")"));
        }
    }

    public final /* synthetic */ Optional z(int i2) {
        y(i2);
        return w(new CLHandARFilter.HandARParameters());
    }

    @Override // com.perfectcorp.perfectlib.NailVtoApplier
    public final Cancelable apply(List list, NailVtoApplier.ApplyCallback applyCallback) throws Throwable {
        Threads.a();
        r();
        Objects.requireNonNull(list, "vtoSettings can't be null");
        if (applyCallback == null) {
            applyCallback = NailVtoApplier.ApplyCallback.NOP;
        }
        NailVtoApplier.ApplyCallback applyCallback2 = (NailVtoApplier.ApplyCallback) Proxies.a(NailVtoApplier.ApplyCallback.class, applyCallback);
        ImmutableList immutableListU = ImmutableList.u(list);
        int i2 = 4;
        try {
            x();
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            Log.g(3, this.f39724a, "[apply] copiedVtoSettings=" + immutableListU + ", cacheStrategy=" + downloadCacheStrategy);
            if (downloadCacheStrategy == DownloadCacheStrategy.CACHE_ONLY) {
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new c1(this, this.f39729h.incrementAndGet(), immutableListU, i2)).j(this.g).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new h3(this, applyCallback2, 7), new h3(this, applyCallback2, 8));
                uVarI.a(consumerSingleObserver);
                this.f39725b.b(consumerSingleObserver);
                return DownloadTaskCancelable.f40351e;
            }
            int iIncrementAndGet = this.f39727e.incrementAndGet();
            int iIncrementAndGet2 = this.f39729h.incrementAndGet();
            this.f39728f.cancel();
            DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadAndApplySkus");
            this.f39728f = downloadTaskCancelable;
            SkuHandler.h(downloadTaskCancelable);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new m(this, iIncrementAndGet, immutableListU, downloadCacheStrategy, downloadTaskCancelable, 1)).j(this.d).i(this.g), new n(this, iIncrementAndGet2, 1)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new h3(this, applyCallback2, 10), new h3(this, applyCallback2, 11));
            uVarI2.a(consumerSingleObserver2);
            this.f39725b.b(consumerSingleObserver2);
            return downloadTaskCancelable;
        } catch (Throwable th) {
            PfCommons.c(new d3(this, th, applyCallback2, i2));
        }
    }
}
