package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import java.util.AbstractList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41917c;

    public /* synthetic */ x1(Object obj, int i2) {
        this.f41916b = i2;
        this.f41917c = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        int i2 = this.f41916b;
        Object obj2 = this.f41917c;
        switch (i2) {
            case 0:
                Pair pair = (Pair) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Objects.requireNonNull(pair);
                VtoSetting vtoSetting = (VtoSetting) pair.first;
                Sku sku = (Sku) pair.second;
                ApplyEffectUtility.ApplySkuInfo applySkuInfoA = ApplyEffectUtility.a(vtoSetting, sku);
                BeautyMode beautyMode = applySkuInfoA.f39474a;
                PerfectEffect perfectEffectOf = PerfectEffect.of(beautyMode, ItemSubType.d(beautyMode, sku.f41264c));
                String str = applySkuInfoA.f39475b;
                String str2 = applySkuInfoA.f39476c;
                String str3 = applySkuInfoA.d;
                String str4 = applySkuInfoA.f39477e;
                List list = applySkuInfoA.f39479h;
                AbstractList abstractListC = Lists.c(list, new c2(3));
                EffectId.Builder builder = new EffectId.Builder(perfectEffectOf);
                builder.f39567b = EffectId.c(str);
                builder.f39568c = EffectId.c(str2);
                builder.d = EffectId.c(str3);
                builder.f39569e = EffectId.c(str4);
                builder.b(abstractListC);
                builder.c(list);
                builder.l = (EffectConfig) obj2;
                return builder.a();
            default:
                BeautyMode beautyMode2 = (BeautyMode) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Objects.requireNonNull(beautyMode2);
                return ((ApplyEffectCtrl) obj2).h(beautyMode2);
        }
    }
}
