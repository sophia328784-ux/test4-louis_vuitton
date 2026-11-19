package com.perfectcorp.perfectlib;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.z51;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VtoPalette extends VtoObject {
    public final ProductInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f40009e;

    public static final class PaletteMajor extends VtoPalette {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SkuInfo f40010f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaletteMajor(ProductInfo productInfo, SkuInfo skuInfo) {
            super(productInfo, skuInfo);
            Objects.requireNonNull(productInfo);
            Objects.requireNonNull(skuInfo);
            this.f40010f = skuInfo;
        }

        @Override // com.perfectcorp.perfectlib.VtoPalette
        public final void getPatterns(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPalette$PaletteMajor", "[getPatterns] start");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromCallable(new i(this, 11)).subscribeOn(Schedulers.f43170c).flatMapIterable(Functions.f42605a).map(new z0(this, 10)).cast(VtoPattern.class).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 8), new z51(callback, 9));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }
    }

    public static final class PatternMajor extends VtoPalette {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SkuInfo f40011f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PatternMajor(ProductInfo productInfo, SkuInfo skuInfo, SubItemInfo subItemInfo) {
            super(productInfo, subItemInfo);
            Objects.requireNonNull(productInfo);
            Objects.requireNonNull(skuInfo);
            this.f40011f = skuInfo;
        }

        @Override // com.perfectcorp.perfectlib.VtoPalette
        public final void getPatterns(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPalette$PatternMajor", "[getPatterns] start");
            PfCommons.c(new g1(this, callback, 6));
        }
    }

    public static final class SubPalette extends VtoPalette {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SkuInfo f40012f;
        public final SubItemInfo g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubPalette(ProductInfo productInfo, SkuInfo skuInfo, SubItemInfo subItemInfo) {
            super(productInfo, subItemInfo);
            Objects.requireNonNull(productInfo);
            Objects.requireNonNull(subItemInfo);
            Objects.requireNonNull(skuInfo);
            this.f40012f = skuInfo;
            this.g = subItemInfo;
        }

        @Override // com.perfectcorp.perfectlib.VtoPalette
        public final void getPatterns(VtoObject.Callback callback) {
            Objects.requireNonNull(callback, "callback can't be null");
            Log.g(3, "VtoPalette$SubPalette", "[getPatterns] start");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Observable.fromCallable(new i(this, 12)).subscribeOn(Schedulers.f43170c).flatMapIterable(Functions.f42605a).map(new z0(this, 11)).cast(VtoPattern.class).toList().i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new z51(callback, 10), new z51(callback, 11));
            uVarI.a(consumerSingleObserver);
            ApplyEffectUtility.w(consumerSingleObserver);
        }
    }

    public VtoPalette(ProductInfo productInfo, SkuInfo skuInfo) {
        super(skuInfo.getGuid(), skuInfo.getName(), skuInfo.getThumbnailUrl());
        this.f40009e = SkuInfo.c(skuInfo);
        this.d = productInfo;
    }

    public List<Integer> getColors() {
        return this.f40009e;
    }

    public abstract void getPatterns(VtoObject.Callback<VtoPattern> callback);

    public VtoPalette(ProductInfo productInfo, SubItemInfo subItemInfo) {
        super(subItemInfo.f39958a, subItemInfo.f39959b, subItemInfo.d);
        this.f40009e = subItemInfo.f39960c;
        this.d = productInfo;
    }
}
