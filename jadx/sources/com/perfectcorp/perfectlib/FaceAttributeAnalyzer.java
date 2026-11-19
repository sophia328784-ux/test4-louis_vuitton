package com.perfectcorp.perfectlib;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.ToastUtils;
import com.perfectcorp.perfectlib.FaceAnalysisData;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.core.VenusModel$Assets;
import com.perfectcorp.perfectlib.core.VenusModel$Files;
import com.perfectcorp.perfectlib.jniproxy.CUITracking;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupLiveFaceAlignData;
import com.perfectcorp.perfectlib.jniproxy.faceshape.FacePredictResult;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.d8;
import defpackage.md;
import defpackage.n7;
import defpackage.pq0;
import defpackage.uw;
import defpackage.wm;
import defpackage.xw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class FaceAttributeAnalyzer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f39597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39598c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmutableSet f39599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bitmap f39600f;
    public UIMakeupLiveFaceAlignData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CUITracking f39601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PredictionCache f39602i;

    public interface AnalyzeCallback {
        void onFailure(Throwable th);

        void onSuccess(FaceAnalysisData faceAnalysisData);
    }

    public static final class Condition {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ImmutableSet f39603b = FluentIterable.n(Arrays.asList("faceShape", "skinTone", "eyeShape", "eyeSize", "eyeAngle", "eyeDistance", "eyelid", "eyeColor", "eyebrowShape", "eyebrowThinness", "eyebrowShortness", "eyebrowThickness", "eyebrowDistance", "eyebrowColor", "lipShape", "lipColor", "noseWidth", "noseLength", "cheekbones", "hairColor", "age", "gender")).q();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Set f39604a;

        public Condition(Set set) {
            this.f39604a = set;
        }

        public static boolean d() {
            Context contextB = PfCommons.b();
            PerfectLib.ModelPath modelPath = PerfectLib.g.f39514a;
            boolean z = modelPath.f39755a;
            String str = modelPath.f39756b;
            return !TextUtils.isEmpty(z ? VenusModel$Assets.e(contextB, str, new VenusModel$Assets("ageGender_model_fp16.mnn")) : VenusModel$Files.b(str, new VenusModel$Files("ageGender_model_fp16.mnn")));
        }

        public final boolean[] a() {
            boolean zB = b();
            boolean zC = c();
            Set set = this.f39604a;
            return new boolean[]{zB, zC, set.contains("faceShape"), set.contains("cheekbones"), set.contains("lipShape"), set.contains("noseWidth") || set.contains("noseLength"), set.contains("lipColor"), set.contains("eyeColor"), set.contains("eyeColor"), d(), false};
        }

        public final boolean b() {
            Set set = this.f39604a;
            return set.contains("eyeShape") || set.contains("eyeSize") || set.contains("eyeAngle") || set.contains("eyeDistance") || set.contains("eyelid");
        }

        public final boolean c() {
            Set set = this.f39604a;
            return set.contains("eyebrowShape") || set.contains("eyebrowThinness") || set.contains("eyebrowShortness") || set.contains("eyebrowThickness") || set.contains("eyebrowDistance");
        }
    }

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(FaceAttributeAnalyzer faceAttributeAnalyzer);
    }

    public static final class PredictionCache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public FacePredictResult f39605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FaceAnalysisData.Extra f39606b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean[] f39607c;

        public static String a(Condition condition) {
            Context contextB = PfCommons.b();
            PerfectLib.ModelPath modelPath = PerfectLib.g.f39514a;
            String strC = modelPath.f39755a ? VenusModel$Assets.c(contextB) : modelPath.f39756b;
            ArrayList arrayList = new ArrayList();
            if (condition.f39604a.contains("cheekbones")) {
                arrayList.add("[FP16]cheekbone_1210_1_output_graph[tf112].mnn");
            }
            if (condition.b()) {
                arrayList.add("[FP16]eyelid_20220718[tf112].mnn");
            }
            if (condition.c()) {
                arrayList.add("eyebrow_st_net_v1-20191121-1574330695_fp16.mnn");
            }
            if (condition.f39604a.contains("faceShape")) {
                arrayList.add("[FP16]1568105590.mnn");
                arrayList.add("[FP16]1568623014.mnn");
                arrayList.add("[FP16]output_graph_tf112.mnn");
                arrayList.add("20220517_fp16.mnn");
            }
            if (condition.f39604a.contains("hairColor")) {
                arrayList.add("haitone_init_net_241213_cross1.mnn");
                arrayList.add("seg_init_net_20200814_android.mnn");
            }
            if (Condition.d()) {
                arrayList.add("ageGender_model_fp16.mnn");
            }
            boolean z = modelPath.f39755a;
            String str = modelPath.f39756b;
            if (z) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    VenusModel$Assets.d(contextB, str, new VenusModel$Assets((String) it.next()));
                }
            } else {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    VenusModel$Files.a(str, new VenusModel$Files((String) it2.next()));
                }
            }
            return strC;
        }
    }

    public static final class Preferences {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BasicPreferences f39608a = new BasicPreferences(DatabaseSharedPreferences.a("FaceAttributePreferences"));
    }

    public interface SetImageCallback {
        void onFailure(Throwable th);

        void onSuccess();
    }

    public FaceAttributeAnalyzer(boolean z, String str) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, NamedThreadFactory.b("FaceAttributeAnalyzerSerialExecutor"));
        scheduledThreadPoolExecutor.setKeepAliveTime(5L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.setMaximumPoolSize(1);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f39596a = Schedulers.a(scheduledThreadPoolExecutor);
        this.f39597b = z;
        this.f39598c = str;
        this.d = false;
        FluentIterable fluentIterableN = FluentIterable.n(PerfectLib.f39741e);
        ImmutableSet immutableSet = Condition.f39603b;
        Objects.requireNonNull(immutableSet);
        this.f39599e = fluentIterableN.i(new uw(0, immutableSet)).q();
    }

    public static void create(CreateCallback createCallback) {
        if (!PerfectLib.d()) {
            md.k("PerfectLib.init() must be called first.");
            return;
        }
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        final CreateCallback createCallback2 = (CreateCallback) Proxies.a(CreateCallback.class, createCallback);
        boolean z = PerfectLib.g.g;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(ShadeFinder.b(), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(10))), new wm(z, 2)).f(new d8(4)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        Objects.requireNonNull(createCallback2);
        final int i2 = 0;
        final int i3 = 1;
        uVarI.a(new ConsumerSingleObserver(new Consumer() { // from class: tw
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                FaceAttributeAnalyzer.CreateCallback createCallback3 = createCallback2;
                switch (i4) {
                    case 0:
                        createCallback3.onSuccess((FaceAttributeAnalyzer) obj);
                        break;
                    default:
                        createCallback3.onFailure((Throwable) obj);
                        break;
                }
            }
        }, new Consumer() { // from class: tw
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                FaceAttributeAnalyzer.CreateCallback createCallback3 = createCallback2;
                switch (i4) {
                    case 0:
                        createCallback3.onSuccess((FaceAttributeAnalyzer) obj);
                        break;
                    default:
                        createCallback3.onFailure((Throwable) obj);
                        break;
                }
            }
        }));
    }

    public final void a() {
        BasicPreferences basicPreferences = Preferences.f39608a;
        String string = basicPreferences.getString("CUSTOM_FEATURE_BRAND", "");
        boolean z = basicPreferences.getBoolean("CUSTOM_FEATURE_FACE_ATTRIBUTE_LV", false);
        if (!"LV".equals(string)) {
            this.d = false;
        } else {
            this.d = z;
            defpackage.a.A(pq0.r("Brand ", string, ", LV FaceAttribute: "), z ? "ON" : "OFF", 4, "FaceAttributeAnalyzer");
        }
    }

    public final void analyze(Set<String> set, AnalyzeCallback analyzeCallback) {
        Objects.requireNonNull(analyzeCallback, "callback can't be null");
        final AnalyzeCallback analyzeCallback2 = (AnalyzeCallback) Proxies.a(AnalyzeCallback.class, analyzeCallback);
        int i2 = 3;
        Log.g(3, "FaceAttributeAnalyzer", "[analyze] start");
        if (this.f39597b) {
            ToastUtils.a();
        }
        ImmutableSet immutableSetT = ImmutableSet.t(set);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new z(this, immutableSetT, i2)).f(new defpackage.o2(immutableSetT, 4)).j(this.f39596a).i(AndroidSchedulers.a());
        final int i3 = 0;
        final int i4 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: ww
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Log.g(3, "FaceAttributeAnalyzer", "[analyze] succeeded");
                        analyzeCallback2.onSuccess((FaceAnalysisData) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("FaceAttributeAnalyzer", "[analyze] failed", th);
                        analyzeCallback2.onFailure(th);
                        break;
                }
            }
        }, new Consumer() { // from class: ww
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i4) {
                    case 0:
                        Log.g(3, "FaceAttributeAnalyzer", "[analyze] succeeded");
                        analyzeCallback2.onSuccess((FaceAnalysisData) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("FaceAttributeAnalyzer", "[analyze] failed", th);
                        analyzeCallback2.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final Set<String> getAvailableFeatures() {
        return this.f39599e;
    }

    public final void setImage(Bitmap bitmap, SetImageCallback setImageCallback) {
        Objects.requireNonNull(bitmap, "src can't be null");
        Objects.requireNonNull(setImageCallback, "callback can't be null");
        SetImageCallback setImageCallback2 = (SetImageCallback) Proxies.a(SetImageCallback.class, setImageCallback);
        Log.g(3, "FaceAttributeAnalyzer", "[setImage] start");
        int i2 = 5;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new defpackage.n2(this, i2)).j(Schedulers.f43170c), new defpackage.p3(this, bitmap, 12)).i(this.f39596a), AndroidSchedulers.a());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new defpackage.o2(setImageCallback2, i2), new xw(setImageCallback2, 0));
        mVar.a(callbackCompletableObserver);
        PerfectLib.f39744i.b(callbackCompletableObserver);
    }
}
