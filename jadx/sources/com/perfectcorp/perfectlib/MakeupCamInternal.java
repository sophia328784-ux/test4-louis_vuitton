package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import android.graphics.PointF;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Pair;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.jniproxy.UIShimmer;
import com.perfectcorp.perfectlib.jniproxy.VN_Lipliner_Type;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.BlushPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.CubeEyewearPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EarringsPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.EyeShadowLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourSettingHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.HairDyePayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipLinerPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickLayer;
import com.perfectcorp.perfectlib.makeupcam.camera.LipstickPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.Real3DEyewearPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateWorkarounds;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDbHelper;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheBuilder;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a61;
import defpackage.az;
import defpackage.b21;
import defpackage.bm;
import defpackage.cj;
import defpackage.d20;
import defpackage.d21;
import defpackage.fc;
import defpackage.g7;
import defpackage.md;
import defpackage.p00;
import defpackage.tr;
import defpackage.v40;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes3.dex */
final class MakeupCamInternal {
    public static final ThreadPoolExecutor n;
    public static final ImmutableSet o;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MakeupCam f39698f;
    public final com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LiveSettingCtrl f39699h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f39701j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f39702k;
    public int l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39694a = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b("MakeupCamInternal#downloadTaskExecutor")));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f39695b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39696c = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b("MakeupCamInternal#applyTaskExecutor")));
    public final AtomicInteger d = new AtomicInteger();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DownloadTaskCancelable f39697e = DownloadTaskCancelable.f40351e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Configuration.ImageSource f39700i = PerfectLib.g.d;
    public final Logger m = new Logger();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.MakeupCamInternal$1, reason: invalid class name */
    class AnonymousClass1 implements ApplyEffectCtrl.SkuIdGetter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ HashMap f39703b;

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.SkuIdGetter
        public final ApplyEffectCtrl.SkuIdGetter.Ids a(YMKPrimitiveData.Effect effect) {
            return MakeupCamInternal.n(effect, this.f39703b);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.MakeupCamInternal$2, reason: invalid class name */
    class AnonymousClass2 extends CacheLoader<BeautyMode, ApplyEffectCtrl.ConfigurationBuilder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ ApplyEffectCtrl f39704a;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
        public final Object a(Object obj) {
            ApplyEffectCtrl applyEffectCtrl = this.f39704a;
            applyEffectCtrl.getClass();
            return new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, (BeautyMode) obj, true);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.MakeupCamInternal$3, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39705a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f39706b;

        static {
            int[] iArr = new int[ItemSubType.values().length];
            f39706b = iArr;
            try {
                iArr[ItemSubType.HIGHLIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39706b[ItemSubType.CONTOUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39706b[ItemSubType.HIGHLIGHT_CONTOUR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[BeautyMode.values().length];
            f39705a = iArr2;
            try {
                iArr2[BeautyMode.SKIN_SMOOTHER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39705a[BeautyMode.TEETH_WHITENER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static final class Logger {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile String f39713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public HashMap f39714b;

        public final void a(ReshapeEffect reshapeEffect, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
            if (this.f39714b == null) {
                this.f39714b = new HashMap();
            }
            if (this.f39714b.containsKey(reshapeEffect)) {
                Date date = (Date) this.f39714b.get(reshapeEffect);
                Objects.requireNonNull(date);
                if ((System.currentTimeMillis() - date.getTime()) / 1000.0f <= 1.0f) {
                    return;
                }
            }
            this.f39714b.put(reshapeEffect, new Date());
            com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(reshapeEffect.beautyMode.getEventFeature(), aVar);
            bVar.k(Collections.singletonList(reshapeEffect.beautyMode));
            bVar.c(bVar.f41949c);
            bVar.b();
        }
    }

    static {
        int iMax = Math.max(2, Runtime.getRuntime().availableProcessors() - 1);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, iMax, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        n = threadPoolExecutor;
        o = ImmutableSet.u(new BeautyMode[]{BeautyMode.LIP_LINER, BeautyMode.BRONZER, BeautyMode.CONCEALER});
    }

    public MakeupCamInternal(MakeupCam makeupCam) {
        this.f39698f = makeupCam;
        com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam2 = makeupCam.f39678e;
        this.g = makeupCam2;
        this.f39699h = makeupCam2.f40751a.v;
        this.f39701j = makeupCam.d.l;
        makeupCam.f39680h = new m2(this, 1);
    }

    public static void B(String str, String str2, String str3) {
        if (TextUtils.isEmpty(EffectId.c(str))) {
            return;
        }
        PerfectEffect perfectEffect = PerfectEffect.EARRINGS;
        if (((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str2).c()).a().earringsOrNail.patternGuids.contains(str3)) {
            return;
        }
        StringBuilder sb = new StringBuilder("Invalid patternGuid. effect=");
        sb.append(perfectEffect);
        sb.append(", productGuid=");
        sb.append(str);
        sb.append(", skuGuid=");
        md.n(d21.p(sb, str2, ", patternGuid=", str3));
    }

    public static ConfigureData C(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, PerfectEffect perfectEffect, String str, List list) {
        YMKPrimitiveData.Palette palette;
        BeautyMode beautyMode = perfectEffect.beautyMode;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashMap map = new HashMap();
        com.perfectcorp.perfectlib.ph.database.ymk.skuset.k kVarD = ApplyEffectUtility.D(str);
        String str2 = null;
        int i2 = 0;
        while (i2 < kVarD.colorReferences.size()) {
            com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a aVar = kVarD.colorReferences.get(i2);
            String str3 = aVar.paletteGuid;
            if (i2 == 0) {
                str2 = aVar.patternGuid;
            }
            arrayList.add(aVar.skuGuid);
            if (map.containsKey(str3)) {
                palette = (YMKPrimitiveData.Palette) map.get(str3);
            } else {
                YMKPrimitiveData.Palette paletteX = TemplateUtils.x(aVar.paletteGuid);
                map.put(str3, paletteX);
                palette = paletteX;
            }
            List listF = com.perfectcorp.perfectlib.ph.template.e.f(palette);
            int i3 = aVar.paletteColorIndex;
            YMKPrimitiveData.MakeupColor makeupColor = new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listF.get((i3 < 0 || i3 >= listF.size()) ? 0 : aVar.paletteColorIndex));
            arrayList2.add(makeupColor);
            makeupColor.f40791e = i2 < list.size() ? ((Integer) list.get(i2)).intValue() : aVar.colorIntensity;
            i2++;
        }
        LipstickPayload lipstickPayload = new LipstickPayload(new YMKPrimitiveData.LipstickStyle(kVarD.styleGuid, kVarD.innerRatio, kVarD.featherStrength), kVarD.gloss, new UIShimmer(kVarD.a(), kVarD.shimmerIntensity, kVarD.shimmerDensity, kVarD.shimmerGranularity), kVarD.transparency, kVarD.fullness, kVarD.wrinkless, null, null);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.perfectcorp.perfectlib.ph.template.e.j(liveSettingCtrl, (String) it.next(), beautyMode);
        }
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
        configurationBuilder.n(str);
        configurationBuilder.h(EffectId.INVALID_ID);
        configurationBuilder.e(arrayList2);
        Objects.requireNonNull(str2, "no pattern guid found");
        configurationBuilder.i(str2);
        configurationBuilder.k(lipstickPayload);
        ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
        if (!configurationC.isValid()) {
            md.k("configuration is not valid");
            return null;
        }
        ConfigureData configureData = new ConfigureData(beautyMode, configurationC);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            configureData.a(new ConfigureData.EventData(perfectEffect.eventFeature, beautyMode, (String) it2.next()));
        }
        return configureData;
    }

    public static Object a(int i2, int i3, ApplyEffectCtrl.PayloadCreatorParameters payloadCreatorParameters) {
        ApplyEffectCtrl.PayloadCreatorParameters.Builder builder = new ApplyEffectCtrl.PayloadCreatorParameters.Builder(payloadCreatorParameters);
        builder.l = i2;
        builder.m = i3;
        return com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder));
    }

    public static Pair b(Set set, LiveSettingCtrl liveSettingCtrl, boolean z) {
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new z(set, liveSettingCtrl, 5));
        return Pair.create(listenableFutureTaskCreate, Futures.h(z ? Futures.h(listenableFutureTaskCreate, new c2(4), AsyncTask.THREAD_POOL_EXECUTOR) : listenableFutureTaskCreate, new c2(5), AsyncTask.THREAD_POOL_EXECUTOR));
    }

    public static EffectId c(VtoSetting vtoSetting, Sku sku) {
        ApplyEffectUtility.ApplySkuInfo applySkuInfoA = ApplyEffectUtility.a(vtoSetting, sku);
        BeautyMode beautyMode = applySkuInfoA.f39474a;
        PerfectEffect perfectEffectOf = PerfectEffect.of(beautyMode, ItemSubType.d(beautyMode, sku.f41264c));
        String str = applySkuInfoA.f39475b;
        String str2 = applySkuInfoA.f39476c;
        String str3 = applySkuInfoA.d;
        String str4 = applySkuInfoA.g;
        String str5 = applySkuInfoA.f39477e;
        List list = applySkuInfoA.f39479h;
        List listS = ApplyEffectUtility.s(str3, str4);
        if (listS.isEmpty() || list.isEmpty()) {
            md.n(fc.i("Invalid sub-palette GUID. paletteGuid=", str3, ", subPaletteGuid=", str4));
            return null;
        }
        int i2 = 0;
        ImmutableList immutableListU = (listS.size() == 1 && ((Integer) listS.get(0)).intValue() == -1) ? ImmutableList.u(list) : FluentIterable.n(listS).r(new p00(list, 1)).p();
        ImmutableList immutableListP = FluentIterable.n(immutableListU).r(new c2(i2)).p();
        EffectId.Builder builder = new EffectId.Builder(perfectEffectOf);
        builder.f39567b = EffectId.c(str);
        builder.f39568c = EffectId.c(str2);
        builder.d = EffectId.c(str3);
        builder.f39569e = EffectId.c(str4);
        builder.f39570f = EffectId.c(str5);
        builder.b(immutableListP);
        builder.c(immutableListU);
        return builder.a();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0085  */
    public static ConfigureData d(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, EffectId effectId) {
        PerfectEffect perfectEffect = effectId.f39555a;
        String str = effectId.f39558e;
        ImmutableList immutableList = effectId.f39561i;
        String str2 = effectId.d;
        BeautyMode beautyMode = perfectEffect.beautyMode;
        if (ApplyEffectUtility.f39471a.contains(beautyMode)) {
            BeautyMode beautyMode2 = perfectEffect.beautyMode;
            int i4 = AnonymousClass3.f39705a[beautyMode2.ordinal()];
            if (i4 != 1 && i4 != 2) {
                b21.p(beautyMode2, "Unsupported feature=");
                return null;
            }
            applyEffectCtrl.getClass();
            ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode2);
            configurationBuilder.k(immutableList.get(0));
            return new ConfigureData(beautyMode2, configurationBuilder.c());
        }
        String str3 = effectId.f39556b;
        boolean zB = SkuTemplateUtils.b(beautyMode);
        String str4 = zB ? str : str2;
        if (zB) {
            if ((perfectEffect == PerfectEffect.EYEWEAR || perfectEffect == PerfectEffect.EYEWEAR_3D) && !TextUtils.isEmpty(EffectId.c(effectId.f39557c))) {
                String strB = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str2).c()).b();
                if (TextUtils.isEmpty(strB)) {
                    str = str2;
                } else {
                    str = strB;
                }
            } else {
                str = str2;
            }
        }
        List listR = com.perfectcorp.perfectlib.ph.unit.sku.a.f(str3) ? ApplyEffectUtility.r(beautyMode, str3) : com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(str4));
        int iC = LiveSettingCtrl.c(beautyMode);
        if (beautyMode == BeautyMode.EYE_CONTACT && listR.isEmpty()) {
            listR = Collections.singletonList(new YMKPrimitiveData.MakeupColor(0));
        }
        TemplateWorkarounds.b(iC, listR, immutableList);
        int iS = TemplateUtils.s(str, str4);
        return e(applyEffectCtrl, liveSettingCtrl, i2, i3, effectId.f39555a, str3, effectId.f39557c, str4, str, effectId.d, effectId.f39558e, listR, (iS < 0 || iS > 100) ? 0 : iS);
    }

    public static ConfigureData e(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, PerfectEffect perfectEffect, String str, String str2, String str3, String str4, String str5, String str6, List list, int i4) {
        LiveSettingCtrl liveSettingCtrl2;
        String str7;
        String str8;
        ConfigureData configureData;
        List list2;
        ApplyEffectCtrl.PayloadCreatorParameters.Builder builder;
        float f2;
        Optional optionalA;
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder;
        String str9 = str3;
        String str10 = str4;
        BeautyMode beautyMode = perfectEffect.beautyMode;
        ApplyEffectCtrl.PayloadCreatorParameters.Builder builder2 = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
        builder2.f40560a = beautyMode;
        builder2.f40561b = str;
        builder2.f40562c = str2;
        builder2.d = str5;
        builder2.f40563e = str9;
        builder2.g = str10;
        builder2.f40564f = "";
        builder2.l = i2;
        builder2.m = i3;
        if (beautyMode == BeautyMode.EYE_BROW) {
            ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
            com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149bJ = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.j(YMKDatabase.b(), str10, str9);
            YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) TemplateUtils.z(str10).get(0);
            JsonObject jsonObject = c0149bJ.f41261a;
            JsonObject jsonObject2 = c0149bJ.f41261a;
            builder2.n = GsonHelper.a(jsonObject, "browpositionx", -1000) != -1000 ? GsonHelper.a(jsonObject2, "browpositionx", -1000) : mask.N;
            builder2.o = GsonHelper.a(jsonObject2, "browpositiony", -1000) != -1000 ? GsonHelper.a(jsonObject2, "browpositiony", -1000) : mask.O;
            builder2.p = GsonHelper.a(jsonObject2, "browthickness", -1000) != -1000 ? GsonHelper.a(jsonObject2, "browthickness", -1000) : mask.P;
            builder2.q = GsonHelper.a(jsonObject2, "browcurvature", -1000) != -1000 ? GsonHelper.a(jsonObject2, "browcurvature", -1000) : mask.Q;
            builder2.r = GsonHelper.a(jsonObject2, "browdefinition", -1) != -1 ? GsonHelper.a(jsonObject2, "browdefinition", -1) : mask.R;
            builder2.s = GsonHelper.a(jsonObject2, "browheadlocation", -1000) != -1000 ? GsonHelper.a(jsonObject2, "browheadlocation", -1000) : mask.c0;
            builder2.t = GsonHelper.a(jsonObject2, "browtaillocation", -1000) != -1000 ? GsonHelper.a(jsonObject2, "browtaillocation", -1000) : mask.d0;
            liveSettingCtrl2 = liveSettingCtrl;
            list2 = list;
            builder = builder2;
            str7 = str;
            str8 = str2;
            configureData = null;
        } else if (beautyMode == BeautyMode.FACE_CONTOUR) {
            liveSettingCtrl2 = liveSettingCtrl;
            list2 = list;
            configureData = null;
            ApplyEffectUtility.u(builder2, str, str2, str10, str9, str6, list2, perfectEffect.itemSubType, false, Collections.EMPTY_LIST, liveSettingCtrl2);
            str7 = str;
            str8 = str2;
            builder = builder2;
        } else {
            liveSettingCtrl2 = liveSettingCtrl;
            str7 = str;
            str8 = str2;
            configureData = null;
            if (beautyMode == BeautyMode.LIP_LINER) {
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                List listB = com.perfectcorp.perfectlib.ph.database.ymk.palette.g.b(YMKDatabase.b(), str9);
                float f3 = TemplateUtils.f41580a;
                com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149bJ2 = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.j(YMKDatabase.b(), str10, str9);
                YMKPrimitiveData.Pattern patternW = TemplateUtils.w(str10);
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                com.perfectcorp.perfectlib.ph.template.m mVarD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(sQLiteDatabaseB, str10);
                if (mVarD == null) {
                    md.n(tr.g("[fillLipLinerParameters] pattern is not in database, patternGuid=", str10));
                    return null;
                }
                com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVarC = ApplyEffectUtility.c(sQLiteDatabaseB, str10, str9, str6);
                if (bVarC == null) {
                    bm.e(str6, fc.s("[fillLipLinerParameters] PatternPaletteInfo is not in database, patternGuid=", str10, ", paletteGuid=", str9, ", subPaletteGuid="));
                    return null;
                }
                List listA = com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.a(bVarC.f41253c);
                int iIntValue = !listA.isEmpty() ? ((Integer) listA.get(0)).intValue() : 0;
                int i5 = mVarD.o;
                int i6 = iIntValue;
                builder = builder2;
                list2 = list;
                LipLinerPayload.Setting setting = new LipLinerPayload.Setting(str10, str9, str6, i6, i5, list2);
                str10 = str10;
                str9 = str9;
                VN_Lipliner_Type vN_Lipliner_Type = (MoreCollections.a(listB) || !"lip_liner_texture_satin".equalsIgnoreCase(((com.perfectcorp.perfectlib.ph.database.ymk.palette.f) listB.get(0)).f41247b)) ? VN_Lipliner_Type.LIPLINER_THICK : VN_Lipliner_Type.LIPLINER_BRIGHT;
                Objects.requireNonNull(vN_Lipliner_Type);
                builder.G = vN_Lipliner_Type;
                builder.H = GsonHelper.a(c0149bJ2.f41261a, "thickness", -1);
                builder.I = GsonHelper.a(c0149bJ2.f41261a, "smoothness", -1);
                builder.J = patternW != null ? patternW.f40829i : 0;
                builder.K = patternW != null ? patternW.f40830j : 0;
                builder.L = patternW != null ? patternW.f40831k : 0;
                List listSingletonList = Collections.singletonList(setting);
                Preconditions.f(!listSingletonList.isEmpty());
                builder.M = ImmutableList.u(listSingletonList);
            } else {
                list2 = list;
                builder = builder2;
                if (beautyMode == BeautyMode.HAIR_DYE) {
                    ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                    if (MoreCollections.a(list2)) {
                        md.n("[fillHairDyeParameters] color is empty!");
                        return null;
                    }
                    if (TextUtils.isEmpty(str7) || EffectId.INVALID_ID.equals(str7)) {
                        int i7 = ((YMKPrimitiveData.MakeupColor) list2.get(0)).f40791e;
                        int i8 = ((YMKPrimitiveData.MakeupColor) list2.get(0)).g.g;
                        YMKPrimitiveData.Pattern patternW2 = TemplateUtils.w(str10);
                        YMKPrimitiveData.HairDyePatternType hairDyePatternType = YMKPrimitiveData.HairDyePatternType.NONE;
                        Optional optionalA2 = Optional.a();
                        if (patternW2 != null) {
                            hairDyePatternType = patternW2.l;
                            builder.C = hairDyePatternType;
                            optionalA2 = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.i(YMKDatabase.b(), str9, str10);
                        }
                        if (hairDyePatternType == YMKPrimitiveData.HairDyePatternType.ONE_COLOR_OMBRE) {
                            JsonObject jsonObject3 = (optionalA2.d() ? ((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) optionalA2.c()).f41257i : com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.f41250j).f41261a;
                            Gson gson = GsonHelper.f39260a;
                            float f4 = -1000.0f;
                            try {
                                f2 = jsonObject3.f42454b.containsKey("ombre_range") ? jsonObject3.r("ombre_range").f() : -1000.0f;
                            } catch (Throwable unused) {
                            }
                            builder.B = f2;
                            try {
                                if (jsonObject3.f42454b.containsKey("ombre_line_offset")) {
                                    f4 = jsonObject3.r("ombre_line_offset").f();
                                }
                            } catch (Throwable unused2) {
                            }
                            builder.A = f4;
                            builder.D = GsonHelper.b(jsonObject3, "coloring_section");
                        }
                        builder.x = ImmutableList.u(Collections.singletonList(str9));
                        builder.y = ImmutableList.u(Collections.singletonList(Integer.valueOf(i7)));
                        builder.z = ImmutableList.u(Collections.singletonList(Integer.valueOf(i8)));
                    } else {
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVarE = ApplyEffectUtility.E(str7);
                        float f5 = iVarE.ombreRange;
                        float f6 = iVarE.ombreLineOffset;
                        builder.x = ImmutableList.u(Lists.c(iVarE.colorReferences, new g7(3)));
                        builder.y = ImmutableList.u(Lists.c(list2, new g7(4)));
                        builder.z = ImmutableList.u(Lists.c(iVarE.colorReferences, new g7(5)));
                        builder.B = f5;
                        builder.A = f6;
                    }
                } else if (beautyMode == BeautyMode.SKIN_TONER) {
                    ImmutableSet immutableSet4 = ApplyEffectUtility.f39471a;
                    if (MoreCollections.a(list2)) {
                        md.n("[fillFoundationParameters] color is empty!");
                        return null;
                    }
                    builder.N = ((YMKPrimitiveData.MakeupColor) list2.get(0)).g.f40799i;
                    builder.O = ((YMKPrimitiveData.MakeupColor) list2.get(0)).g.f40801k;
                } else if (beautyMode == BeautyMode.REAL_3D_EYEWEAR) {
                    Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str5);
                    if (optionalD.d()) {
                        builder.g = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c()).b();
                    } else {
                        builder.g = str5;
                    }
                } else if (beautyMode == BeautyMode.CONCEALER) {
                    ImmutableSet immutableSet5 = ApplyEffectUtility.f39471a;
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.b.C0149b c0149bJ3 = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.j(YMKDatabase.b(), str10, str9);
                    builder.Q = GsonHelper.a(c0149bJ3.f41261a, "color_under_eye_intensity", -1);
                    builder.R = GsonHelper.a(c0149bJ3.f41261a, "coverage_level", -1);
                }
            }
        }
        Object objD = com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder));
        BeautyMode beautyMode2 = BeautyMode.FACE_CONTOUR;
        if (beautyMode == beautyMode2 && (objD instanceof FaceContourPayload)) {
            applyEffectCtrl.getClass();
            configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
            configurationBuilder.n(str7);
            configurationBuilder.k(objD);
            com.perfectcorp.perfectlib.ph.template.e.i(liveSettingCtrl2, beautyMode2, (FaceContourPayload) objD);
        } else {
            BeautyMode beautyMode3 = BeautyMode.CUBE_EYEWEAR;
            if (beautyMode == beautyMode3 || beautyMode == BeautyMode.REAL_3D_EYEWEAR) {
                if (objD instanceof CubeEyewearPayload) {
                    optionalA = Optional.e(beautyMode3);
                } else if (objD instanceof Real3DEyewearPayload) {
                    beautyMode3 = BeautyMode.REAL_3D_EYEWEAR;
                    optionalA = Optional.e(beautyMode3);
                } else {
                    optionalA = Optional.a();
                }
                beautyMode = (BeautyMode) optionalA.f(beautyMode);
            }
            applyEffectCtrl.getClass();
            configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
            configurationBuilder.i(str10);
            configurationBuilder.h(str9);
            configurationBuilder.e(list2);
            configurationBuilder.k(objD);
            for (int i9 = 0; i9 < configurationBuilder.f40506a.d; i9++) {
                configurationBuilder.f(i9).g = i4;
            }
            configurationBuilder.n(str7);
            configurationBuilder.l(str8);
            configurationBuilder.m(str5);
            com.perfectcorp.perfectlib.ph.template.e.h(liveSettingCtrl2, beautyMode, configurationBuilder.f(0));
        }
        ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
        if (!configurationC.isValid()) {
            md.k("configuration is not valid");
            return configureData;
        }
        ConfigureData configureData2 = new ConfigureData(beautyMode, configurationC);
        configureData2.a(new ConfigureData.EventData(perfectEffect.eventFeature, beautyMode, str8));
        return configureData2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ConfigureData f(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, EffectId effectId, int i2, int i3) {
        YMKPrimitiveData.Palette paletteX;
        String str = effectId.f39556b;
        PerfectEffect perfectEffect = effectId.f39555a;
        ImmutableList immutableList = effectId.f39561i;
        if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(str)) {
            if (!str.contains("_lk_")) {
                PerfectEffect perfectEffect2 = perfectEffect;
                BeautyMode beautyMode = perfectEffect2.beautyMode;
                ApplyEffectCtrl.PayloadCreatorParameters.Builder builder = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
                builder.f40560a = beautyMode;
                builder.f40563e = EffectId.INVALID_ID;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                HashMap map = new HashMap();
                ImmutableMap.Builder builder2 = new ImmutableMap.Builder();
                for (Object obj : com.perfectcorp.perfectlib.ph.template.e.C0182e.g(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str))) {
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) obj;
                    Objects.requireNonNull(cVar);
                    builder2.b(cVar.f41342c, obj);
                }
                try {
                    ImmutableMap immutableMapA = builder2.a();
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVarE = ApplyEffectUtility.E(str);
                    String str2 = iVarE.patternGuid;
                    int i4 = 0;
                    while (i4 < iVarE.colorReferences.size()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.a aVar = iVarE.colorReferences.get(i4);
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVar = iVarE;
                        String str3 = aVar.paletteGuid;
                        ImmutableMap immutableMap = immutableMapA;
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) immutableMapA.get(str3);
                        Objects.requireNonNull(cVar2);
                        arrayList.add(cVar2.f41341b);
                        if (map.containsKey(str3)) {
                            paletteX = (YMKPrimitiveData.Palette) map.get(str3);
                        } else {
                            paletteX = TemplateUtils.x(aVar.paletteGuid);
                            map.put(str3, paletteX);
                        }
                        List listF = com.perfectcorp.perfectlib.ph.template.e.f(paletteX);
                        ArrayList arrayList3 = arrayList;
                        int i5 = aVar.paletteColorIndex;
                        HashMap map2 = map;
                        int i6 = (i5 < 0 || i5 >= listF.size()) ? 0 : aVar.paletteColorIndex;
                        String str4 = str2;
                        ArrayList arrayList4 = new ArrayList(listF.size());
                        PerfectEffect perfectEffect3 = perfectEffect2;
                        int i7 = 0;
                        while (i7 < listF.size()) {
                            List list = listF;
                            YMKPrimitiveData.MakeupColor makeupColor = new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listF.get(i7));
                            if (i7 == i6) {
                                makeupColor.f40791e = i4 < immutableList.size() ? ((Integer) immutableList.get(i4)).intValue() : aVar.colorIntensity;
                                int i8 = aVar.shimmerIntensity;
                                YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColor.g;
                                extraData.d = i8;
                                extraData.f40796e = aVar.metallicIntensity;
                            }
                            arrayList4.add(makeupColor);
                            i7++;
                            listF = list;
                            i6 = i6;
                        }
                        int i9 = i6;
                        int i10 = i4;
                        arrayList2.add(new EyeShadowLinerPayload.Setting(str4, str3, ApplyEffectUtility.p(str3, Collections.singletonList(Integer.valueOf(i9))), i9, i10, arrayList4));
                        i4 = i10 + 1;
                        iVarE = iVar;
                        immutableMapA = immutableMap;
                        arrayList = arrayList3;
                        str2 = str4;
                        map = map2;
                        perfectEffect2 = perfectEffect3;
                    }
                    PerfectEffect perfectEffect4 = perfectEffect2;
                    ArrayList arrayList5 = arrayList;
                    builder.E = ImmutableList.u(arrayList2);
                    Object objD = com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder));
                    Objects.requireNonNull(objD);
                    EyeShadowLinerPayload eyeShadowLinerPayload = (EyeShadowLinerPayload) objD;
                    List<EyeShadowLinerPayload.Setting> list2 = eyeShadowLinerPayload.f40613a;
                    for (EyeShadowLinerPayload.Setting setting : list2) {
                        com.perfectcorp.perfectlib.ph.template.e.m(liveSettingCtrl, setting.f40615a, beautyMode);
                        com.perfectcorp.perfectlib.ph.template.e.j(liveSettingCtrl, setting.f40616b, beautyMode);
                    }
                    ArrayList arrayList6 = new ArrayList();
                    for (EyeShadowLinerPayload.Setting setting2 : list2) {
                        arrayList6.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(setting2.f40619f).get(setting2.d)));
                    }
                    applyEffectCtrl.getClass();
                    ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
                    configurationBuilder.n(str);
                    configurationBuilder.h(EffectId.INVALID_ID);
                    configurationBuilder.e(arrayList6);
                    configurationBuilder.i(EffectId.INVALID_ID);
                    configurationBuilder.k(eyeShadowLinerPayload);
                    ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
                    if (!configurationC.isValid()) {
                        md.k("configuration is not valid");
                        return null;
                    }
                    ConfigureData configureData = new ConfigureData(beautyMode, configurationC);
                    Iterator it = arrayList5.iterator();
                    while (it.hasNext()) {
                        configureData.a(new ConfigureData.EventData(perfectEffect4.eventFeature, beautyMode, (String) it.next()));
                    }
                    return configureData;
                } catch (IllegalArgumentException e2) {
                    a61.l(e2.getMessage(), ". To index multiple values under a key, use Multimaps.index.");
                    return null;
                }
            }
            Log.g(3, "MakeupCamInternal", str.concat(" isLookSkuSet"));
            BeautyMode beautyMode2 = perfectEffect.beautyMode;
            if (beautyMode2 == BeautyMode.EYE_SHADOW || beautyMode2 == BeautyMode.EYE_LINES) {
                return g(applyEffectCtrl, liveSettingCtrl, perfectEffect, effectId.f39556b, i2, i3);
            }
        }
        String str5 = effectId.d;
        String str6 = effectId.f39558e;
        String str7 = effectId.f39559f;
        List listT = ApplyEffectUtility.t(str7, str5, str6, immutableList, LiveSettingCtrl.c(BeautyMode.EYE_SHADOW));
        String str8 = effectId.f39557c;
        String str9 = effectId.d;
        BeautyMode beautyMode3 = perfectEffect.beautyMode;
        List listS = ApplyEffectUtility.s(str5, str6);
        if (listS.isEmpty() || listT.isEmpty()) {
            md.n(fc.i("Invalid sub-palette GUID. paletteGuid=", str5, ", subPaletteGuid=", str6));
            return null;
        }
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        if (listS.size() == 1 && ((Integer) listS.get(0)).intValue() == -1) {
            int i11 = 0;
            while (i11 < listT.size()) {
                arrayList7.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listT.get(i11)));
                ArrayList arrayList9 = arrayList8;
                arrayList9.add(new EyeShadowLinerPayload.Setting(str7, str5, str6, i11, i11, listT));
                i11++;
                arrayList8 = arrayList9;
            }
        } else {
            int i12 = 0;
            while (i12 < listS.size()) {
                int iIntValue = ((Integer) listS.get(i12)).intValue();
                List list3 = listS;
                if (iIntValue < 0 || iIntValue >= listT.size()) {
                    iIntValue = i12 < listT.size() ? i12 : 0;
                }
                ArrayList arrayList10 = arrayList8;
                arrayList7.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listT.get(iIntValue)));
                arrayList10.add(new EyeShadowLinerPayload.Setting(str7, str5, str6, iIntValue, i12, listT));
                i12++;
                arrayList8 = arrayList10;
                listS = list3;
            }
        }
        ArrayList arrayList11 = arrayList8;
        if (immutableList != null) {
            TemplateWorkarounds.b(LiveSettingCtrl.c(beautyMode3), arrayList7, immutableList);
        }
        ApplyEffectCtrl.PayloadCreatorParameters.Builder builder3 = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
        builder3.f40562c = str8;
        builder3.d = str9;
        builder3.f40563e = str5;
        builder3.g = str7;
        builder3.f40560a = beautyMode3;
        builder3.E = ImmutableList.u(arrayList11);
        Object objD2 = com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder3));
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder2 = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode3);
        configurationBuilder2.i(str7);
        configurationBuilder2.h(str5);
        configurationBuilder2.e(arrayList7);
        configurationBuilder2.k(objD2);
        configurationBuilder2.l(str8);
        configurationBuilder2.m(str9);
        com.perfectcorp.perfectlib.ph.template.e.h(liveSettingCtrl, beautyMode3, configurationBuilder2.f(0));
        ApplyEffectCtrl.Configuration configurationC2 = configurationBuilder2.c();
        if (!configurationC2.isValid()) {
            md.k("configuration is not valid");
            return null;
        }
        ConfigureData configureData2 = new ConfigureData(beautyMode3, configurationC2);
        configureData2.a(new ConfigureData.EventData(perfectEffect.eventFeature, perfectEffect.beautyMode, str8));
        return configureData2;
    }

    public static ConfigureData g(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, PerfectEffect perfectEffect, String str, int i2, int i3) {
        String str2;
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilderK;
        if (com.perfectcorp.perfectlib.ph.kernelctrl.sku.h.c(perfectEffect.beautyMode)) {
            BeautyMode beautyMode = perfectEffect.beautyMode;
            String str3 = "";
            if (str.contains("_lk_")) {
                String[] strArrSplit = str.split("_lk_");
                if (strArrSplit.length == 2) {
                    str3 = strArrSplit[1];
                } else {
                    Log.g(3, "SkuSetUnit", "Unexpected tokens from : ".concat(str));
                }
            }
            String str4 = str3;
            Log.g(3, "MakeupCamInternal", "extracted LookGuid :" + str4);
            Optional optionalF = ApplyEffectUtility.F(str4);
            if (!optionalF.d()) {
                Log.g(3, "MakeupCamInternal", "can't find look : " + str4);
                throw new LookNotFoundException(tr.g("Can't find look=", str4));
            }
            YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) optionalF.c();
            com.perfectcorp.perfectlib.ph.template.e.k(look, liveSettingCtrl);
            ApplyEffectCtrl.PayloadCreatorParameters.Builder builder = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
            a2 a2Var = new a2(u(look));
            CacheBuilder cacheBuilderB = CacheBuilder.b();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            anonymousClass2.f39704a = applyEffectCtrl;
            LoadingCache loadingCacheA = cacheBuilderB.a(anonymousClass2);
            ArrayList arrayList = new ArrayList();
            for (YMKPrimitiveData.Effect effect : look.a()) {
                if (effect.f40758b == beautyMode) {
                    arrayList.add(effect);
                }
            }
            if (beautyMode == BeautyMode.LIP_STICK) {
                YMKPrimitiveData.Effect effect2 = (YMKPrimitiveData.Effect) cj.c(1, arrayList);
                configurationBuilderK = ApplyEffectCtrl.j(loadingCacheA, look.f40784e, 0, look.f40781a, builder, effect2, n(effect2, a2Var.f40031b));
                builder = builder;
            } else if (beautyMode == BeautyMode.EYE_SHADOW || beautyMode == BeautyMode.EYE_LINES) {
                configurationBuilderK = ApplyEffectCtrl.k(liveSettingCtrl, loadingCacheA, 0, a2Var, str4, arrayList, builder);
            } else if (beautyMode == BeautyMode.BLUSH) {
                configurationBuilderK = ApplyEffectCtrl.i(liveSettingCtrl, loadingCacheA, 0, a2Var, str4, arrayList, builder);
            } else {
                str2 = "Missing Configuration for LookSkuSet Effect.";
            }
            configurationBuilderK.f(0).f40576h = a(i2, i3, new ApplyEffectCtrl.PayloadCreatorParameters(builder));
            ApplyEffectCtrl.Configuration configurationC = configurationBuilderK.c();
            if (configurationC.isValid()) {
                return new ConfigureData(beautyMode, configurationC);
            }
            str2 = "Configuration is not valid.";
        } else {
            str2 = "Unsupported LookSkuSet Effect.";
        }
        Log.g(3, "MakeupCamInternal", str2);
        md.k(str2);
        return null;
    }

    public static ConfigureData h(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, BeautyMode beautyMode, List list, boolean z) {
        FaceContourPayload.Builder builder = new FaceContourPayload.Builder();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EffectId effectId = (EffectId) it.next();
            String str = effectId.f39556b;
            PerfectEffect perfectEffect = effectId.f39555a;
            ImmutableList immutableList = effectId.f39561i;
            String str2 = effectId.f39557c;
            String str3 = effectId.d;
            String str4 = effectId.f39559f;
            String str5 = effectId.f39558e;
            ApplyEffectCtrl.PayloadCreatorParameters.Builder builder2 = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
            builder2.f40560a = beautyMode;
            builder2.f40561b = str;
            builder2.f40563e = str3;
            builder2.g = str4;
            builder2.f40564f = "";
            ApplyEffectUtility.u(builder2, str, str2, str4, str3, str5, ApplyEffectUtility.t(str4, str3, str5, immutableList, 50), perfectEffect.itemSubType, z, immutableList, liveSettingCtrl);
            Object objD = com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder2));
            if (objD instanceof FaceContourPayload) {
                FaceContourPayload faceContourPayload = (FaceContourPayload) objD;
                int andIncrement = FaceContourPayload.Setting.f40638k.getAndIncrement();
                FaceContourPayload.Setting setting = faceContourPayload.f40632a;
                if (setting != null && setting.f40639a == -1) {
                    setting.f40639a = andIncrement;
                }
                FaceContourPayload.Setting setting2 = faceContourPayload.f40633b;
                if (setting2 != null && setting2.f40639a == -1) {
                    setting2.f40639a = andIncrement;
                }
                int i2 = faceContourPayload.f40634c;
                if (setting != null) {
                    builder.f40635a = setting;
                    builder.f40637c = i2;
                }
                if (setting2 != null) {
                    builder.f40636b = setting2;
                    builder.f40637c = i2;
                }
            }
            ArrayList arrayList2 = new ArrayList();
            FaceContourPayload faceContourPayloadA = builder.a();
            FaceContourPayload.Setting setting3 = faceContourPayloadA.f40632a;
            if (setting3 != null) {
                arrayList2.add(setting3);
            }
            FaceContourPayload.Setting setting4 = faceContourPayloadA.f40633b;
            if (setting4 != null) {
                arrayList2.add(setting4);
            }
            arrayList.add(new ConfigureData.EventData(perfectEffect, str2, arrayList2));
        }
        FaceContourPayload faceContourPayloadA2 = builder.a();
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
        configurationBuilder.k(faceContourPayloadA2);
        com.perfectcorp.perfectlib.ph.template.e.i(liveSettingCtrl, BeautyMode.FACE_CONTOUR, faceContourPayloadA2);
        ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
        if (!configurationC.isValid()) {
            md.k("configuration is not valid");
            return null;
        }
        ConfigureData configureData = new ConfigureData(beautyMode, configurationC);
        configureData.f39709c.addAll(arrayList);
        return configureData;
    }

    public static ConfigureData i(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, List list) {
        com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b bVar;
        int i2;
        int i3;
        ConfigureData configureData;
        EarringsPayload earringsPayload;
        PerfectEffect perfectEffect = PerfectEffect.EARRINGS;
        int i4 = 0;
        Optional optionalM = FluentIterable.n(list).i(new y1(i4)).m();
        int i5 = 1;
        ImmutableList<EffectId> immutableListP = FluentIterable.n(list).i(new y1(i5)).p();
        ImmutableList<EffectId> immutableListP2 = FluentIterable.n(list).i(new y1(2)).p();
        ConfigureData configureData2 = null;
        if (optionalM.d() || (immutableListP.isEmpty() && immutableListP2.isEmpty())) {
            EffectId effectId = (EffectId) (optionalM.d() ? optionalM.c() : list.get(0));
            String str = effectId.f39557c;
            String str2 = effectId.d;
            String strC = EffectId.c(effectId.getWearingStyleGuid());
            com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA = ((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) SkuItemDao.d(YMKDatabase.b(), str2).c()).a();
            boolean zIsEmpty = TextUtils.isEmpty(strC);
            List listA = bVarA.earringsOrNail.a();
            if (zIsEmpty) {
                bVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b) listA.get(0);
            } else {
                Iterator it = listA.iterator();
                do {
                    if (!it.hasNext()) {
                        bVar = null;
                        break;
                    }
                    bVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b) it.next();
                } while (!strC.equals(bVar.guid));
                if (bVar == null) {
                    StringBuilder sb = new StringBuilder("Invalid wearingStyleGuid. effect=");
                    sb.append(perfectEffect);
                    sb.append(", productGuid=");
                    sb.append(str);
                    sb.append(", skuGuid=");
                    md.n(d21.p(sb, str2, ", wearingStyleGuid=", strC));
                    return null;
                }
            }
            StringBuilder sb2 = new StringBuilder("[getEarringsPayload] Input IDs : effect=");
            sb2.append(perfectEffect);
            sb2.append(", skuGuid=");
            sb2.append(str);
            sb2.append(", skuItemGuid=");
            cj.C(sb2, str2, ", wearingStyleGuid=", strC, ", matched wearingStyleGuid=");
            sb2.append(bVar.guid);
            Log.g(3, "MakeupCamInternal", sb2.toString());
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d.a.b.C0156a c0156a : bVar.pattern) {
                int i6 = i4;
                int i7 = i5;
                ConfigureData configureData3 = configureData2;
                EarringsPayload.Pattern pattern = new EarringsPayload.Pattern(str, str2, c0156a.patternGUID, c0156a.piercedPosition);
                String str3 = c0156a.side;
                str3.getClass();
                if (str3.equals("left")) {
                    arrayList.add(pattern);
                } else if (str3.equals("right")) {
                    arrayList2.add(pattern);
                }
                i4 = i6;
                i5 = i7;
                configureData2 = configureData3;
            }
            i2 = i4;
            i3 = i5;
            configureData = configureData2;
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                StringBuilder sb3 = new StringBuilder("No pattern in wearing style. effect=");
                sb3.append(perfectEffect);
                String str4 = bVar.guid;
                sb3.append(", productGuid=");
                sb3.append(str);
                sb3.append(", skuGuid=");
                sb3.append(str2);
                sb3.append(", wearingStyleGuid=");
                sb3.append(str4);
                throw new IllegalArgumentException(sb3.toString());
            }
            earringsPayload = new EarringsPayload(bVar.guid, arrayList, arrayList2);
        } else {
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (EffectId effectId2 : immutableListP) {
                String str5 = effectId2.f39557c;
                String str6 = effectId2.d;
                B(str5, str6, effectId2.getPatternGuid());
                arrayList3.add(new EarringsPayload.Pattern(effectId2.f39557c, str6, effectId2.getPatternGuid(), 0));
            }
            for (EffectId effectId3 : immutableListP2) {
                String str7 = effectId3.f39557c;
                String str8 = effectId3.d;
                B(str7, str8, effectId3.getPatternGuid());
                arrayList4.add(new EarringsPayload.Pattern(effectId3.f39557c, str8, effectId3.getPatternGuid(), 0));
            }
            earringsPayload = new EarringsPayload(null, arrayList3, arrayList4);
            i2 = 0;
            i3 = 1;
            configureData = null;
        }
        BeautyMode beautyMode = perfectEffect.beautyMode;
        ExecutorService executorService = com.perfectcorp.perfectlib.ph.template.e.f41633a;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterable[] iterableArr = new Iterable[2];
        ImmutableList immutableList = earringsPayload.f40605b;
        iterableArr[i2] = immutableList;
        ImmutableList immutableList2 = earringsPayload.f40606c;
        iterableArr[i3] = immutableList2;
        for (EarringsPayload.Pattern pattern2 : FluentIterable.h((Iterable[]) Arrays.copyOf(iterableArr, 2))) {
            hashSet.add(pattern2.f40609c);
            hashSet2.add(pattern2.f40608b);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            com.perfectcorp.perfectlib.ph.template.e.m(liveSettingCtrl, (String) it2.next(), beautyMode);
        }
        Iterator it3 = hashSet2.iterator();
        while (it3.hasNext()) {
            com.perfectcorp.perfectlib.ph.template.e.j(liveSettingCtrl, (String) it3.next(), beautyMode);
        }
        BeautyMode beautyMode2 = perfectEffect.beautyMode;
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode2);
        configurationBuilder.k(earringsPayload);
        ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
        if (!configurationC.isValid()) {
            md.k("configuration is not valid");
            return configureData;
        }
        ConfigureData configureData4 = new ConfigureData(perfectEffect.beautyMode, configurationC);
        HashSet hashSet3 = new HashSet();
        Iterable[] iterableArr2 = new Iterable[2];
        iterableArr2[i2] = immutableList;
        iterableArr2[i3] = immutableList2;
        Iterator<E> it4 = FluentIterable.h((Iterable[]) Arrays.copyOf(iterableArr2, 2)).iterator();
        while (it4.hasNext()) {
            String str9 = ((EarringsPayload.Pattern) it4.next()).f40607a;
            if (!hashSet3.contains(str9)) {
                hashSet3.add(str9);
                configureData4.a(new ConfigureData.EventData(perfectEffect.eventFeature, perfectEffect.beautyMode, str9));
            }
        }
        return configureData4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.ArrayList] */
    public static ConfigureData j(ApplyEffectCtrl applyEffectCtrl, List list) {
        ?? arrayList;
        HairDyeEffectConfig hairDye = ((EffectId) list.get(0)).m.getHairDye();
        AbstractList abstractListC = Lists.c(list, new c2(1));
        AbstractList abstractListC2 = Lists.c(list, new c2(2));
        if (MoreCollections.a(abstractListC) || MoreCollections.a(abstractListC2)) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < abstractListC2.size()) {
                HairDyePayload.Color color = new HairDyePayload.Color();
                color.f40675a = (String) (i2 < abstractListC.size() ? abstractListC.get(i2) : abstractListC.get(0));
                color.f40676b = ((YMKPrimitiveData.MakeupColor) abstractListC2.get(i2)).f40791e;
                color.f40677c = ((YMKPrimitiveData.MakeupColor) abstractListC2.get(i2)).g.g;
                arrayList.add(color);
                i2++;
            }
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            HairDyePayload.Color color2 = (HairDyePayload.Color) arrayList.get(i3);
            EffectId effectId = (EffectId) list.get(i3);
            color2.d = effectId.f39557c;
            color2.f40678e = effectId.d;
        }
        HairDyePayload.Builder builder = new HairDyePayload.Builder();
        builder.f40671a = arrayList;
        builder.f40673c = hairDye.getBlendStrength() / 100.0f;
        builder.f40672b = hairDye.getCoverageRatio();
        HairDyePayload hairDyePayload = new HairDyePayload(builder);
        BeautyMode beautyMode = BeautyMode.HAIR_DYE;
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
        configurationBuilder.n("");
        configurationBuilder.l("");
        configurationBuilder.m("");
        configurationBuilder.h("");
        configurationBuilder.i("");
        configurationBuilder.e(abstractListC2);
        configurationBuilder.k(hairDyePayload);
        ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
        if (!configurationC.isValid()) {
            md.k("configuration is not valid");
            return null;
        }
        ConfigureData configureData = new ConfigureData(beautyMode, configurationC);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EffectId effectId2 = (EffectId) it.next();
            PerfectEffect perfectEffectOf = PerfectEffect.of(BeautyMode.HAIR_DYE, ItemSubType.NONE);
            configureData.a(new ConfigureData.EventData(perfectEffectOf.eventFeature, perfectEffectOf.beautyMode, effectId2.f39557c));
        }
        return configureData;
    }

    public static ConfigureData k(Set set, ApplyEffectCtrl applyEffectCtrl, List list, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) set);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ConfigureData configureData = (ConfigureData) it.next();
            arrayList3.addAll(configureData.f39709c);
            if (enumSetCopyOf.remove(configureData.f39707a)) {
                arrayList.add(configureData.f39708b);
            }
        }
        if (z) {
            arrayList2.addAll(Collections2.b(enumSetCopyOf, new x1(applyEffectCtrl, 1)));
        }
        arrayList2.addAll(arrayList);
        ConfigureData configureData2 = new ConfigureData(BeautyMode.UNDEFINED, new ApplyEffectCtrl.ConfigurationWrapper(arrayList2));
        configureData2.f39709c.addAll(arrayList3);
        return configureData2;
    }

    public static ApplyEffectCtrl.Configuration l(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, Iterable iterable) {
        Single list = Observable.fromIterable(iterable).map(new r1(applyEffectCtrl, liveSettingCtrl, 3)).toList();
        y yVar = new y(17);
        list.getClass();
        return (ApplyEffectCtrl.Configuration) new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list, yVar).c();
    }

    public static ApplyEffectCtrl.ConfigurationWrapper m(ApplyEffectCtrl applyEffectCtrl, Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            ReshapeEffect reshapeEffect = (ReshapeEffect) entry.getKey();
            BeautyMode beautyMode = reshapeEffect.beautyMode;
            Integer num = (Integer) entry.getValue();
            Preconditions.g(num != null, "effect " + reshapeEffect + " doesn't have intensity");
            reshapeEffect.a(num.intValue(), "newIntensity of " + reshapeEffect);
            applyEffectCtrl.getClass();
            ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
            configurationBuilder.k(num);
            arrayList.add(configurationBuilder.c());
        }
        return new ApplyEffectCtrl.ConfigurationWrapper(arrayList);
    }

    public static ApplyEffectCtrl.SkuIdGetter.Ids n(YMKPrimitiveData.Effect effect, HashMap map) {
        String str;
        BeautyMode beautyMode = effect.f40758b;
        String str2 = SkuTemplateUtils.b(beautyMode) ? effect.f40759c : effect.g.f40951a;
        ItemSubType itemSubTypeD = ItemSubType.NONE;
        Optional optionalA = SkuDbHelper.a(str2);
        if (optionalA.d()) {
            Sku sku = (Sku) optionalA.c();
            str = sku.f41266f;
            itemSubTypeD = ItemSubType.d(beautyMode, sku.f41264c);
        } else {
            str = "";
        }
        String str3 = (String) map.get(effect.f40757a);
        int i2 = Nulls.f42040a;
        return new ApplyEffectCtrl.SkuIdGetter.Ids(str, str2, Strings.b(str3), itemSubTypeD);
    }

    public static Single p(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, List list, EffectConfig effectConfig) {
        return Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).map(new y(14)).groupBy(new y(15)).flatMap(new p1(applyEffectCtrl, liveSettingCtrl, i2, i3, effectConfig)).toList();
    }

    public static Single q(final ApplyEffectCtrl applyEffectCtrl, final LiveSettingCtrl liveSettingCtrl, final boolean z, ArrayList arrayList, Iterable iterable, final int i2, final int i3) {
        return Observable.fromIterable(arrayList).groupBy(new y(16)).flatMap(new Function() { // from class: com.perfectcorp.perfectlib.y2
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                GroupedObservable groupedObservable = (GroupedObservable) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Object obj2 = groupedObservable.f43162b;
                BeautyMode beautyMode = BeautyMode.FACE_CONTOUR;
                ApplyEffectCtrl applyEffectCtrl2 = applyEffectCtrl;
                LiveSettingCtrl liveSettingCtrl2 = liveSettingCtrl;
                if (obj2 == beautyMode) {
                    SingleSource list = groupedObservable.toList();
                    u1 u1Var = new u1(applyEffectCtrl2, liveSettingCtrl2, groupedObservable, z, 0);
                    list.getClass();
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list, u1Var).l();
                }
                BeautyMode beautyMode2 = BeautyMode.EYE_SHADOW;
                int i4 = i2;
                int i5 = i3;
                if (obj2 == beautyMode2 || obj2 == BeautyMode.EYE_LINES) {
                    return groupedObservable.take(1L).map(new q1(applyEffectCtrl2, liveSettingCtrl2, i4, i5, 3));
                }
                if (obj2 == BeautyMode.BLUSH) {
                    return groupedObservable.take(1L).map(new q1(applyEffectCtrl2, liveSettingCtrl2, i4, i5, 4));
                }
                if (MakeupCamInternal.o.contains(obj2)) {
                    return groupedObservable.map(new q1(applyEffectCtrl2, liveSettingCtrl2, i4, i5, 5));
                }
                Object obj3 = groupedObservable.f43162b;
                int i6 = 1;
                if (obj3 == BeautyMode.HAIR_DYE) {
                    SingleSource list2 = groupedObservable.toList();
                    r1 r1Var = new r1(applyEffectCtrl2, liveSettingCtrl2, i6);
                    list2.getClass();
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(list2, r1Var);
                }
                if (obj3 == BeautyMode.EARRINGS) {
                    SingleSource list3 = groupedObservable.toList();
                    r1 r1Var2 = new r1(applyEffectCtrl2, liveSettingCtrl2, 2);
                    list3.getClass();
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list3, r1Var2).l();
                }
                if (obj3 != BeautyMode.BACKGROUND) {
                    return obj3 == BeautyMode.LIP_STICK ? groupedObservable.take(1L).map(new q1(applyEffectCtrl2, liveSettingCtrl2, i4, i5, 6)) : groupedObservable.map(new q1(applyEffectCtrl2, liveSettingCtrl2, i4, i5, 7));
                }
                SingleSource list4 = groupedObservable.toList();
                s1 s1Var = new s1(applyEffectCtrl2, i6);
                list4.getClass();
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list4, s1Var).l();
            }
        }).concatWith(Observable.fromIterable(iterable).map(new s1(applyEffectCtrl, 2))).toList();
    }

    /* JADX WARN: Code duplicated, block: B:120:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x019d A[LOOP:4: B:61:0x0197->B:63:0x019d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x01ad  */
    /* JADX WARN: Multi-variable type inference failed */
    public static ArrayList t(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, Map map) {
        int i2;
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder;
        int i3;
        int i4;
        ArrayList arrayList = new ArrayList();
        int i5 = 0;
        boolean z = false;
        for (Map.Entry entry : map.entrySet()) {
            BeautyMode beautyMode = ((PerfectEffect) entry.getKey()).beautyMode;
            if ((liveSettingCtrl.o(beautyMode) || ApplyEffectUtility.f39471a.contains(beautyMode)) && !((beautyMode == BeautyMode.EYE_LASHES && z) || beautyMode == BeautyMode.FACE_CONTOUR)) {
                int[] iArr = (int[]) entry.getValue();
                if (!ApplyEffectUtility.f39471a.contains(beautyMode)) {
                    List listE = liveSettingCtrl.e(beautyMode);
                    ArrayList arrayList2 = new ArrayList();
                    if (listE != null && iArr != null) {
                        int iMin = Math.min(listE.size(), iArr.length);
                        for (int i6 = i5; i6 < iMin; i6++) {
                            YMKPrimitiveData.MakeupColor makeupColor = new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listE.get(i6));
                            makeupColor.f40791e = iArr[i6];
                            arrayList2.add(makeupColor);
                        }
                        while (iMin < listE.size()) {
                            arrayList2.add((YMKPrimitiveData.MakeupColor) listE.get(iMin));
                            iMin++;
                        }
                        Object hairDyePayload = liveSettingCtrl.l.get(beautyMode);
                        if (hairDyePayload instanceof LipstickPayload) {
                            LipstickPayload lipstickPayload = (LipstickPayload) hairDyePayload;
                            lipstickPayload.f40701e = i5;
                            lipstickPayload.f40702f = i5;
                            List list = lipstickPayload.f40704i;
                            if (list != null && list.size() >= listE.size()) {
                                for (int i7 = i5; i7 < iArr.length; i7++) {
                                    int i8 = iArr[i7];
                                    List list2 = lipstickPayload.f40704i;
                                    if (list2 != null && i7 >= 0 && i7 < list2.size()) {
                                        ((LipstickLayer) list2.get(i7)).f40695b = i8;
                                    }
                                }
                            }
                        } else {
                            if (hairDyePayload instanceof HairDyePayload) {
                                HairDyePayload hairDyePayload2 = (HairDyePayload) hairDyePayload;
                                HairDyePayload.Builder builder = new HairDyePayload.Builder();
                                List list3 = hairDyePayload2.f40667a;
                                ImmutableList.Builder builder2 = new ImmutableList.Builder();
                                int i9 = i5;
                                while (i9 < list3.size()) {
                                    HairDyePayload.Color color = new HairDyePayload.Color((HairDyePayload.Color) list3.get(i9));
                                    if (iArr.length > i9) {
                                        color.f40676b = iArr[i9];
                                    } else {
                                        Log.d("HairDyePayload", "colors.size()=" + list3.size() + ", newIntensities.length=" + iArr.length);
                                    }
                                    builder2.f(color);
                                    i9++;
                                    i5 = i5;
                                }
                                i2 = i5;
                                builder.f40671a = builder2.i();
                                builder.f40672b = hairDyePayload2.f40668b;
                                builder.f40673c = hairDyePayload2.f40669c;
                                builder.d = hairDyePayload2.d;
                                builder.f40674e = hairDyePayload2.f40670e;
                                hairDyePayload = new HairDyePayload(builder);
                            }
                            applyEffectCtrl.getClass();
                            configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
                            configurationBuilder.i(liveSettingCtrl.j(beautyMode));
                            configurationBuilder.h(liveSettingCtrl.h(beautyMode));
                            configurationBuilder.e(arrayList2);
                            configurationBuilder.k(hairDyePayload);
                            configurationBuilder.n(liveSettingCtrl.n(beautyMode));
                            configurationBuilder.l(liveSettingCtrl.l(beautyMode));
                            configurationBuilder.m(liveSettingCtrl.m(beautyMode));
                            i3 = liveSettingCtrl.o;
                            for (i4 = i2; i4 < configurationBuilder.f40506a.d; i4++) {
                                configurationBuilder.f(i4).g = i3;
                            }
                            arrayList.add(configurationBuilder);
                            if (beautyMode == BeautyMode.EYE_LASHES) {
                                z = true;
                            }
                        }
                        i2 = i5;
                        applyEffectCtrl.getClass();
                        configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
                        configurationBuilder.i(liveSettingCtrl.j(beautyMode));
                        configurationBuilder.h(liveSettingCtrl.h(beautyMode));
                        configurationBuilder.e(arrayList2);
                        configurationBuilder.k(hairDyePayload);
                        configurationBuilder.n(liveSettingCtrl.n(beautyMode));
                        configurationBuilder.l(liveSettingCtrl.l(beautyMode));
                        configurationBuilder.m(liveSettingCtrl.m(beautyMode));
                        i3 = liveSettingCtrl.o;
                        while (i4 < configurationBuilder.f40506a.d) {
                            configurationBuilder.f(i4).g = i3;
                        }
                        arrayList.add(configurationBuilder);
                        if (beautyMode == BeautyMode.EYE_LASHES) {
                            z = true;
                        }
                    }
                } else if (iArr != null && iArr.length > 0) {
                    applyEffectCtrl.getClass();
                    ApplyEffectCtrl.ConfigurationBuilder configurationBuilder2 = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
                    configurationBuilder2.k(Integer.valueOf(iArr[i5]));
                    arrayList.add(configurationBuilder2);
                }
                i2 = i5;
            } else {
                i2 = i5;
            }
            i5 = i2;
        }
        int i10 = i5;
        ImmutableMap.Builder builder3 = new ImmutableMap.Builder();
        for (Map.Entry entry2 : map.entrySet()) {
            if (((PerfectEffect) entry2.getKey()).beautyMode == BeautyMode.FACE_CONTOUR) {
                builder3.b(((PerfectEffect) entry2.getKey()).itemSubType, (int[]) entry2.getValue());
            }
        }
        ImmutableMap immutableMapA = builder3.a();
        boolean zO = liveSettingCtrl.o(FaceContourSettingHelper.f40647a);
        Log.g(3, "FaceContourSettingHelper", "[getNewPayloadBuilderIfNeed] isFeatureEnable=" + zO + " intensities.isEmpty()=" + immutableMapA.isEmpty());
        FaceContourPayload.Builder builder4 = null;
        if (zO && !immutableMapA.isEmpty()) {
            FaceContourPayload faceContourPayloadA = FaceContourSettingHelper.a(liveSettingCtrl);
            FaceContourPayload.Setting setting = faceContourPayloadA == null ? null : faceContourPayloadA.f40632a;
            FaceContourPayload faceContourPayloadA2 = FaceContourSettingHelper.a(liveSettingCtrl);
            FaceContourPayload.Setting setting2 = faceContourPayloadA2 == null ? null : faceContourPayloadA2.f40633b;
            Log.g(3, "FaceContourSettingHelper", "[getNewPayloadBuilderIfNeed] highlightSetting=" + setting + " contourSetting=" + setting2);
            FaceContourPayload.Setting setting3 = null;
            FaceContourPayload.Setting setting4 = null;
            for (Map.Entry entry3 : immutableMapA.entrySet()) {
                ItemSubType itemSubType = (ItemSubType) entry3.getKey();
                int[] iArr2 = (int[]) entry3.getValue();
                if (iArr2.length == 0) {
                    Log.g(3, "FaceContourSettingHelper", "ItemSubType=" + itemSubType + " newIntensities.length=0");
                } else if (itemSubType == ItemSubType.HIGHLIGHT && setting != null) {
                    int i11 = iArr2[i10];
                    FaceContourPayload.Setting setting5 = new FaceContourPayload.Setting(setting);
                    ((YMKPrimitiveData.MakeupColor) setting5.g.get(setting5.f40646j)).f40791e = i11;
                    setting3 = setting5;
                } else if (itemSubType == ItemSubType.CONTOUR && setting2 != null) {
                    int i12 = iArr2[i10];
                    FaceContourPayload.Setting setting6 = new FaceContourPayload.Setting(setting2);
                    ((YMKPrimitiveData.MakeupColor) setting6.g.get(setting6.f40646j)).f40791e = i12;
                    setting4 = setting6;
                }
            }
            if (setting3 != null || setting4 != null) {
                builder4 = new FaceContourPayload.Builder();
                if (setting3 != null) {
                    setting = setting3;
                }
                builder4.f40635a = setting;
                if (setting4 != null) {
                    setting2 = setting4;
                }
                builder4.f40636b = setting2;
                FaceContourPayload faceContourPayloadA3 = FaceContourSettingHelper.a(liveSettingCtrl);
                builder4.f40637c = faceContourPayloadA3 == null ? 50 : faceContourPayloadA3.f40634c;
            }
        }
        if (builder4 != null) {
            FaceContourPayload faceContourPayloadA4 = builder4.a();
            BeautyMode beautyMode2 = BeautyMode.FACE_CONTOUR;
            applyEffectCtrl.getClass();
            ApplyEffectCtrl.ConfigurationBuilder configurationBuilder3 = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode2);
            configurationBuilder3.k(faceContourPayloadA4);
            arrayList.add(configurationBuilder3);
        }
        return arrayList;
    }

    public static HashMap u(YMKPrimitiveData.Look look) {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (YMKPrimitiveData.Effect effect : look.a()) {
            BeautyMode beautyMode = effect.f40758b;
            if (beautyMode == BeautyMode.FACE_CONTOUR) {
                arrayList.add(effect);
            } else if (beautyMode == BeautyMode.EYE_SHADOW) {
                arrayList2.add(effect);
            } else if (beautyMode == BeautyMode.EYE_LINES) {
                arrayList3.add(effect);
            } else if (beautyMode == BeautyMode.LIP_LINER) {
                arrayList4.add(effect);
            }
        }
        ApplyEffectUtility.x(map, arrayList);
        ApplyEffectUtility.x(map, arrayList2);
        ApplyEffectUtility.x(map, arrayList3);
        ApplyEffectUtility.x(map, arrayList4);
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0123 A[PHI: r5
      0x0123: PHI (r5v37 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting) = 
      (r5v31 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting)
      (r5v28 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting)
     binds: [B:61:0x0134, B:53:0x0121] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:71:0x014a A[PHI: r6
      0x014a: PHI (r6v25 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting) = 
      (r6v19 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting)
      (r6v16 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting)
     binds: [B:78:0x015b, B:70:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:88:0x0171 A[PHI: r7
      0x0171: PHI (r7v15 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting) = 
      (r7v12 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting)
      (r7v9 com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload$Setting)
     binds: [B:95:0x0182, B:87:0x016f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v25, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v26, types: [java.lang.Object, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v28, types: [java.util.ArrayList] */
    public static List v(LiveSettingCtrl liveSettingCtrl, PerfectEffect perfectEffect, BeautyMode beautyMode) {
        Pair pairCreate;
        String strL;
        String strM;
        String strL2;
        String strM2;
        String strH;
        EffectConfig effectConfigBuild;
        ?? E;
        String strB = EffectId.b(liveSettingCtrl.n(beautyMode));
        if (liveSettingCtrl.p(perfectEffect.beautyMode, perfectEffect.itemSubType)) {
            BeautyMode beautyMode2 = perfectEffect.beautyMode;
            if (beautyMode2 == BeautyMode.FACE_CONTOUR) {
                ItemSubType itemSubType = perfectEffect.itemSubType;
                BeautyMode beautyMode3 = FaceContourSettingHelper.f40647a;
                E = new ArrayList();
                FaceContourPayload faceContourPayloadA = FaceContourSettingHelper.a(liveSettingCtrl);
                FaceContourPayload.Setting setting = faceContourPayloadA == null ? null : faceContourPayloadA.f40632a;
                FaceContourPayload faceContourPayloadA2 = FaceContourSettingHelper.a(liveSettingCtrl);
                FaceContourPayload.Setting setting2 = faceContourPayloadA2 == null ? null : faceContourPayloadA2.f40633b;
                if (setting != null && setting.f40644h == itemSubType) {
                    E.addAll(FaceContourSettingHelper.b(setting));
                }
                if (setting2 != null && setting2.f40644h == itemSubType) {
                    E.addAll(FaceContourSettingHelper.b(setting2));
                }
            } else {
                E = liveSettingCtrl.e(beautyMode2);
            }
            if (MoreCollections.a(E)) {
                List list = Collections.EMPTY_LIST;
                pairCreate = Pair.create(list, list);
            } else {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < E.size(); i2++) {
                    arrayList.add(Integer.valueOf(((YMKPrimitiveData.MakeupColor) E.get(i2)).f40791e));
                }
                pairCreate = Pair.create(E, arrayList);
            }
        } else {
            List list2 = Collections.EMPTY_LIST;
            pairCreate = Pair.create(list2, list2);
        }
        List list3 = (List) pairCreate.first;
        List list4 = (List) pairCreate.second;
        if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(strB)) {
            EffectId.Builder builder = new EffectId.Builder(perfectEffect);
            builder.f39567b = EffectId.c(strB);
            builder.c(list3);
            builder.b(list4);
            Log.g(3, "MakeupCamInternal", "getEffectConfig::perfectEffect=" + perfectEffect);
            BeautyMode beautyMode4 = perfectEffect.beautyMode;
            if (beautyMode4 != BeautyMode.HAIR_DYE) {
                effectConfigBuild = EffectConfig.DEFAULT;
            } else {
                HairDyePayload hairDyePayload = (HairDyePayload) liveSettingCtrl.l.get(beautyMode4);
                if (hairDyePayload == null) {
                    Log.d("MakeupCamInternal", "getEffectConfig::payload is null.");
                    effectConfigBuild = EffectConfig.DEFAULT;
                } else {
                    effectConfigBuild = EffectConfig.builder().setHairDye(HairDyeEffectConfig.builder().setBlendStrength((int) (hairDyePayload.c() * 100.0f)).setCoverageRatio(hairDyePayload.b()).build()).build();
                }
            }
            if (effectConfigBuild == null) {
                effectConfigBuild = EffectConfig.DEFAULT;
            }
            builder.l = effectConfigBuild;
            return Collections.singletonList(builder.a());
        }
        BeautyMode beautyMode5 = BeautyMode.FACE_CONTOUR;
        String str = EffectId.INVALID_ID;
        String strJ = "";
        if (beautyMode == beautyMode5) {
            ItemSubType itemSubType2 = perfectEffect.itemSubType;
            FaceContourPayload faceContourPayloadA3 = FaceContourSettingHelper.a(liveSettingCtrl);
            FaceContourPayload.Setting setting3 = faceContourPayloadA3 == null ? null : faceContourPayloadA3.f40632a;
            if (setting3 == null || setting3.f40644h != itemSubType2) {
                FaceContourPayload faceContourPayloadA4 = FaceContourSettingHelper.a(liveSettingCtrl);
                setting3 = faceContourPayloadA4 == null ? null : faceContourPayloadA4.f40633b;
                if (setting3 == null || setting3.f40644h != itemSubType2) {
                    strL2 = "";
                } else {
                    strL2 = setting3.f40641c;
                }
            } else {
                strL2 = setting3.f40641c;
            }
            ItemSubType itemSubType3 = perfectEffect.itemSubType;
            FaceContourPayload faceContourPayloadA5 = FaceContourSettingHelper.a(liveSettingCtrl);
            FaceContourPayload.Setting setting4 = faceContourPayloadA5 == null ? null : faceContourPayloadA5.f40632a;
            if (setting4 == null || setting4.f40644h != itemSubType3) {
                FaceContourPayload faceContourPayloadA6 = FaceContourSettingHelper.a(liveSettingCtrl);
                setting4 = faceContourPayloadA6 == null ? null : faceContourPayloadA6.f40633b;
                if (setting4 == null || setting4.f40644h != itemSubType3) {
                    strM2 = "";
                } else {
                    strM2 = setting4.f40642e;
                }
            } else {
                strM2 = setting4.f40642e;
            }
            ItemSubType itemSubType4 = perfectEffect.itemSubType;
            FaceContourPayload faceContourPayloadA7 = FaceContourSettingHelper.a(liveSettingCtrl);
            FaceContourPayload.Setting setting5 = faceContourPayloadA7 == null ? null : faceContourPayloadA7.f40632a;
            if (setting5 == null || setting5.f40644h != itemSubType4) {
                FaceContourPayload faceContourPayloadA8 = FaceContourSettingHelper.a(liveSettingCtrl);
                setting5 = faceContourPayloadA8 == null ? null : faceContourPayloadA8.f40633b;
                if (setting5 == null || setting5.f40644h != itemSubType4) {
                    strH = "";
                } else {
                    strH = setting5.f40643f;
                }
            } else {
                strH = setting5.f40643f;
            }
            ItemSubType itemSubType5 = perfectEffect.itemSubType;
            FaceContourPayload faceContourPayloadA9 = FaceContourSettingHelper.a(liveSettingCtrl);
            FaceContourPayload.Setting setting6 = faceContourPayloadA9 == null ? null : faceContourPayloadA9.f40632a;
            if (setting6 == null || setting6.f40644h != itemSubType5) {
                FaceContourPayload faceContourPayloadA10 = FaceContourSettingHelper.a(liveSettingCtrl);
                FaceContourPayload.Setting setting7 = faceContourPayloadA10 != null ? faceContourPayloadA10.f40633b : null;
                if (setting7 != null && setting7.f40644h == itemSubType5) {
                    strJ = setting7.d;
                }
            } else {
                strJ = setting6.d;
            }
        } else {
            if (beautyMode == BeautyMode.EYE_SHADOW || beautyMode == BeautyMode.EYE_LINES) {
                EyeShadowLinerPayload eyeShadowLinerPayload = (EyeShadowLinerPayload) liveSettingCtrl.l.get(beautyMode);
                strL = liveSettingCtrl.l(beautyMode);
                strM = liveSettingCtrl.m(beautyMode);
                if (eyeShadowLinerPayload != null) {
                    strJ = ((EyeShadowLinerPayload.Setting) eyeShadowLinerPayload.f40613a.get(0)).f40617c;
                }
            } else if (beautyMode == BeautyMode.LIP_LINER) {
                LipLinerPayload lipLinerPayload = (LipLinerPayload) liveSettingCtrl.l.get(beautyMode);
                strL = liveSettingCtrl.l(beautyMode);
                strM = liveSettingCtrl.m(beautyMode);
                if (lipLinerPayload != null) {
                    strJ = ((LipLinerPayload.Setting) lipLinerPayload.g.get(0)).f40691c;
                }
            } else if (beautyMode == BeautyMode.BLUSH) {
                BlushPayload blushPayload = (BlushPayload) liveSettingCtrl.l.get(beautyMode);
                strL = liveSettingCtrl.l(beautyMode);
                strM = liveSettingCtrl.m(beautyMode);
                if (blushPayload != null) {
                    strJ = ((BlushPayload.Setting) blushPayload.f40586a.get(0)).f40590c;
                }
            } else {
                if (beautyMode == BeautyMode.HAIR_DYE) {
                    HairDyePayload hairDyePayload2 = (HairDyePayload) liveSettingCtrl.l.get(perfectEffect.beautyMode);
                    if (hairDyePayload2 == null) {
                        Log.d("MakeupCamInternal", "createHairDyeEffectId::payload is null.");
                        return Collections.EMPTY_LIST;
                    }
                    String strB2 = EffectId.b(liveSettingCtrl.j(perfectEffect.beautyMode));
                    List listE = liveSettingCtrl.e(perfectEffect.beautyMode);
                    List listUnmodifiableList = Collections.unmodifiableList(hairDyePayload2.f40667a);
                    if (MoreCollections.a(listE) || MoreCollections.a(listUnmodifiableList)) {
                        Log.d("MakeupCamInternal", "createHairDyeEffectId::color list is empty.");
                        return Collections.EMPTY_LIST;
                    }
                    List list5 = listE;
                    List list6 = listUnmodifiableList;
                    if ((list5 != null ? list5.size() : 0) != (list6 != null ? list6.size() : 0)) {
                        Log.d("MakeupCamInternal", "createHairDyeEffectId::color list size is different.");
                        return Collections.EMPTY_LIST;
                    }
                    EffectConfig effectConfigBuild2 = EffectConfig.builder().setHairDye(HairDyeEffectConfig.builder().setBlendStrength((int) (hairDyePayload2.c() * 100.0f)).setCoverageRatio(hairDyePayload2.b()).build()).build();
                    ImmutableList.Builder builderT = ImmutableList.t(listE.size());
                    for (int i3 = 0; i3 < listE.size(); i3++) {
                        YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) listE.get(i3);
                        HairDyePayload.Color color = (HairDyePayload.Color) listUnmodifiableList.get(i3);
                        EffectId.Builder builder2 = new EffectId.Builder(perfectEffect);
                        builder2.f39568c = EffectId.c(color.d);
                        builder2.d = EffectId.c(color.f40678e);
                        builder2.f39569e = EffectId.c(strB2);
                        builder2.c(Collections.singletonList(makeupColor));
                        builder2.b(Collections.singletonList(Integer.valueOf(makeupColor.f40791e)));
                        builder2.l = effectConfigBuild2 != null ? effectConfigBuild2 : EffectConfig.DEFAULT;
                        builderT.f(builder2.a());
                    }
                    return builderT.i();
                }
                if (beautyMode == BeautyMode.EARRINGS) {
                    EarringsPayload earringsPayload = (EarringsPayload) liveSettingCtrl.l.get(perfectEffect.beautyMode);
                    if (earringsPayload == null) {
                        Log.d("MakeupCamInternal", "[createEarringsEffectId] payload is null.");
                        return Collections.EMPTY_LIST;
                    }
                    String str2 = earringsPayload.f40604a;
                    ImmutableList<EarringsPayload.Pattern> immutableList = earringsPayload.f40606c;
                    ImmutableList<EarringsPayload.Pattern> immutableList2 = earringsPayload.f40605b;
                    if (!TextUtils.isEmpty(str2)) {
                        EffectId.Builder builder3 = new EffectId.Builder(perfectEffect);
                        builder3.f39568c = EffectId.c(((EarringsPayload.Pattern) (!immutableList2.isEmpty() ? immutableList2.get(0) : immutableList.get(0))).f40607a);
                        builder3.d = EffectId.c(((EarringsPayload.Pattern) (!immutableList2.isEmpty() ? immutableList2.get(0) : immutableList.get(0))).f40608b);
                        builder3.f39571h = EffectId.c(str2);
                        return Collections.singletonList(builder3.a());
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (EarringsPayload.Pattern pattern : immutableList2) {
                        EffectId.Builder builder4 = new EffectId.Builder(perfectEffect);
                        builder4.f39568c = EffectId.c(pattern.f40607a);
                        builder4.d = EffectId.c(pattern.f40608b);
                        builder4.f39569e = EffectId.c(pattern.f40609c);
                        builder4.m = EarringParameter.builder().isLeft(true).build();
                        arrayList2.add(builder4.a());
                    }
                    for (EarringsPayload.Pattern pattern2 : immutableList) {
                        EffectId.Builder builder5 = new EffectId.Builder(perfectEffect);
                        builder5.f39568c = EffectId.c(pattern2.f40607a);
                        builder5.d = EffectId.c(pattern2.f40608b);
                        builder5.f39569e = EffectId.c(pattern2.f40609c);
                        builder5.m = EarringParameter.builder().isLeft(false).build();
                        arrayList2.add(builder5.a());
                    }
                    return arrayList2;
                }
                if (beautyMode == BeautyMode.BACKGROUND) {
                    BackgroundPayload backgroundPayload = (BackgroundPayload) liveSettingCtrl.l.get(beautyMode);
                    strL2 = (backgroundPayload == null || backgroundPayload.b() == null) ? EffectId.INVALID_ID : backgroundPayload.b().f40583a;
                    strM2 = EffectId.INVALID_ID;
                    strH = strM2;
                } else if (SubItemInfo.f(beautyMode)) {
                    strL2 = liveSettingCtrl.l(beautyMode);
                    strM2 = liveSettingCtrl.m(beautyMode);
                    strH = liveSettingCtrl.h(beautyMode);
                    strJ = liveSettingCtrl.j(beautyMode);
                } else {
                    String strL3 = liveSettingCtrl.l(beautyMode);
                    String strM3 = liveSettingCtrl.m(beautyMode);
                    strH = SkuTemplateUtils.b(beautyMode) ? liveSettingCtrl.h(beautyMode) : liveSettingCtrl.j(beautyMode);
                    strM2 = strM3;
                    strL2 = strL3;
                }
                strJ = EffectId.INVALID_ID;
            }
            strL2 = strL;
            strM2 = strM;
            strH = strJ;
            strJ = liveSettingCtrl.j(beautyMode);
        }
        String strB3 = EffectId.b(strL2);
        String strB4 = EffectId.b(strM2);
        String strB5 = EffectId.b(strH);
        String strB6 = EffectId.b(strJ);
        if (EffectId.INVALID_ID.equals(strB3) && EffectId.INVALID_ID.equals(strB4)) {
            String strH2 = !SkuTemplateUtils.b(beautyMode) ? liveSettingCtrl.h(beautyMode) : liveSettingCtrl.j(beautyMode);
            if (!TextUtils.isEmpty(strH2)) {
                str = strH2;
            }
            strB4 = str;
        }
        if (beautyMode == BeautyMode.EYE_LASHES) {
            Optional optionalA = SkuDbHelper.a(strB4);
            if (optionalA.d()) {
                if (PerfectEffect.of(beautyMode, ItemSubType.d(beautyMode, ((Sku) optionalA.c()).f41264c)) != perfectEffect) {
                    return Collections.EMPTY_LIST;
                }
            } else if (perfectEffect != PerfectEffect.MASCARA) {
                return Collections.EMPTY_LIST;
            }
        }
        EffectId.Builder builder6 = new EffectId.Builder(perfectEffect);
        builder6.f39567b = EffectId.c(strB);
        builder6.f39568c = EffectId.c(strB3);
        builder6.d = EffectId.c(strB4);
        builder6.f39569e = EffectId.c(strB5);
        builder6.f39570f = EffectId.c(strB6);
        builder6.c(list3);
        builder6.b(list4);
        return Collections.singletonList(builder6.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ConfigureData y(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, EffectId effectId) {
        ConfigureData configureData;
        YMKPrimitiveData.Palette paletteX;
        String str = effectId.f39556b;
        PerfectEffect perfectEffect = effectId.f39555a;
        ImmutableList immutableList = effectId.f39561i;
        if (!com.perfectcorp.perfectlib.ph.unit.sku.a.f(str)) {
            configureData = null;
        } else {
            if (!str.contains("_lk_")) {
                PerfectEffect perfectEffect2 = perfectEffect;
                BeautyMode beautyMode = perfectEffect2.beautyMode;
                ApplyEffectCtrl.PayloadCreatorParameters.Builder builder = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
                builder.f40560a = beautyMode;
                builder.f40563e = EffectId.INVALID_ID;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                HashMap map = new HashMap();
                ImmutableMap.Builder builder2 = new ImmutableMap.Builder();
                for (Object obj : com.perfectcorp.perfectlib.ph.template.e.C0182e.g(com.perfectcorp.perfectlib.ph.unit.sku.a.i(str))) {
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) obj;
                    Objects.requireNonNull(cVar);
                    builder2.b(cVar.f41342c, obj);
                }
                try {
                    ImmutableMap immutableMapA = builder2.a();
                    com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVarE = ApplyEffectUtility.E(str);
                    String str2 = iVarE.patternGuid;
                    int i4 = 0;
                    while (i4 < iVarE.colorReferences.size()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.a aVar = iVarE.colorReferences.get(i4);
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.i iVar = iVarE;
                        String str3 = aVar.paletteGuid;
                        ImmutableMap immutableMap = immutableMapA;
                        com.perfectcorp.perfectlib.ph.database.ymk.skuset.c cVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) immutableMapA.get(str3);
                        Objects.requireNonNull(cVar2);
                        arrayList.add(cVar2.f41341b);
                        if (map.containsKey(str3)) {
                            paletteX = (YMKPrimitiveData.Palette) map.get(str3);
                        } else {
                            paletteX = TemplateUtils.x(aVar.paletteGuid);
                            map.put(str3, paletteX);
                        }
                        List listF = com.perfectcorp.perfectlib.ph.template.e.f(paletteX);
                        ArrayList arrayList3 = arrayList;
                        int i5 = aVar.paletteColorIndex;
                        HashMap map2 = map;
                        int i6 = (i5 < 0 || i5 >= listF.size()) ? 0 : aVar.paletteColorIndex;
                        String str4 = str2;
                        ArrayList arrayList4 = new ArrayList(listF.size());
                        PerfectEffect perfectEffect3 = perfectEffect2;
                        int i7 = 0;
                        while (i7 < listF.size()) {
                            List list = listF;
                            YMKPrimitiveData.MakeupColor makeupColor = new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listF.get(i7));
                            if (i7 == i6) {
                                makeupColor.f40791e = i4 < immutableList.size() ? ((Integer) immutableList.get(i4)).intValue() : aVar.colorIntensity;
                            }
                            arrayList4.add(makeupColor);
                            i7++;
                            listF = list;
                        }
                        int i8 = i4;
                        arrayList2.add(new BlushPayload.Setting(str4, str3, ApplyEffectUtility.p(str3, Collections.singletonList(Integer.valueOf(i6))), i6, i8, arrayList4));
                        i4 = i8 + 1;
                        iVarE = iVar;
                        immutableMapA = immutableMap;
                        arrayList = arrayList3;
                        str2 = str4;
                        map = map2;
                        perfectEffect2 = perfectEffect3;
                    }
                    PerfectEffect perfectEffect4 = perfectEffect2;
                    ArrayList arrayList5 = arrayList;
                    builder.F = ImmutableList.u(arrayList2);
                    Object objD = com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder));
                    Objects.requireNonNull(objD);
                    BlushPayload blushPayload = (BlushPayload) objD;
                    List<BlushPayload.Setting> list2 = blushPayload.f40586a;
                    for (BlushPayload.Setting setting : list2) {
                        com.perfectcorp.perfectlib.ph.template.e.m(liveSettingCtrl, setting.f40588a, beautyMode);
                        com.perfectcorp.perfectlib.ph.template.e.j(liveSettingCtrl, setting.f40589b, beautyMode);
                    }
                    ArrayList arrayList6 = new ArrayList();
                    for (BlushPayload.Setting setting2 : list2) {
                        arrayList6.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) Collections.unmodifiableList(setting2.f40592f).get(setting2.d)));
                    }
                    applyEffectCtrl.getClass();
                    ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
                    configurationBuilder.n(str);
                    configurationBuilder.h(EffectId.INVALID_ID);
                    configurationBuilder.e(arrayList6);
                    configurationBuilder.i(EffectId.INVALID_ID);
                    configurationBuilder.k(blushPayload);
                    ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
                    if (!configurationC.isValid()) {
                        md.k("configuration is not valid");
                        return null;
                    }
                    ConfigureData configureData2 = new ConfigureData(beautyMode, configurationC);
                    Iterator it = arrayList5.iterator();
                    while (it.hasNext()) {
                        configureData2.a(new ConfigureData.EventData(perfectEffect4.eventFeature, beautyMode, (String) it.next()));
                    }
                    return configureData2;
                } catch (IllegalArgumentException e2) {
                    a61.l(e2.getMessage(), ". To index multiple values under a key, use Multimaps.index.");
                    return null;
                }
            }
            Log.g(3, "MakeupCamInternal", str.concat(" isLookSkuSet"));
            if (perfectEffect.beautyMode == BeautyMode.BLUSH) {
                return g(applyEffectCtrl, liveSettingCtrl, perfectEffect, effectId.f39556b, i2, i3);
            }
            configureData = null;
        }
        String str5 = effectId.d;
        String str6 = effectId.f39558e;
        String str7 = effectId.f39559f;
        List listT = ApplyEffectUtility.t(str7, str5, str6, immutableList, LiveSettingCtrl.c(BeautyMode.BLUSH));
        String str8 = effectId.f39557c;
        String str9 = effectId.d;
        BeautyMode beautyMode2 = perfectEffect.beautyMode;
        List listS = ApplyEffectUtility.s(str5, str6);
        if (listS.isEmpty() || listT.isEmpty()) {
            md.n(fc.i("Invalid sub-palette GUID. paletteGuid=", str5, ", subPaletteGuid=", str6));
            return configureData;
        }
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        if (listS.size() == 1 && ((Integer) listS.get(0)).intValue() == -1) {
            int i9 = 0;
            while (i9 < listT.size()) {
                List listB = com.perfectcorp.perfectlib.ph.database.ymk.palette.g.b(YMKDatabase.b(), str5);
                if (((YMKPrimitiveData.MakeupColor) listT.get(0)).g.r.isEmpty() && !listB.isEmpty()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.palette.f fVar = (com.perfectcorp.perfectlib.ph.database.ymk.palette.f) listB.get(0);
                    YMKPrimitiveData.MakeupColor makeupColor2 = (YMKPrimitiveData.MakeupColor) listT.get(0);
                    com.perfectcorp.perfectlib.ph.database.ymk.palette.f.a aVar2 = fVar.f41248c;
                    int iA = aVar2.a();
                    JsonObject jsonObject = aVar2.f41249a;
                    makeupColor2.g.n = iA;
                    ((YMKPrimitiveData.MakeupColor) listT.get(0)).g.f40799i = GsonHelper.a(jsonObject, "glow_strength", 0);
                    ((YMKPrimitiveData.MakeupColor) listT.get(0)).g.l = GsonHelper.a(jsonObject, "shimmer_density", 0);
                    ((YMKPrimitiveData.MakeupColor) listT.get(0)).g.r = fVar.f41247b;
                }
                arrayList7.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listT.get(i9)));
                ArrayList arrayList9 = arrayList8;
                str5 = str5;
                str7 = str7;
                arrayList9.add(new BlushPayload.Setting(str7, str5, str6, i9, i9, listT));
                i9++;
                arrayList8 = arrayList9;
            }
        } else {
            int i10 = 0;
            while (i10 < listS.size()) {
                int iIntValue = ((Integer) listS.get(i10)).intValue();
                List list3 = listS;
                if (iIntValue < 0 || iIntValue >= listT.size()) {
                    iIntValue = i10 < listT.size() ? i10 : 0;
                }
                ArrayList arrayList10 = arrayList8;
                arrayList7.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) listT.get(iIntValue)));
                arrayList10.add(new BlushPayload.Setting(str7, str5, str6, iIntValue, i10, listT));
                i10++;
                arrayList8 = arrayList10;
                listS = list3;
            }
        }
        ArrayList arrayList11 = arrayList8;
        if (immutableList != null) {
            TemplateWorkarounds.b(LiveSettingCtrl.c(beautyMode2), arrayList7, immutableList);
        }
        ApplyEffectCtrl.PayloadCreatorParameters.Builder builder3 = new ApplyEffectCtrl.PayloadCreatorParameters.Builder();
        builder3.f40562c = str8;
        builder3.d = str9;
        builder3.f40563e = str5;
        builder3.g = str7;
        builder3.f40560a = beautyMode2;
        builder3.F = ImmutableList.u(arrayList11);
        Object objD2 = com.perfectcorp.perfectlib.ph.template.e.d(new ApplyEffectCtrl.PayloadCreatorParameters(builder3));
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder2 = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode2);
        configurationBuilder2.i(str7);
        configurationBuilder2.h(str5);
        configurationBuilder2.e(arrayList7);
        configurationBuilder2.k(objD2);
        configurationBuilder2.l(str8);
        configurationBuilder2.m(str9);
        com.perfectcorp.perfectlib.ph.template.e.h(liveSettingCtrl, beautyMode2, configurationBuilder2.f(0));
        ApplyEffectCtrl.Configuration configurationC2 = configurationBuilder2.c();
        if (!configurationC2.isValid()) {
            md.k("configuration is not valid");
            return configureData;
        }
        ConfigureData configureData3 = new ConfigureData(beautyMode2, configurationC2);
        configureData3.a(new ConfigureData.EventData(perfectEffect.eventFeature, perfectEffect.beautyMode, str8));
        return configureData3;
    }

    public static ConfigureData z(ApplyEffectCtrl applyEffectCtrl, List list) {
        BackgroundPayload backgroundPayload;
        PerfectEffect perfectEffect = PerfectEffect.BACKGROUND;
        Optional optionalM = FluentIterable.n(list).i(new y1(3)).m();
        if (!optionalM.d()) {
            az.m(perfectEffect, "No background data in db. effect=");
            return null;
        }
        com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = (com.perfectcorp.perfectlib.ph.database.ymk.background.a) com.perfectcorp.perfectlib.ph.database.ymk.background.b.d.o(YMKDatabase.b(), Collections.singletonList(((EffectId) optionalM.c()).f39557c)).get(0);
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a c0173aA = aVar.a();
        if (c0173aA != null) {
            Configuration.ImageSource imageSource = Configuration.ImageSource.FILE;
            String strB = DownloadImageHelper.b(imageSource, c0173aA.makeup.background.get(0).imageUrl);
            String strB2 = DownloadImageHelper.b(imageSource, c0173aA.makeup.foreground.get(0).imageUrl);
            String strReplace = strB.substring(0, strB.lastIndexOf("/")).replace("file://", "");
            String strSubstring = strB.substring(strB.lastIndexOf("/") + 1);
            String strSubstring2 = strB2.substring(strB2.lastIndexOf("/") + 1);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new BackgroundPayload.BackgroundSticker(strSubstring, c0173aA.makeup.background.get(0).alignMode, c0173aA.makeup.background.get(0).animated ? "animated" : "static", c0173aA.makeup.background.get(0).bestDisplayFrame));
            arrayList.add(new BackgroundPayload.BackgroundSticker(strSubstring2, c0173aA.makeup.foreground.get(0).alignMode, c0173aA.makeup.foreground.get(0).animated ? "animated" : "static", c0173aA.makeup.foreground.get(0).bestDisplayFrame));
            new BackgroundPayload.Builder();
            backgroundPayload = new BackgroundPayload(new BackgroundPayload.BackgroundSetting(aVar.guid, strReplace, "", 0, arrayList, arrayList2));
        } else {
            new BackgroundPayload.Builder();
            backgroundPayload = new BackgroundPayload(new BackgroundPayload.BackgroundSetting(aVar.guid, aVar.rootFolder, aVar.data, aVar.version, aVar.d(), aVar.e()));
        }
        BeautyMode beautyMode = perfectEffect.beautyMode;
        applyEffectCtrl.getClass();
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
        configurationBuilder.f(0).f40576h = backgroundPayload;
        ApplyEffectCtrl.Configuration configurationC = configurationBuilder.c();
        if (!configurationC.isValid()) {
            md.k("configuration is not valid");
            return null;
        }
        ConfigureData configureData = new ConfigureData(perfectEffect.beautyMode, configurationC);
        configureData.a(new ConfigureData.EventData(perfectEffect.eventFeature, perfectEffect.beautyMode, backgroundPayload.b().f40583a));
        return configureData;
    }

    public final void A(int i2) {
        int i3 = this.d.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentApplyTaskSN(", ") != expectedApplyTaskSN(", ")"));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Single o(int i2, List list, EffectConfig effectConfig) {
        Single singleP = p(this.g.f40752b, this.f39699h, this.f39702k, this.l, list, effectConfig);
        singleP.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleP, new k1(this, false, 0 == true ? 1 : 0)).i(this.f39696c).d(new l1(this, i2)).i(Schedulers.f43170c).d(new m1(this.m, this.f39699h, 0 == true ? 1 : 0));
    }

    public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k r(int i2, boolean z, Iterable iterable, Iterable iterable2, int i3, int i4, VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback) {
        Single singleH;
        FunStickerTemplate funStickerTemplateA;
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
        Single singleQ = q(this.g.f40752b, this.f39699h, z, arrayList, iterable2, i3, i4);
        singleQ.getClass();
        int i5 = 0;
        Single singleD = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleQ, new k1(this, z, i5)).i(this.f39696c).d(new l1(this, i2)).i(Schedulers.f43170c).d(new m1(this.m, this.f39699h, i5));
        if (arrayList2.isEmpty()) {
            if (z) {
                funStickerTemplateA = FunStickerTemplate.f40650e;
            } else {
                singleH = Single.h(FunStickerTemplate.f40650e);
            }
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(Single.m(singleD, singleH, new y(12)));
        }
        funStickerTemplateA = com.perfectcorp.perfectlib.ph.template.e.a(((EffectId) arrayList2.get(0)).g, true);
        singleH = s(funStickerTemplateA, funStickerActionHintCallback);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(Single.m(singleD, singleH, new y(12)));
    }

    public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b s(final FunStickerTemplate funStickerTemplate, VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback) {
        final LiveMakeupCtrl liveMakeupCtrl = this.g.f40751a;
        liveMakeupCtrl.getClass();
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new Callable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.v
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i2;
                LiveMakeupCtrl liveMakeupCtrl2 = liveMakeupCtrl;
                FunStickerTemplate funStickerTemplate2 = funStickerTemplate;
                liveMakeupCtrl2.getClass();
                ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
                writeLock.lock();
                try {
                    BaseVenus baseVenus = liveMakeupCtrl2.f40716c;
                    UIMakeupJNI.CUIMakeupLive_SetEventInfo(baseVenus.f40398a, baseVenus, FunStickerTemplate.c.b.NONE.ordinal(), FunStickerTemplate.c.a.NONE.ordinal());
                    writeLock.unlock();
                    i iVar = liveMakeupCtrl2.c1;
                    i.a.a(iVar.g);
                    if (funStickerTemplate2.p()) {
                        iVar.g = new i.a(funStickerTemplate2, iVar);
                    } else {
                        Log.g(5, "FunStickerHelper", "It's an invalid template. GUID=" + funStickerTemplate2.l());
                        iVar.f40893a.E(CLMakeupLiveFilter.MakeupLiveFeatures.STICKER, false);
                        iVar.f40893a.b1 = false;
                        iVar.g = new i.a(FunStickerTemplate.f40650e, iVar);
                    }
                    i.a aVar = liveMakeupCtrl2.c1.g;
                    int i3 = aVar.d.d;
                    int[] iArr = new int[i3];
                    int[][] iArr2 = new int[i3][];
                    int[][] iArr3 = new int[i3][];
                    PointF[][] pointFArr = new PointF[i3][];
                    float[][] fArr = new float[i3][];
                    float[][] fArr2 = new float[i3][];
                    PointF[][][] pointFArr2 = new PointF[i3][][];
                    int[][] iArr4 = new int[i3][];
                    int[][] iArr5 = new int[i3][];
                    Iterator it = aVar.f40898a.f40653b.iterator();
                    int i4 = 0;
                    int i5 = 0;
                    while (it.hasNext()) {
                        List<FunStickerTemplate.e> list = ((FunStickerTemplate.f) it.next()).face_sticker;
                        if (list == null) {
                            list = Collections.EMPTY_LIST;
                        }
                        int size = list.size();
                        Iterator it2 = it;
                        iArr2[i4] = new int[size];
                        iArr3[i4] = new int[size];
                        pointFArr[i4] = new PointF[size];
                        fArr[i4] = new float[size];
                        fArr2[i4] = new float[size];
                        pointFArr2[i4] = new PointF[size][];
                        iArr4[i4] = new int[size];
                        iArr5[i4] = new int[size];
                        iArr[i4] = size;
                        int i6 = 0;
                        while (true) {
                            FunStickerTemplate funStickerTemplate3 = funStickerTemplate2;
                            if (i6 < size) {
                                d dVar = (d) aVar.f40899b.get(i5);
                                iArr2[i4][i6] = dVar.f40868f;
                                iArr3[i4][i6] = dVar.g;
                                FunStickerTemplate.e eVar = list.get(i6);
                                int i7 = i6;
                                pointFArr[i4][i7] = eVar.model_offset;
                                fArr[i4][i7] = eVar.model_scale_ratio;
                                fArr2[i4][i7] = eVar.model_depth_ratio;
                                int size2 = eVar.image_anchor_point.size();
                                pointFArr2[i4][i7] = (PointF[]) eVar.image_anchor_point.toArray(new PointF[size2]);
                                iArr4[i4][i7] = size2;
                                iArr5[i4][i7] = eVar.a();
                                i5++;
                                i6 = i7 + 1;
                                iArr = iArr;
                                funStickerTemplate2 = funStickerTemplate3;
                            }
                        }
                        i4++;
                        it = it2;
                    }
                    FunStickerTemplate funStickerTemplate4 = funStickerTemplate2;
                    int[] iArr6 = iArr;
                    int size3 = aVar.f40898a.g().size();
                    int[] iArr7 = new int[size3];
                    int[] iArr8 = new int[size3];
                    int[] iArr9 = new int[size3];
                    int[] iArr10 = new int[size3];
                    int[] iArr11 = new int[size3];
                    int[] iArr12 = new int[size3];
                    int i8 = 0;
                    while (true) {
                        i2 = size3;
                        if (i8 >= size3) {
                            break;
                        }
                        d dVar2 = (d) aVar.f40900c.get(i8);
                        int[] iArr13 = iArr8;
                        FunStickerTemplate.g gVar = (FunStickerTemplate.g) aVar.f40898a.g().get(i8);
                        iArr7[i8] = gVar.a();
                        int i9 = i8;
                        iArr13[i9] = dVar2.f40868f;
                        iArr9[i9] = dVar2.g;
                        int iOrdinal = gVar.f40665c;
                        if (iOrdinal < 0) {
                            iOrdinal = ((FunStickerTemplate.g.a) FunStickerTemplate.d(gVar.align_mode, FunStickerTemplate.g.a.ALIGN_STRETCH)).ordinal();
                            gVar.f40665c = iOrdinal;
                        }
                        iArr10[i9] = iOrdinal;
                        iArr11[i9] = gVar.capInsetTop;
                        iArr12[i9] = dVar2.g - gVar.capInsetBottom;
                        i8 = i9 + 1;
                        iArr8 = iArr13;
                        iArr9 = iArr9;
                        size3 = i2;
                    }
                    int[] iArr14 = iArr8;
                    int[] iArr15 = iArr9;
                    synchronized (aVar.d.f40894b) {
                        aVar.d.f40893a.m0();
                    }
                    aVar.d.f40896e.lock();
                    try {
                        BaseVenus baseVenus2 = aVar.d.f40895c;
                        UIMakeupJNI.CUIMakeupLive_SetStickerInfo(baseVenus2.f40398a, baseVenus2, iArr2, iArr3, pointFArr, fArr, fArr2, pointFArr2, iArr4, iArr5, iArr6, iArr7, iArr14, iArr15, iArr10, iArr11, iArr12, i2);
                        if (!aVar.f40898a.h().isEmpty()) {
                            FunStickerTemplate.c cVar = (FunStickerTemplate.c) aVar.f40898a.h().get(0);
                            BaseVenus baseVenus3 = aVar.d.f40895c;
                            FunStickerTemplate.c.b bVar = cVar.f40661a;
                            if (bVar == null) {
                                bVar = (FunStickerTemplate.c.b) FunStickerTemplate.d(cVar.trigger, FunStickerTemplate.c.b.NONE);
                                cVar.f40661a = bVar;
                            }
                            int iOrdinal2 = bVar.ordinal();
                            FunStickerTemplate.c.a aVar2 = cVar.f40662b;
                            if (aVar2 == null) {
                                aVar2 = (FunStickerTemplate.c.a) FunStickerTemplate.d(cVar.react, FunStickerTemplate.c.a.NONE);
                                cVar.f40662b = aVar2;
                            }
                            UIMakeupJNI.CUIMakeupLive_SetEventInfo(baseVenus3.f40398a, baseVenus3, iOrdinal2, aVar2.ordinal());
                        }
                        aVar.d.f40896e.unlock();
                        synchronized (aVar.d.f40894b) {
                            aVar.d.f40893a.E(CLMakeupLiveFilter.MakeupLiveFeatures.STICKER, !aVar.f40899b.isEmpty());
                            aVar.d.f40893a.b1 = !aVar.f40900c.isEmpty();
                        }
                        f fVar = aVar.f40901e;
                        FunStickerTemplate funStickerTemplate5 = aVar.f40898a;
                        i iVar2 = fVar.f40880a;
                        try {
                            ArrayList arrayList = new ArrayList();
                            for (FunStickerTemplate.d dVar3 : funStickerTemplate5.f40654c) {
                                if (dVar3 == FunStickerTemplate.d.f40663b || TextUtils.isEmpty(dVar3.file_name)) {
                                    arrayList.add(new f.b("", true));
                                } else {
                                    arrayList.add(new f.b(funStickerTemplate5.d + dVar3.file_name, dVar3.f40664a));
                                }
                            }
                            fVar.a(arrayList);
                            fVar.b();
                            iVar2.f40893a.E(CLMakeupLiveFilter.MakeupLiveFeatures.FACE_DISTORTION, true);
                            return funStickerTemplate4;
                        } catch (Throwable th) {
                            Log.c("FaceDistortionHelper", "setupModel failed", th);
                            for (int i10 = 0; i10 < fVar.f40881b; i10++) {
                                fVar.f40882c[i10] = f.a.a(false, false);
                            }
                            fVar.b();
                            iVar2.f40893a.E(CLMakeupLiveFilter.MakeupLiveFeatures.FACE_DISTORTION, false);
                            return funStickerTemplate4;
                        }
                    } catch (Throwable th2) {
                        aVar.d.f40896e.unlock();
                        throw th2;
                    }
                } catch (Throwable th3) {
                    ApplyEffectCtrl.L.unlock();
                    throw th3;
                }
            }
        });
        liveMakeupCtrl.f40722k.post(listenableFutureTaskCreate);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b bVarA = Singles.a(listenableFutureTaskCreate, CallingThread.ANY);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(bVarA, new v40(22)).map(new v40(23)).filter(new d20(7)).map(new v40(24)).toList().i(AndroidSchedulers.a());
        Objects.requireNonNull(funStickerActionHintCallback);
        uVarI.a(new ConsumerSingleObserver(new defpackage.o2(funStickerActionHintCallback, 10), com.perfectcorp.common.rx.a.f39388a));
        return bVarA;
    }

    public final void w(int i2) {
        int i3 = this.f39695b.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentDownloadTaskSN(", ") != expectedDownloadTaskSN(", ")"));
        }
    }

    public final void x(int i2, int i3, List list, EffectConfig effectConfig, DownloadCacheStrategy downloadCacheStrategy, VtoApplier.ApplyCallback applyCallback, DownloadTaskCancelable downloadTaskCancelable, boolean z) {
        Log.g(3, "MakeupCamInternal", "[downloadAndApplySkusInternal] Start download. vtoSettings=".concat(Iterables.c(list)));
        ArrayList arrayList = new ArrayList();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(Observable.fromIterable(list).groupBy(new y(13)).flatMapSingle(new n1(this, i2, arrayList, downloadCacheStrategy, downloadTaskCancelable, z, 1)).toList().i(this.f39696c), new t0(i3, 2, this, arrayList, effectConfig)).i(AndroidSchedulers.a());
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback, 12), new w2(list, applyCallback, 0));
        uVarI.a(consumerSingleObserver);
        this.f39698f.g.b(consumerSingleObserver);
    }

    public static final class ConfigureData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyMode f39707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ApplyEffectCtrl.Configuration f39708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CopyOnWriteArrayList f39709c = new CopyOnWriteArrayList();

        public ConfigureData(BeautyMode beautyMode, ApplyEffectCtrl.Configuration configuration) {
            this.f39707a = beautyMode;
            this.f39708b = configuration;
        }

        public final void a(EventData eventData) {
            this.f39709c.add(eventData);
        }

        public static final class EventData {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final YMKFeatures$EventFeature f39710a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final BeautyMode f39711b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f39712c;
            public final List d;

            public EventData(PerfectEffect perfectEffect, String str, ArrayList arrayList) {
                this.f39710a = perfectEffect.eventFeature;
                this.f39711b = perfectEffect.beautyMode;
                this.f39712c = str;
                this.d = arrayList;
            }

            public EventData(YMKFeatures$EventFeature yMKFeatures$EventFeature, BeautyMode beautyMode, String str) {
                this.f39710a = yMKFeatures$EventFeature;
                this.f39711b = beautyMode;
                this.f39712c = str;
                this.d = Collections.EMPTY_LIST;
            }
        }
    }
}
