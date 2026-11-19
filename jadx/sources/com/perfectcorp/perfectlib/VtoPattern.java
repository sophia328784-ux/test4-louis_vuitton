package com.perfectcorp.perfectlib;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.a61;
import defpackage.d20;
import defpackage.f8;
import defpackage.y51;
import defpackage.z51;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VtoPattern extends VtoObject {
    public final ProductInfo d;

    public static final class PaletteMajor extends VtoPattern {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaletteMajor(ProductInfo productInfo, SubItemInfo subItemInfo) {
            super(productInfo, subItemInfo);
            Objects.requireNonNull(subItemInfo);
        }

        @Override // com.perfectcorp.perfectlib.VtoPattern
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPattern$PaletteMajor", "[getPalettes] start");
            boolean z = PerfectLib.g.f39519h;
            Set setE = Sets.e();
            int i2 = 12;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromCallable(new r4(this, setE, z)).subscribeOn(Schedulers.f43170c).flatMapIterable(Functions.f42605a).map(new a0(this, setE, 9)).filter(new d20(7)).map(new a61(0)).map(new z0(this, i2)).cast(VtoPalette.class).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, i2), new z51(callback, 13));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }
    }

    public static final class PatternEarrings extends VtoPattern {
        @Override // com.perfectcorp.perfectlib.VtoPattern
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPatternPatternEarrings", "[getPalettes] start");
            PfCommons.c(new y51(callback, 4));
        }
    }

    public static final class PatternMajor extends VtoPattern {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SkuInfo f40013e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PatternMajor(ProductInfo productInfo, SkuInfo skuInfo) {
            super(productInfo, skuInfo);
            Objects.requireNonNull(skuInfo);
            this.f40013e = skuInfo;
        }

        @Override // com.perfectcorp.perfectlib.VtoPattern
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPattern$PatternMajor", "[getPalettes] start");
            int i2 = 13;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromCallable(new i(this, i2)).subscribeOn(Schedulers.f43170c).flatMapIterable(Functions.f42605a).map(new z0(this, i2)).cast(VtoPalette.class).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 14), new z51(callback, 15));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }
    }

    public static final class SubPalette extends VtoPattern {

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.VtoPattern$SubPalette$1, reason: invalid class name */
        class AnonymousClass1 extends CacheLoader<String, YMKPrimitiveData.Palette> {
            @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
            public final /* synthetic */ Object a(Object obj) {
                return TemplateUtils.x((String) obj);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubPalette(ProductInfo productInfo, SubItemInfo subItemInfo) {
            super(productInfo, subItemInfo);
            Objects.requireNonNull(subItemInfo);
        }

        @Override // com.perfectcorp.perfectlib.VtoPattern
        public final void getPalettes(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPattern$SubPalette", "[getPalettes] start");
            boolean z = PerfectLib.g.f39519h;
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            Observable observableSubscribeOn = Observable.fromCallable(new r4(this, z, concurrentHashMap)).subscribeOn(Schedulers.f43170c);
            Function function = Functions.f42605a;
            Single list = observableSubscribeOn.flatMapIterable(function).map(new f8(concurrentHashMap, 5)).filter(new d20(7)).map(new a61(1)).toList();
            s4 s4Var = new s4(0);
            list.getClass();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list, s4Var), function).map(new z0(this, 14)).cast(VtoPalette.class).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 16), new z51(callback, 17));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }
    }

    public VtoPattern(ProductInfo productInfo, SkuInfo skuInfo) {
        super(skuInfo.getGuid(), skuInfo.getName(), skuInfo.getThumbnailUrl());
        this.d = productInfo;
    }

    public abstract void getPalettes(VtoObject.Callback<VtoPalette> callback);

    public VtoPattern(ProductInfo productInfo, SubItemInfo subItemInfo) {
        super(subItemInfo.f39958a, subItemInfo.f39959b, subItemInfo.d);
        this.d = productInfo;
    }

    public VtoPattern(ProductInfo productInfo, String str, String str2) {
        super(str, "", str2);
        this.d = productInfo;
    }
}
