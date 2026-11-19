package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class WatchVtoApplierImpl extends WatchVtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnonymousClass1 f40026a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.perfectcorp.perfectlib.WatchVtoApplierImpl$1] */
    public WatchVtoApplierImpl(String str, CompositeDisposable compositeDisposable, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f40026a = new HandVtoApplierImpl(str, compositeDisposable, PerfectEffect.WATCH, aVar) { // from class: com.perfectcorp.perfectlib.WatchVtoApplierImpl.1
            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final EffectId b(com.perfectcorp.perfectlib.ph.utility.b bVar) {
                EffectId.Builder builder = new EffectId.Builder(PerfectEffect.WATCH);
                builder.f39568c = EffectId.c(bVar.f41737c);
                builder.d = EffectId.c(bVar.d);
                builder.m = bVar;
                return builder.a();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture f(ArrayList arrayList) {
                return WatchVtoApplierImpl.this.b(arrayList);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final List h(List list, List list2) {
                return Collections.EMPTY_LIST;
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void i() {
                WatchVtoApplierImpl.this.c();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture q() {
                return WatchVtoApplierImpl.this.d();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ArrayList r(List list) {
                return WatchVtoApplierImpl.e(list);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void w() {
                WatchVtoApplierImpl.this.f();
            }
        };
    }

    public static ArrayList e(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            VtoSetting vtoSetting = (VtoSetting) it.next();
            Sku skuD = ApplyEffectUtility.d(vtoSetting);
            String str = vtoSetting.f40016c;
            if (SkuTemplateUtils.a(skuD.f41263b) == SkuBeautyMode$FeatureType.WATCH) {
                if (TextUtils.isEmpty(str) && "SKU_SET_SKU_ID".equalsIgnoreCase(skuD.f41266f)) {
                    arrayList.addAll(ApplyEffectUtility.q(PerfectEffect.of(BeautyMode.WATCH, ItemSubType.NONE), vtoSetting.f40014a));
                } else {
                    Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str);
                    if (optionalD.d()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c();
                        String str2 = eVar.a().patternGeneral.guid;
                        com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e = eVar.a().pattern != null ? eVar.a().pattern.patternMask : null;
                        YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) com.perfectcorp.perfectlib.ph.template.e.e(str2).get(0);
                        String str3 = (c0184e == null || c0184e.attr_object_distance_ratio.isEmpty()) ? mask.e0 : c0184e.attr_object_distance_ratio;
                        com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.WATCH, vtoSetting.f40015b, str);
                        aVar.a(mask.E);
                        aVar.g = TemplateUtils.a(str3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        aVar.f41749h = mask.f0;
                        arrayList.add(new com.perfectcorp.perfectlib.ph.utility.b(aVar));
                        break;
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        md.k("No valid watch VtoSetting");
        return null;
    }

    @Override // com.perfectcorp.perfectlib.WatchVtoApplier
    public final Cancelable apply(List list, WatchVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = WatchVtoApplier.ApplyCallback.NOP;
        }
        return c(list, applyCallback);
    }

    @Override // com.perfectcorp.perfectlib.WatchVtoApplier
    public final void applyEffectIds(List list, WatchVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = WatchVtoApplier.ApplyCallback.NOP;
        }
        u(list, applyCallback);
    }

    public abstract ListenableFuture b(ArrayList arrayList);

    public abstract void c();

    @Override // com.perfectcorp.perfectlib.WatchVtoApplier
    public final void clearAllEffects(WatchVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = WatchVtoApplier.ApplyCallback.NOP;
        }
        m(applyCallback);
    }

    public abstract ListenableFuture d();

    public void f() {
    }

    @Override // com.perfectcorp.perfectlib.WatchVtoApplier
    public final void getEffectIds(WatchVtoApplier.EffectIdCallback effectIdCallback) {
        n(effectIdCallback);
    }

    @Override // com.perfectcorp.perfectlib.WatchVtoApplier
    public final void getProductIds(WatchVtoApplier.ProductIdCallback productIdCallback) {
        o(productIdCallback);
    }
}
