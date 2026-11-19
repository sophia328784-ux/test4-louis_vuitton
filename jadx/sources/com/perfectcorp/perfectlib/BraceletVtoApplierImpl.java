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
public abstract class BraceletVtoApplierImpl extends BraceletVtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnonymousClass1 f39486a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.perfectcorp.perfectlib.BraceletVtoApplierImpl$1] */
    public BraceletVtoApplierImpl(String str, CompositeDisposable compositeDisposable, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f39486a = new HandVtoApplierImpl(str, compositeDisposable, PerfectEffect.BRACELET, aVar) { // from class: com.perfectcorp.perfectlib.BraceletVtoApplierImpl.1
            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final EffectId b(com.perfectcorp.perfectlib.ph.utility.b bVar) {
                EffectId.Builder builder;
                String str2 = bVar.f41736b;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(str2)) {
                    builder = new EffectId.Builder(PerfectEffect.BRACELET);
                    builder.f39567b = EffectId.c(str2);
                } else {
                    builder = new EffectId.Builder(PerfectEffect.BRACELET);
                    builder.f39568c = EffectId.c(bVar.f41737c);
                    builder.d = EffectId.c(bVar.d);
                    builder.m = bVar;
                }
                return builder.a();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture f(ArrayList arrayList) {
                return BraceletVtoApplierImpl.this.c(arrayList);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final List h(List list, List list2) {
                return Collections.EMPTY_LIST;
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void i() {
                BraceletVtoApplierImpl.this.d();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture q() {
                return BraceletVtoApplierImpl.this.e();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ArrayList r(List list) {
                return BraceletVtoApplierImpl.f(list);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void w() {
                BraceletVtoApplierImpl.this.g();
            }
        };
    }

    public static ArrayList f(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            VtoSetting vtoSetting = (VtoSetting) it.next();
            Sku skuD = ApplyEffectUtility.d(vtoSetting);
            String str = vtoSetting.f40014a;
            String str2 = vtoSetting.f40016c;
            if (SkuTemplateUtils.a(skuD.f41263b) == SkuBeautyMode$FeatureType.BRACELET) {
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(str) || (TextUtils.isEmpty(str2) && "SKU_SET_SKU_ID".equalsIgnoreCase(skuD.f41266f))) {
                    arrayList.addAll(ApplyEffectUtility.q(PerfectEffect.of(BeautyMode.BRACELET, ItemSubType.NONE), str));
                } else {
                    Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str2);
                    if (optionalD.d()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c();
                        String str3 = eVar.a().patternGeneral.guid;
                        com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e = eVar.a().pattern != null ? eVar.a().pattern.patternMask : null;
                        YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) com.perfectcorp.perfectlib.ph.template.e.e(str3).get(0);
                        String str4 = (c0184e == null || c0184e.attr_object_distance_ratio.isEmpty()) ? mask.e0 : c0184e.attr_object_distance_ratio;
                        com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.BRACELET, vtoSetting.f40015b, str2);
                        aVar.a(mask.E);
                        aVar.g = TemplateUtils.a(str4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
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
        md.k("No valid bracelet VtoSetting");
        return null;
    }

    @Override // com.perfectcorp.perfectlib.BraceletVtoApplier
    public final Cancelable apply(List list, BraceletVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = BraceletVtoApplier.ApplyCallback.NOP;
        }
        return c(list, applyCallback);
    }

    @Override // com.perfectcorp.perfectlib.BraceletVtoApplier
    public final void applyEffectIds(List list, BraceletVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = BraceletVtoApplier.ApplyCallback.NOP;
        }
        u(list, applyCallback);
    }

    public abstract ListenableFuture c(ArrayList arrayList);

    @Override // com.perfectcorp.perfectlib.BraceletVtoApplier
    public final void clearAllEffects(BraceletVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = BraceletVtoApplier.ApplyCallback.NOP;
        }
        m(applyCallback);
    }

    public abstract void d();

    public abstract ListenableFuture e();

    public void g() {
    }

    @Override // com.perfectcorp.perfectlib.BraceletVtoApplier
    public final void getEffectIds(BraceletVtoApplier.EffectIdCallback effectIdCallback) {
        n(effectIdCallback);
    }

    @Override // com.perfectcorp.perfectlib.BraceletVtoApplier
    public final void getProductIds(BraceletVtoApplier.ProductIdCallback productIdCallback) {
        o(productIdCallback);
    }
}
