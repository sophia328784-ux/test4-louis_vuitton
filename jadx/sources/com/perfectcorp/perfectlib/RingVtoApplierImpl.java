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
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class RingVtoApplierImpl extends RingVtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnonymousClass1 f39833a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.perfectcorp.perfectlib.RingVtoApplierImpl$1] */
    public RingVtoApplierImpl(String str, CompositeDisposable compositeDisposable, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f39833a = new HandVtoApplierImpl(str, compositeDisposable, PerfectEffect.RING, aVar) { // from class: com.perfectcorp.perfectlib.RingVtoApplierImpl.1
            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final EffectId b(com.perfectcorp.perfectlib.ph.utility.b bVar) {
                EffectId.Builder builder;
                String str2 = bVar.f41736b;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(str2)) {
                    builder = new EffectId.Builder(PerfectEffect.RING);
                    builder.f39567b = EffectId.c(str2);
                } else {
                    builder = new EffectId.Builder(PerfectEffect.RING);
                    builder.f39568c = EffectId.c(bVar.f41737c);
                    builder.d = EffectId.c(bVar.d);
                    builder.m = bVar;
                }
                return builder.a();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture f(ArrayList arrayList) {
                return RingVtoApplierImpl.this.c(arrayList);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final List h(List list, List list2) {
                return RingVtoApplierImpl.d(list, list2);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void i() {
                RingVtoApplierImpl.this.e();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture q() {
                return RingVtoApplierImpl.this.f();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ArrayList r(List list) {
                return RingVtoApplierImpl.g(list);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void w() {
                RingVtoApplierImpl.this.h();
            }
        };
    }

    public static ArrayList d(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            VtoSetting vtoSetting = (VtoSetting) it.next();
            Sku skuD = ApplyEffectUtility.d(vtoSetting);
            String str = vtoSetting.f40016c;
            if (SkuTemplateUtils.a(skuD.f41263b) == SkuBeautyMode$FeatureType.RING) {
                if (TextUtils.isEmpty(str) && "SKU_SET_SKU_ID".equalsIgnoreCase(skuD.f41266f)) {
                    arrayList.addAll(ApplyEffectUtility.q(PerfectEffect.of(BeautyMode.RING, ItemSubType.NONE), vtoSetting.f40014a));
                } else {
                    Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str);
                    if (optionalD.d()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c();
                        String str2 = eVar.a().patternGeneral.guid;
                        com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e = eVar.a().pattern != null ? eVar.a().pattern.patternMask : null;
                        YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) com.perfectcorp.perfectlib.ph.template.e.e(str2).get(0);
                        String str3 = (c0184e == null || c0184e.attr_object_distance_ratio_back.isEmpty()) ? mask.g0 : c0184e.attr_object_distance_ratio_back;
                        String str4 = (c0184e == null || c0184e.attr_object_distance_ratio_palm.isEmpty()) ? mask.h0 : c0184e.attr_object_distance_ratio_palm;
                        com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.RING, vtoSetting.f40015b, str);
                        aVar.a(mask.E);
                        aVar.f41750i = TemplateUtils.a(str3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        aVar.f41751j = TemplateUtils.a(str4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        aVar.f41752k = mask.i0;
                        aVar.l = (RingPosition) list2.get(0);
                        arrayList.add(new com.perfectcorp.perfectlib.ph.utility.b(aVar));
                        break;
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        md.k("No valid ring VtoSetting");
        return null;
    }

    public static ArrayList g(List list) {
        com.perfectcorp.perfectlib.ph.utility.b bVar;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            VtoSetting vtoSetting = (VtoSetting) it.next();
            Sku skuD = ApplyEffectUtility.d(vtoSetting);
            String str = vtoSetting.f40015b;
            String str2 = vtoSetting.f40016c;
            if (SkuTemplateUtils.a(skuD.f41263b) == SkuBeautyMode$FeatureType.RING) {
                if (TextUtils.isEmpty(str2) && "SKU_SET_SKU_ID".equalsIgnoreCase(skuD.f41266f)) {
                    arrayList.addAll(ApplyEffectUtility.q(PerfectEffect.of(BeautyMode.RING, ItemSubType.NONE), vtoSetting.f40014a));
                } else {
                    Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str2);
                    if (optionalD.d()) {
                        com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.e) optionalD.c();
                        String str3 = eVar.a().patternGeneral.guid;
                        com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e = eVar.a().pattern != null ? eVar.a().pattern.patternMask : null;
                        YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) com.perfectcorp.perfectlib.ph.template.e.e(str3).get(0);
                        String str4 = (c0184e == null || c0184e.attr_object_distance_ratio_back.isEmpty()) ? mask.g0 : c0184e.attr_object_distance_ratio_back;
                        String str5 = (c0184e == null || c0184e.attr_object_distance_ratio_palm.isEmpty()) ? mask.h0 : c0184e.attr_object_distance_ratio_palm;
                        VtoSetting.Parameter parameter = vtoSetting.g;
                        if (parameter instanceof RingParameter) {
                            com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.RING, str, str2);
                            aVar.a(mask.E);
                            aVar.f41750i = TemplateUtils.a(str4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            aVar.f41751j = TemplateUtils.a(str5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            aVar.f41752k = mask.i0;
                            aVar.l = ((RingParameter) parameter).f39827a;
                            bVar = new com.perfectcorp.perfectlib.ph.utility.b(aVar);
                        } else {
                            com.perfectcorp.perfectlib.ph.utility.b.a aVar2 = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.RING, str, str2);
                            aVar2.a(mask.E);
                            aVar2.f41750i = TemplateUtils.a(str4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            aVar2.f41751j = TemplateUtils.a(str5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            aVar2.f41752k = mask.i0;
                            aVar2.l = c0184e != null ? RingPosition.of(c0184e.attr_position) : RingPosition.RING_FINGER;
                            bVar = new com.perfectcorp.perfectlib.ph.utility.b(aVar2);
                        }
                        arrayList.add(bVar);
                        break;
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        md.k("No valid ring VtoSetting");
        return null;
    }

    @Override // com.perfectcorp.perfectlib.RingVtoApplier
    public final Cancelable apply(List list, RingVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = RingVtoApplier.ApplyCallback.NOP;
        }
        return c(list, applyCallback);
    }

    @Override // com.perfectcorp.perfectlib.RingVtoApplier
    public final void applyEffectIds(List list, RingVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = RingVtoApplier.ApplyCallback.NOP;
        }
        u(list, applyCallback);
    }

    public abstract ListenableFuture c(ArrayList arrayList);

    @Override // com.perfectcorp.perfectlib.RingVtoApplier
    public final void clearAllEffects(RingVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = RingVtoApplier.ApplyCallback.NOP;
        }
        m(applyCallback);
    }

    public abstract void e();

    public abstract ListenableFuture f();

    @Override // com.perfectcorp.perfectlib.RingVtoApplier
    public final void getEffectIds(RingVtoApplier.EffectIdCallback effectIdCallback) {
        n(effectIdCallback);
    }

    @Override // com.perfectcorp.perfectlib.RingVtoApplier
    public final void getProductIds(RingVtoApplier.ProductIdCallback productIdCallback) {
        o(productIdCallback);
    }

    public void h() {
    }

    @Override // com.perfectcorp.perfectlib.RingVtoApplier
    public final Cancelable setRingPositionAndApply(List list, List list2, RingVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = RingVtoApplier.ApplyCallback.NOP;
        }
        return d(list, list2, applyCallback);
    }
}
