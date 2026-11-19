package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.y51;
import defpackage.z51;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VtoDetail {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final VtoDetail f40003c = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductInfo f40004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SkuInfo f40005b;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.VtoDetail$1, reason: invalid class name */
    class AnonymousClass1 extends VtoDetail {
        public static final /* synthetic */ int d = 0;

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPalettes(VtoObject.Callback callback) {
            PfCommons.c(new n4(callback, 2));
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPatterns(VtoObject.Callback callback) {
            PfCommons.c(new n4(callback, 0));
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getWearingStyles(VtoObject.Callback callback) {
            PfCommons.c(new n4(callback, 1));
        }
    }

    public static final class PaletteMajor extends VtoDetail {
        public static List a(ProductInfo productInfo, SkuInfo skuInfo) {
            StringBuilder sb;
            SubItemInfo subItemInfoB;
            Threads.b();
            SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
            List<String> listA = com.perfectcorp.perfectlib.ph.database.ymk.palette.c.a(sQLiteDatabaseB, skuInfo.f39943c);
            List<String> listD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.d(sQLiteDatabaseB, skuInfo.f39943c, null, false);
            bz bzVar = ImmutableList.f42200c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            BeautyMode beautyMode = productInfo.f39797b;
            if (beautyMode == BeautyMode.LIP_STICK && !listA.isEmpty()) {
                for (String str : listA) {
                    com.perfectcorp.perfectlib.ph.template.p pVarA = com.perfectcorp.perfectlib.ph.database.ymk.shape.a.a(sQLiteDatabaseB, str);
                    if (pVarA != null) {
                        subItemInfoB = SubItemInfo.b(pVarA);
                    } else if (str.equals("shape_lipstick_original")) {
                        subItemInfoB = SubItemInfo.b(new com.perfectcorp.perfectlib.ph.template.p("shape_lipstick_original", "", ""));
                    } else {
                        Log.d("VtoDetail$PaletteMajor", "[createPatternInfos] can not get shape, ID=".concat(str));
                    }
                    builder.f(subItemInfoB);
                }
                return builder.i();
            }
            for (String str2 : listD) {
                YMKPrimitiveData.Pattern patternW = TemplateUtils.w(str2);
                if (patternW == null) {
                    sb = new StringBuilder("[createPatternInfos] can not get pattern, ID=");
                } else if (SubItemInfo.g(beautyMode, patternW.g)) {
                    sb = new StringBuilder("[createPatternInfos] unsupported 2D pattern, ID=");
                } else {
                    builder.f(SubItemInfo.a(patternW));
                }
                sb.append(str2);
                Log.d("VtoDetail$PaletteMajor", sb.toString());
            }
            if (beautyMode == BeautyMode.HAIR_DYE && listD.isEmpty()) {
                SubItemInfo.Builder builder2 = new SubItemInfo.Builder();
                builder2.a("hairdye_pattern_one_color_full");
                int i2 = Nulls.f42040a;
                builder2.f39964b = Strings.b("");
                builder2.d = Strings.b("");
                builder.f(new SubItemInfo(builder2));
            }
            return builder.i();
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetail$PaletteMajor", "[getPalettes] start");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new o4(this, 0)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 0), new z51(callback, 1));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPatterns(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetail$PaletteMajor", "[getPatterns] start");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromCallable(new o4(this, 1)).subscribeOn(Schedulers.f43170c).flatMapIterable(Functions.f42605a).map(new p4(this, 0)).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 2), new z51(callback, 3));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getWearingStyles(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetail$PaletteMajor", "[getWearingStyles] start");
            PfCommons.c(new y51(callback, 0));
        }
    }

    public static final class PatternEarringsOrNail extends VtoDetail {
        public final com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b d;

        public PatternEarringsOrNail(ProductInfo productInfo, SkuInfo skuInfo, com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar) {
            super(productInfo, skuInfo);
            com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA = eVar.a();
            Objects.requireNonNull(bVarA, "extra data is null for SKU '" + eVar.f41292a + "'");
            this.d = bVarA;
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetailPatternEarrings", "[getPalettes] start");
            PfCommons.c(new y51(callback, 1));
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPatterns(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetailPatternEarrings", "[getPatterns] start");
            if (this.d.earringsOrNail == null) {
                callback.onSuccess(Collections.EMPTY_LIST);
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new q4(this, 0)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 4), new z51(callback, 5));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getWearingStyles(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetailPatternEarrings", "[getWearingStyles] start");
            if (this.d.earringsOrNail == null) {
                callback.onSuccess(Collections.EMPTY_LIST);
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new q4(this, 1)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 6), new z51(callback, 7));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }
    }

    public static final class PatternMajor extends VtoDetail {
        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            SkuInfo skuInfo = this.f40005b;
            Objects.requireNonNull(skuInfo, "skuInfo can't be null");
            Log.g(3, "VtoDetailPatternMajor", "[getPalettes] start");
            if (skuInfo.f39942b == BeautyMode.EYE_CONTACT) {
                PfCommons.c(new y51(callback, 2));
            } else {
                new VtoPattern.PatternMajor(this.f40004a, skuInfo).getPalettes(callback);
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getPatterns(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetailPatternMajor", "[getPatterns] start");
            PfCommons.c(new g1(this, callback, 5));
        }

        @Override // com.perfectcorp.perfectlib.VtoDetail
        public final void getWearingStyles(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoDetailPatternMajor", "[getWearingStyles] start");
            PfCommons.c(new y51(callback, 3));
        }
    }

    public VtoDetail(ProductInfo productInfo, SkuInfo skuInfo) {
        Objects.requireNonNull(productInfo);
        this.f40004a = productInfo;
        this.f40005b = skuInfo;
    }

    public abstract void getPalettes(VtoObject.Callback<VtoPalette> callback);

    public abstract void getPatterns(VtoObject.Callback<VtoPattern> callback);

    public abstract void getWearingStyles(VtoObject.Callback<VtoWearingStyle> callback);

    public VtoDetail() {
        this.f40004a = null;
        this.f40005b = null;
    }
}
