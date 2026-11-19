package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c1 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40055c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f40056e;

    public /* synthetic */ c1(Object obj, int i2, Object obj2, int i3) {
        this.f40054b = i3;
        this.f40056e = obj;
        this.f40055c = i2;
        this.d = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        com.perfectcorp.perfectlib.ph.utility.b bVarE;
        com.perfectcorp.perfectlib.ph.utility.b bVarE2;
        int i2 = this.f40054b;
        Object obj = this.d;
        int i3 = this.f40055c;
        Object obj2 = this.f40056e;
        switch (i2) {
            case 0:
                JewelryVtoApplierImpl jewelryVtoApplierImpl = (JewelryVtoApplierImpl) obj2;
                String str = (String) obj;
                jewelryVtoApplierImpl.f(i3);
                Optional optionalF = ApplyEffectUtility.F(str);
                if (!optionalF.d()) {
                    throw new LookNotFoundException(fc.h("Look guid=", str, " is not in database."));
                }
                YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) optionalF.c();
                Preconditions.g(com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.a(look.g) == com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY, "This is not a jewelry look.");
                ArrayList<com.perfectcorp.perfectlib.ph.utility.b> arrayListD = JewelryVtoApplierImpl.d(look);
                com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Jewelry, jewelryVtoApplierImpl.f39649c);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (com.perfectcorp.perfectlib.ph.utility.b bVar2 : arrayListD) {
                    PerfectEffect perfectEffect = bVar2.f41735a;
                    if (perfectEffect == PerfectEffect.RING) {
                        arrayList2.add(bVar2);
                    } else if (perfectEffect == PerfectEffect.BRACELET) {
                        arrayList3.add(bVar2);
                    } else {
                        arrayList.add(bVar2);
                    }
                }
                if (!arrayList2.isEmpty() && (bVarE2 = HandVtoApplierImpl.e(arrayList2, PerfectEffect.RING)) != null) {
                    arrayList.add(bVarE2);
                }
                if (!arrayList3.isEmpty() && (bVarE = HandVtoApplierImpl.e(arrayList3, PerfectEffect.BRACELET)) != null) {
                    arrayList.add(bVarE);
                }
                com.perfectcorp.perfectlib.ph.clflurry.c.j(arrayList, bVar);
                bVar.b();
                return jewelryVtoApplierImpl.d.v(arrayListD);
            case 1:
                return ((NailVtoApplierImpl) obj2).k(i3, (String) obj);
            case 2:
                return ((NailVtoApplierImpl) obj2).n(i3, (Set) obj);
            case 3:
                return ((NailVtoApplierImpl) obj2).j(i3, (ImmutableMap) obj);
            case 4:
                return ((NailVtoApplierImpl) obj2).v(i3, (List) obj);
            default:
                PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo = (PhotoMakeupInternal.ApplyEffectIdsInfo) obj;
                int i4 = PhotoMakeupInternal.n;
                return ((PhotoMakeupInternal) obj2).b(i3, true, applyEffectIdsInfo.f39791a, applyEffectIdsInfo.f39792b);
        }
    }
}
